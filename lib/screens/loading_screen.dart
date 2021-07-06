
import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {

  @override
 
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Location location=Location();
  @override
  void initState() {
  
    super.initState();
    getlocationdata();
  
   

  }
  Future <void> getlocationdata()async
  {
    Location location=Location();
   location.getcurrentlocation();
   
 
Networkhelper networkhelper=Networkhelper("https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=439d4b804bc8187953eb36d2a8c26a02");
  var wetherdata=networkhelper.getdata();
  Navigator.push(context, MaterialPageRoute(builder: (context)
  {
return LocationScreen(locationweather: wetherdata,);
  }
  )
  );

 

  }

     
    
  
  



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center
      (
        child: SpinKitDoubleBounce
        (
          color: Colors.white,
          size: 100.0,


        ),


      ),


    );
  }


  }
  
