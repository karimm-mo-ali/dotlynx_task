import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../config/env.dart';
import '../../constants/messages.dart';
import '../../shared/loader.dart';
import '../../shared/shared_error.dart';
import 'api_request_logger.dart';
import 'api_response_model.dart';

class ApiService {
  static final ApiService _apiUtil = ApiService._();
  ApiService._();
  factory ApiService() {
    return _apiUtil;
  }

  final _dio = Dio();

  void init() {
    _dio.options.baseUrl = kAppConfig['is_live_mode']
        ? kAppConfig['live_api']
        : kAppConfig['test_api'];
    _dio.options.connectTimeout = 60000;
    _dio.options.receiveTimeout = 60000;
    if (!kReleaseMode) {
      _dio.interceptors.add(
        AppDioLogger(
          requestBody: true,
        ),
      );
    }
  }

  Future request<T>(String endPoint, String method,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      String contentType = "multipart/form-data",
      Function(String successMsg)? successMessage,
      Function(String errorMsg)? backEndError,
      Function(String errorMsg)? unKnownError,
      bool isFormData = true,
      bool showLoading = false,
      bool returnAppResponseModel = false,
      bool returnResponseBody = false,
      bool logTheRequest = false}) async {
    try {
      if (queryParameters != null) {
        queryParameters = <String, dynamic>{};
      }
      if (showLoading) {
        Loader.start();
      }
      var connectivityResult = await (Connectivity().checkConnectivity());
      bool internetConnectionChecker =
          await InternetConnectionChecker().hasConnection;

      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi ||
          internetConnectionChecker) {
        var headers = {
          "x-api-key": "baladi_dev_pX2Rldl9LSFlVSVM3TDN4YTA3ZHNmZ2R5V0E4ZE1S",
        };
        Response response = await _dio.request<T>(
          endPoint,
          data: isFormData ? FormData.fromMap(data ?? {}) : data,
          queryParameters: queryParameters,
          options: Options(
              method: method,
              followRedirects: false,
              contentType: contentType,
              headers: headers,
              maxRedirects: 0),
        );
        if (showLoading) {
          Loader.stop();
        }
        if (returnResponseBody) {
          return response.data;
        }
        if (response.data != null) {
          final appResponseModel = AppResponseModel.fromMap(response.data);
          if (returnAppResponseModel) {
            return appResponseModel;
          }
          if (successMessage != null &&
              response.statusCode! >= 200 &&
              response.statusCode! <= 400) {
            successMessage("Success");
          }
          if (appResponseModel.msg != null &&
              response.statusCode! >= 400 &&
              backEndError != null) {
            log('message00000000000000000');
            backEndError(appResponseModel.msg.toString());
          }
          return appResponseModel.data;
        } else {
          return response.data;
        }
      } else {
        if (backEndError != null) {
          backEndError("check your internet connection and try");
        } else if (unKnownError != null) {
          unKnownError("check your internet connection and try");
        } else {
          showErrorDialog("check your internet connection and try");
        }
      }
    } on DioError catch (e) {
      log('Errrrrrrorrrrr  ${e.response}');
      if (showLoading) {
        Loader.stop();
      }
      try {
        if (e.response != null) {
          String msg = '';
          if (e.response!.data['errors'] != null &&
              e.response!.data['errors'] != true &&
              e.response!.data['errors'] != false) {
            if (e.response!.data['errors'] is Map) {
              e.response!.data['errors'].forEach((key, value) {
                msg += value.toString();
              });
            } else {
              msg = msg += e.response!.data['errors'].toString();
            }
          }
          if (e.response!.data['message'] != null) {
            if (e.response!.data['message'] is Map) {
              e.response!.data['message'].forEach((key, value) {
                msg += value.toString();
              });
            } else {
              msg = msg += e.response!.data['message'].toString();
            }
          }

          if (backEndError != null) {
            backEndError(msg);
            showErrorDialog(msg);
          } else {
            showErrorDialog(msg);
          }
        } else {
          if (unKnownError != null) {
            unKnownError(kExceptionMessage);
          } else {
            if (backEndError != null) {
              backEndError(kExceptionMessage);
            } else {
              showErrorDialog(kExceptionMessage);
            }
          }
        }
        return null;
      } catch (exp) {
        if (backEndError != null) {
          backEndError(kErrorOccurredMessage);
        } else {
          if (e.response != null) {
            showErrorDialog(kExceptionMessage);
          }
        }
      }
    }
    return null;
  }
}
