part of 'categories_cubit.dart';

abstract class GetCategoriesState extends Equatable {
  const GetCategoriesState();

  @override
  List<Object> get props => [];
}

class GetCategoriesInitial extends GetCategoriesState {}

class GetCategoriesLoading extends GetCategoriesState {}

class GetCategoriesFailure extends GetCategoriesState {
  final String errMessage;
  const GetCategoriesFailure(this.errMessage);
}

class GetCategoriesSuccess extends GetCategoriesState {
  final CategoriesModel categoriesModel;
  const GetCategoriesSuccess(this.categoriesModel);
}
