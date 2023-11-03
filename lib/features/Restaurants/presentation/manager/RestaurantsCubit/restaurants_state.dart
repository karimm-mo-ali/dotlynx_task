part of 'restaurants_cubit.dart';

abstract class GetRestaurantsState extends Equatable {
  const GetRestaurantsState();

  @override
  List<Object> get props => [];
}

class GetRestaurantsInitial extends GetRestaurantsState {}

class GetRestaurantsLoading extends GetRestaurantsState {}

class GetRestaurantsFailure extends GetRestaurantsState {
  final String errMessage;
  const GetRestaurantsFailure(this.errMessage);
}

class GetRestaurantsSuccess extends GetRestaurantsState {
  final RestaurantsModel restaurantsModel;
  const GetRestaurantsSuccess(this.restaurantsModel);
}
