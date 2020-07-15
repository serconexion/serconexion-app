import 'package:serconexion_app/models/place.dart';
import 'package:serconexion_app/models/user.dart';

class Job {
  String type;
  Place place;
  User offerent;
  JobStatus status;

  Job(this.type, this.place, this.offerent, this.status);
}

enum JobStatus { PENDING, CURRENT, DONE }
