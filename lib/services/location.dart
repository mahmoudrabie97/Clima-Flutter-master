import 'package:geolocator/geolocator.dart';
class Location {
   double longitude;
   double latude;
  void getcurrentlocation()async
  {
    try{
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
 latude=position.latitude;
 longitude=position.longitude;

    }
    catch(e)
    {
print(e);
    }


}
}