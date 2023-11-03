import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/products_model.dart';
import '../../../data/repertories/restaurants_repo_impl.dart';
part 'products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit() : super(GetProductsInitial());

  RestaurantsRepoImpl restaurantsRepoImpl = RestaurantsRepoImpl();
  static GetProductsCubit get(context) => BlocProvider.of(context);
  ProductsModel? productsModel;
  bool isLoadingMore = false;

  Future getProducts({int? page = 1}) async {
    if (page == 1) {
      emit(GetProductsLoading());
    } else {
      isLoadingMore = true;
    }
    productsModel = await restaurantsRepoImpl.getProducts().then((value) {
      isLoadingMore = false;
      return value;
    });

    emit(GetProductsSuccess(productsModel!));
  }
}
