import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/restaurants_model.dart';
import '../../../data/repertories/restaurants_repo_impl.dart';
part 'restaurants_state.dart';

class GetRestaurantsCubit extends Cubit<GetRestaurantsState> {
  GetRestaurantsCubit() : super(GetRestaurantsInitial());

  RestaurantsRepoImpl restaurantsRepoImpl = RestaurantsRepoImpl();
  static GetRestaurantsCubit get(context) => BlocProvider.of(context);
  RestaurantsModel? restaurantsModel;
  bool isLoadingMore = false;

  Future getRestaurants({int? page = 1}) async {
    if (page == 1) {
      emit(GetRestaurantsLoading());
    } else {
      isLoadingMore = true;
    }
    restaurantsModel = await restaurantsRepoImpl.getRestaurants().then((value) {
      isLoadingMore = false;
      return value;
    });

    emit(GetRestaurantsSuccess(restaurantsModel!));
  }
}
