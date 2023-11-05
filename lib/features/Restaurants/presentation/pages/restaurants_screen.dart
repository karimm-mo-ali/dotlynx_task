// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/helpers/helper_methods.dart';
import '../../../../core/shared/loader.dart';
import '../../../../core/shared/shared_error.dart';
import '../../../../core/shared/shared_section.dart';
import '../manager/CategoriesCubit/categories_cubit.dart';
import '../manager/ProductsCubit/products_cubit.dart';
import '../manager/RestaurantsCubit/restaurants_cubit.dart';
import 'widgets/text_field_box.dart';
import 'widgets/categories_view.dart';
import 'widgets/orders_view.dart';
import 'widgets/products_view.dart';
import 'widgets/restaurants_view.dart';

class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({Key? key}) : super(key: key);

  @override
  _RestaurantsScreenState createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  RefreshController refreshController = RefreshController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<GetCategoriesCubit>().getCategories();
      context.read<GetProductsCubit>().getProducts();
      context.read<GetRestaurantsCubit>().getRestaurants();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        bottom: false,
        child: SmartRefresher(
          onRefresh: () async {
            context.read<GetCategoriesCubit>().getCategories();
            context.read<GetProductsCubit>().getProducts();
            context.read<GetRestaurantsCubit>().getRestaurants();
            refreshController.refreshCompleted();
          },
          controller: refreshController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.arrow_back_ios, color: kBlackColor),
                        ),
                        const Text(
                          "Restaurant",
                          style: kContainerStyle,
                        ),
                        Container(),
                      ],
                    ),
                  ),
                  TextFieldBox(
                    hintText: 'Search Food, Restaurants etc.',
                    textInputAction: TextInputAction.search,
                    keyboardType: TextInputType.text,
                    prefixIcon:
                        SvgPicture.asset(kSearchAsset, fit: BoxFit.scaleDown),
                    suffixIcon:
                        SvgPicture.asset(kVoiceAsset, fit: BoxFit.scaleDown),
                  ),
                  BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
                    builder: (context, state) {
                      if (state is GetCategoriesLoading) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: setHeight(context, 0.1)),
                          child: Loader.loadingWidget(),
                        );
                      }
                      if (state is GetCategoriesFailure) {
                        return DialogFb2(
                          text: state.errMessage,
                        );
                      }
                      if (state is GetCategoriesSuccess) {
                        return CategoriesView(
                            categories: state.categoriesModel.categories!);
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                  const SharedSection(text: 'WHAT’S ON YOUR MIND?'),
                  BlocBuilder<GetProductsCubit, GetProductsState>(
                    builder: (context, state) {
                      if (state is GetProductsLoading) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: setHeight(context, 0.1)),
                          child: Loader.loadingWidget(),
                        );
                      }
                      if (state is GetProductsFailure) {
                        return DialogFb2(
                          text: state.errMessage,
                        );
                      }
                      if (state is GetProductsSuccess) {
                        return ProductsView(
                            products: state.productsModel.products!);
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                  const SharedSection(text: 'ORDER AGAIN?'),
                  const OrderView(),
                  const SharedSection(text: 'ALL RESTAURANTS'),
                  BlocBuilder<GetRestaurantsCubit, GetRestaurantsState>(
                    builder: (context, state) {
                      if (state is GetRestaurantsLoading) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: setHeight(context, 0.1)),
                          child: Loader.loadingWidget(),
                        );
                      }
                      if (state is GetRestaurantsFailure) {
                        return DialogFb2(
                          text: state.errMessage,
                        );
                      }
                      if (state is GetRestaurantsSuccess) {
                        return RestaurantsView(restaurants: state.restaurantsModel.restaurants!);
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
