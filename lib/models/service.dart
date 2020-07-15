class Service {
  String name;
  ServiceStatus status;

  Service(this.name, this.status);
}

enum ServiceStatus { AVAILABLE, NOT_AVAILABLE }
