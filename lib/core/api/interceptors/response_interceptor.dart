import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../../../common/utils/utils.dart';
import '../models/responses/error_response.dart';

// ? Service to intercept any possible errors

FutureOr<dynamic> responseInterceptor(
    Request request, Response response) async {
  EasyLoading.dismiss();
  if (response.statusCode != 200) {
    print(response.body);
    handleErrorStatus(response);
  }

  return response;
}

void handleErrorStatus(Response response) {
  switch (response.statusCode) {
    case 400:
      final message = ErrorResponse.fromJson(response.body);
      CommonWidget.toast(message.message);
      break;
    default:
      final message = ErrorResponse.fromJson(response.body);
      print(message);
      CommonWidget.toast(message.message);
      break;
  }

  return ;
}
