import 'package:serconexion_app/api/common.dart';

class UserApi with CommonApi {
  Future<ApiResponse> fetchProfile() async {
    const String path = '/user-profile';

    return performGET(path);
  }
}
