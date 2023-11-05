import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/restaurants_model.dart';
import '../../../data/repertories/restaurants_repo_impl.dart';
part 'restaurants_state.dart';

class GetRestaurantsCubit extends Cubit<GetRestaurantsState> {
  GetRestaurantsCubit() : super(GetRestaurantsInitial());

  RestaurantsRepoImpl restaurantsRepoImpl = RestaurantsRepoImpl();
  static GetRestaurantsCubit get(context) => BlocProvider.of(context);
  bool filterByTimeUnder30MinSelected = false;
  bool filterByNearestSelected = false;
  bool filterByOffersSelected = false;

  List<Restaurants>? originalRestaurants;

  Future<void> getRestaurants() async {
    emit(GetRestaurantsLoading());
    RestaurantsModel? restaurantsModel =
        await restaurantsRepoImpl.getRestaurants(
      onError: (errMsg) {
        emit(GetRestaurantsFailure(errMsg));
      },
    );

    if (restaurantsModel != null) {
      originalRestaurants = List.from(restaurantsModel.restaurants!);
      if (kDebugMode) {
        print("originalRestaurants1 is ${originalRestaurants!.length}");
      }
      emit(GetRestaurantsSuccess(restaurantsModel));
    }
  }

  filterByTimeUnder30Min() {
    filterByTimeUnder30MinSelected = !filterByTimeUnder30MinSelected;
    filterByNearestSelected = false;
    filterByOffersSelected = false;
    filterRestaurants();
  }

  filterByNearest() {
    filterByNearestSelected = !filterByNearestSelected;
    filterByTimeUnder30MinSelected = false;
    filterByOffersSelected = false;
    filterRestaurants();
  }

  filterByOffers() {
    filterByOffersSelected = !filterByOffersSelected;
    filterByTimeUnder30MinSelected = false;
    filterByNearestSelected = false;
    filterRestaurants();
  }

  filterRestaurants() async {
    print("originalRestaurants is ${originalRestaurants!.length}");

    List<Restaurants> filteredRestaurants = originalRestaurants!;
    print("filteredRestaurants is ${filteredRestaurants.length}");
    if (filterByTimeUnder30MinSelected) {
      filteredRestaurants = originalRestaurants!
          .where((restaurant) => restaurant.orderAcceptTime! <= 30)
          .toList();
    }

    if (filterByNearestSelected) {
      originalRestaurants!.sort((a, b) => a.distance!.compareTo(b.distance!));
      filteredRestaurants = List.from(originalRestaurants!);
    }

    if (filterByOffersSelected) {
      filteredRestaurants = originalRestaurants!
          .where((restaurant) =>
              restaurant.discountsAndOfferRelations != null &&
              restaurant.discountsAndOfferRelations!.isNotEmpty)
          .toList();
    }

    print("originalRestaurants is ${originalRestaurants!.length}");
    print("filteredRestaurants is ${filteredRestaurants.length}");

    emit(GetRestaurantsLoading());

    await Future.delayed(const Duration(seconds: 2));

    emit(GetRestaurantsSuccess(
      RestaurantsModel(
        restaurants: filteredRestaurants,
      ),
    ));
  }
}
