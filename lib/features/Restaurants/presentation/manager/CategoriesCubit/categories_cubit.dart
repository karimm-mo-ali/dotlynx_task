import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/categories_model.dart';
import '../../../data/repertories/restaurants_repo_impl.dart';
part 'categories_state.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  GetCategoriesCubit() : super(GetCategoriesInitial());

  RestaurantsRepoImpl restaurantsRepoImpl = RestaurantsRepoImpl();
  static GetCategoriesCubit get(context) => BlocProvider.of(context);

  Future<void> getCategories() async {
    emit(GetCategoriesLoading());
    CategoriesModel? categoriesModel = await restaurantsRepoImpl.getCategories(
      onError: (errMsg) {
        emit(GetCategoriesFailure(errMsg));
      },
    );

    if (categoriesModel != null) {
      emit(GetCategoriesSuccess(categoriesModel));
    }
  }
}
