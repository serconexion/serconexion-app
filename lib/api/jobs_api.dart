import 'package:serconexion_app/api/common.dart';
import 'package:serconexion_app/models/place.dart';

class JobsApi with CommonApi {
  Future<ApiResponse> fetchJobs() async {
    const String path = '/jobs';

    return performGET(path);
  }

  Future<ApiResponse> requestJob(Place place, DateTime date) async {
    const String path = '/jobs/request';

    return performPOST(path, data: {
      'place': place,
      'date': date,
    });
  }
}
