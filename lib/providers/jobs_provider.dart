import 'package:flutter/material.dart';

import 'package:serconexion_app/api/jobs_api.dart';
import 'package:serconexion_app/models/job.dart';
import 'package:serconexion_app/models/place.dart';

class JobsProvider with ChangeNotifier {
  final _jobsApi = JobsApi();

  List<Job> _jobs;

  List<Job> get getJobs => this._jobs;

  Future<void> fetchJobs() async {
    await this._jobsApi.fetchJobs();
  }

  Future<void> requestJob(Place place, DateTime date) async {
    await this._jobsApi.requestJob(place, date);
  }
}
