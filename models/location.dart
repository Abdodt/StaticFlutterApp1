import './location_fact.dart';

class Location{

  final String name;
  final String url;
  final List<LocationFact> facts;
  Location({this.name,this.url,this.facts});//curly braces here means the parameters in this constructor are optional

}