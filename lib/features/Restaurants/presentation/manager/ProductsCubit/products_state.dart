part of 'products_cubit.dart';

abstract class GetProductsState extends Equatable {
  const GetProductsState();

  @override
  List<Object> get props => [];
}

class GetProductsInitial extends GetProductsState {}

class GetProductsLoading extends GetProductsState {}

class GetProductsFailure extends GetProductsState {
  final String errMessage;
  const GetProductsFailure(this.errMessage);
}

class GetProductsSuccess extends GetProductsState {
  final ProductsModel productsModel;
  const GetProductsSuccess(this.productsModel);
}
