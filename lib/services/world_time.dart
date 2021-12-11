import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location; // location name for the UI
  late String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {
    // make the request
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map date = jsonDecode(response.body);
    // print(date);

    // get properties from data
    String datetime = date['datetime'];
    String offset = date['utc_offset'].substring(1, 3);
    // print(datetime);
    // print(offset);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    // set the time property
    time = now.toString();
  }
}