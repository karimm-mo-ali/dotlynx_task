import '../../../../core/constants/end_points.dart';
import '../../../../core/shared/shared_error.dart';
import '../../../../core/utils/api/general_api_request.dart';
import '../models/categories_model.dart';
import '../models/products_model.dart';
import '../models/restaurants_model.dart';

class RestaurantsRepoImpl {
  final ApiService apiService = ApiService();

  Future<RestaurantsModel?> getRestaurants() async {
    final data = await apiService.request(
      EndPoints.restaurants,
      'GET',
      queryParameters: {
        "limit": "18",
        "page": "1",
        "sort_by": "fastest_delivery",
        "latitude": "25.3185782",
        "longitude": "51.5003526",
      },
      backEndError: (error) => showErrorDialog(error),
      unKnownError: (error) => showErrorDialog(error),
    );

    if (data != null) {
      return RestaurantsModel.fromJson(data);
    }
    return null;
  }

  Future<CategoriesModel?> getCategories() async {
    final data = await apiService.request(
      EndPoints.categories,
      'GET',
      queryParameters: {
        "latitude": "25.3185782",
        "longitude": "51.5003526",
      },
      backEndError: (error) => showErrorDialog(error),
      unKnownError: (error) => showErrorDialog(error),
    );

    if (data != null) {
      return CategoriesModel.fromJson(data);
    }
    return null;
  }

  Future<ProductsModel?> getProducts() async {
    final data = await apiService.request(
      EndPoints.products,
      'GET',
      queryParameters: {
        "page": "1",
        "limit": "16",
        "sort_by": "latest",
        "order_by": "desc",
        "latitude": "25.3185782",
        "longitude": "51.5003526",
        "category_id": "5612",
      },
      backEndError: (error) => showErrorDialog(error),
      unKnownError: (error) => showErrorDialog(error),
    );

    if (data != null) {
      return ProductsModel.fromJson(data);
    }
    return null;
  }
}
