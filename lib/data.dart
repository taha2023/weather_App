
import 'package:http/http.dart'as http;

class Weather{

final int max;
final int min;
final int current;

final String name;
final String day;
final int wind;
final int Humidity;

Weather(this.max, this.min, this.current, this.name, this.day, this.wind, 
              this.Humidity, this.chanceRain, this.time, this.location, );

final int chanceRain;
final String time;
final String location;

}
String apId="cc806c4e758677586b1205b907b2f967";

Future<List> fetchData(String lat, String lon,String city) async{

var url ="https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&units=metric{part}&appid=$apId";

var response=await http.get(Uri.parse(url));


}