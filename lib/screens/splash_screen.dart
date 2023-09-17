import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/home_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  Route _bildNewRoute(){
    return PageRouteBuilder(
      transitionDuration: Duration(seconds: 2),
      pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
       // for Slider Transition
      // var begin = Offset(1, 0);
      // var end = Offset(0, 0);

      // var tween = Tween(begin: begin, end: end);

      // return SlideTransition(
      //   position: animation.drive(tween),
      //   child: child,
      //   );
      //------------------------------------------------------

      //for Scale Teanstion
      // var begin = 0.0;
      // var end = 1.0;

      // var tween = Tween(begin: begin, end: end);
      // return ScaleTransition(
      //   scale: animation.drive(tween),
      //   child: child,alignment: Alignment.bottomLeft,
      //   );

      //---------------------------------------------------

      // For Rotation

      // var begin = 0.0;
      // var end = 1.0;

      // var tween = Tween(begin: begin, end: end);

      // return RotationTransition(
      //   turns: animation.drive(tween),
      //   child: child,
      //   );

      //-------------------------------------------

      var begin = 0.0;
      var end = 1.0;

      var tween = Tween(begin: begin, end: end);

      return FadeTransition(
        opacity: animation.drive(tween),
        child: child,
        );


    },
    
    );
  }

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2)).then((value){
      Navigator.pushReplacement(
        context,  _bildNewRoute() 
        
          );
    }
    );


    
    return Scaffold(

      body: Center(
        
        child: Container(
          alignment: Alignment.center,
          
          //width: MediaQuery(data: data, child: child),
          //height: 500,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          
          decoration: const BoxDecoration(
          
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ], 
            tileMode: TileMode.mirror,
          ),
          image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg",
                  
                  ),
                  )
        ),
          child: Text(
            "LOGO",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
        ),
      ),

      //navigate to next screen , we can not return to pervios screen
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: (){
      //       Navigator.push(context,
      //        MaterialPageRoute(
      //         builder: (context) => HomeScreen(),
      //         ),
      //         );
      //     },
      //      child: Text("Go To Home Screen"),
      //      ),
      // ),






      //can return to prevous screen, generate back arrow automaticlly
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: (){
      //       Navigator.push(context,
      //        MaterialPageRoute(
      //         builder: (context) => HomeScreen(),
      //         ),
      //         );
      //     },
      //      child: Text("Go To Home Screen"),
      //      ),
      // ),

    );
  }
}