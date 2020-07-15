import 'package:serconexion_app/models/credit_card.dart';
import 'package:serconexion_app/models/place.dart';

class User {
  String name;
  String email;
  List<Place> places;
  List<CreditCard> creditCards;

  User(this.name, this.places, this.creditCards);
}
