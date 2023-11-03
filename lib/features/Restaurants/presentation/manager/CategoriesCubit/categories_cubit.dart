import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/categories_model.dart';
import '../../../data/repertories/restaurants_repo_impl.dart';
part 'categories_state.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  GetCategoriesCubit() : super(GetCategoriesInitial());

  RestaurantsRepoImpl restaurantsRepoImpl = RestaurantsRepoImpl();
  static GetCategoriesCubit get(context) => BlocProvider.of(context);
  CategoriesModel? categoriesModel;
  bool isLoadingMore = false;

  Future getCategories({int? page = 1}) async {
    if (page == 1) {
      emit(GetCategoriesLoading());
    } else {
      isLoadingMore = true;
    }
    categoriesModel = await restaurantsRepoImpl.getCategories().then((value) {
      isLoadingMore = false;
      return value;
    });

    emit(GetCategoriesSuccess(categoriesModel!));
  }
}
