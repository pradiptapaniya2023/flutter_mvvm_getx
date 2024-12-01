import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_getx/data/app_exceptions.dart';
import 'package:flutter_mvvm_getx/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    debugPrint("Get API ==> $url");
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetExceptions('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }

    return responseJson;
  }

  @override
  Future postApi(var data, String url) async {
    debugPrint("Post API ==> $url");
    debugPrint("Post Data ==> $data");
    dynamic responseJson;
    try {
      final response =
          await http.post(Uri.parse(url),
          //if DATA was row fom then jsonEncode requried otherwish no requried
          body: jsonEncode(data)
          ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetExceptions('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlExceptions();
      default:
        throw FetchDataExceptions(
            'Error accoured while communicating with server' +
                response.statusCode.toString());
    }
  }
}
