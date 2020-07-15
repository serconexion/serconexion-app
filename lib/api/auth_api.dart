import 'package:serconexion_app/api/common.dart';

class AuthApi with CommonApi {
  Future<ApiResponse> login({String email, String password}) async {
    const String path = '/users/login';

    return performPOST(path, data: {'email': email, 'password': password});
  }

  Future<ApiResponse> register({
    String name,
    String email,
    String password,
    String idCard,
    String address,
  }) async {
    const String path = '/users/register';

    return performPOST(path, data: {
      'name': name,
      'email': email,
      'password': password,
      'idCard': idCard,
      'address': address,
    });
  }
}
