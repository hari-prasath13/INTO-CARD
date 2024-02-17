import 'package:flutter/material.dart';

void main() {
  runApp( myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

          home: Scaffold(
            backgroundColor: Colors.grey[600],
            body:SafeArea(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget> [
                 CircleAvatar(
                   radius: 75,
                   backgroundImage: AssetImage('image/hari.jpeg'),
                 ),
                 Text('HARIPRASATH',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 25,
                         fontFamily: 'RobotoSlab',
                         fontWeight: FontWeight.bold,
                         letterSpacing:0.9,
                       ),
                 ),
                 SizedBox(height:5,),
                 Text('ASSOCIATE SOFTWARE DEVELOPER',
                   style: TextStyle(
                     color: Colors.white70,
                     fontSize: 13,
                     fontFamily:'ChakraPetch',
                       fontWeight: FontWeight.bold,
                     letterSpacing:1.2,
                   ),
                 ),
                 SizedBox(height:20,
                 width: 370,
                 child: Divider(
                   color: Colors.white,
                 ) ,),
                 Card(
                   color: Colors.white24,
                   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                   child:ListTile(
                     leading: Icon( Icons.phone,
                       color: Colors.white70,
                     ),
                     title:Text('+91 6379057902',
                       style: TextStyle(
                         color: Colors.white70,
                         fontSize: 18,
                       ) ,
                     ) ,
                   ),
                 ),
                 Card(
                   color: Colors.white24,
                   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                     child: ListTile(
                       leading: Icon( Icons.email,
                         color: Colors.white70,
                       ),
                       title:Text('muralihariprasath@gmail.com',
                         style: TextStyle(
                           color: Colors.white70,
                           fontSize: 18,
                         ) ,
                       ) ,
                     ),
                   ),
               ],
            ),
          ),
    ),
    );
  }
}


