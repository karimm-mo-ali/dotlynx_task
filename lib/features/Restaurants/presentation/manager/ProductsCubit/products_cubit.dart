import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/products_model.dart';
import '../../../data/repertories/restaurants_repo_impl.dart';
part 'products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit() : super(GetProductsInitial());

  RestaurantsRepoImpl restaurantsRepoImpl = RestaurantsRepoImpl();
  static GetProductsCubit get(context) => BlocProvider.of(context);

  Future<void> getProducts() async {
    emit(GetProductsLoading());
    ProductsModel? productsModel = await restaurantsRepoImpl.getProducts(
      onError: (errMsg) {
        emit(GetProductsFailure(errMsg));
      },
    );

    if (productsModel != null) {
      emit(GetProductsSuccess(productsModel));
    }
  }
}
