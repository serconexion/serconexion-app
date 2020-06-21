import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiResponse {
  final int statusCode;
  final String responseObject;
  final bool isError;

  ApiResponse(this.responseObject, this.statusCode, this.isError);

  Map get decodedResponseObject {
    return json.decode(this.responseObject);
  }
}

class CommonApi {
  final String baseURL = 'https://api.serconexion.com';
  final String token = '';

  Future<ApiResponse> performGET({String path, bool withToken}) async {
    final http.BaseClient client = http.Client();
    final headers = {HttpHeaders.authorizationHeader: this.token};
    http.Response response;

    try {
      response = await client.get('${this.baseURL}/$path',
          headers: withToken ? headers : null);

      return ApiResponse(response.body, response.statusCode, false);
    } catch (err) {
      return ApiResponse(null, null, true);
    }
  }

  Future<ApiResponse> performPOST(
      {String path, Map data, bool withToken}) async {
    final http.BaseClient client = http.Client();
    final headers = {HttpHeaders.authorizationHeader: this.token};
    http.Response response;

    try {
      response = await client.post('${this.baseURL}/$path',
          headers: withToken ? headers : null, body: data);

      return ApiResponse(response.body, response.statusCode, false);
    } catch (err) {
      return ApiResponse(null, null, true);
    }
  }

  Future<ApiResponse> performPUT(
      {String path, Map data, bool withToken}) async {
    final http.BaseClient client = http.Client();
    final headers = {HttpHeaders.authorizationHeader: this.token};
    http.Response response;

    try {
      response = await client.put('${this.baseURL}/$path',
          headers: withToken ? headers : null, body: data);

      return ApiResponse(response.body, response.statusCode, false);
    } catch (err) {
      return ApiResponse(null, null, true);
    }
  }

  Future<ApiResponse> performDELETE({String path, bool withToken}) async {
    final http.BaseClient client = http.Client();
    final headers = {HttpHeaders.authorizationHeader: this.token};
    http.Response response;

    try {
      response = await client.delete('${this.baseURL}/$path',
          headers: withToken ? headers : null);

      return ApiResponse(response.body, response.statusCode, false);
    } catch (err) {
      return ApiResponse(null, null, true);
    }
  }
}
