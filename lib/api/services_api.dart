import 'package:serconexion_app/api/common.dart';

class ServicesApi with CommonApi {
  Future<ApiResponse> fetchServices() async {
    const String path = '/services';

    return performGET(path);
  }
}
