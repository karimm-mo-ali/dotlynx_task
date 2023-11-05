import '../../../../core/constants/end_points.dart';
import '../../../../core/utils/api/general_api_request.dart';
import '../models/categories_model.dart';
import '../models/products_model.dart';
import '../models/restaurants_model.dart';

class RestaurantsRepoImpl {
  final ApiService apiService = ApiService();

  Future<RestaurantsModel?> getRestaurants({onError}) async {
    final data = await apiService.request(
      "${EndPoints.restaurants}?limit=18&page=1&sort_by=fastest_delivery&latitude=25.3185782&longitude=51.5003526",
      'GET',
      backEndError: onError,
      unKnownError: onError,
      returnResponseBody: true,
    );

    if (data != null) {
      return RestaurantsModel.fromJson(data);
    }
    return null;
  }

  Future<CategoriesModel?> getCategories({onError}) async {
    final data = await apiService.request(
      "${EndPoints.categories}?latitude=25.3185782&longitude=51.5003526",
      'GET',
      backEndError: onError,
      unKnownError: onError,
      returnResponseBody: true,
    );

    if (data != null) {
      return CategoriesModel.fromJson(data);
    }
    return null;
  }

  Future<ProductsModel?> getProducts({onError}) async {
    final data = await apiService.request(
      "${EndPoints.products}?page=1&limit=16&sort_by=latest&order_by=desc&latitude=25.3185782&longitude=51.5003526&category_id=5612",
      'GET',
      backEndError: onError,
      unKnownError: onError,
      returnResponseBody: true,
    );

    if (data != null) {
      return ProductsModel.fromJson(data);
    }
    return null;
  }
}
