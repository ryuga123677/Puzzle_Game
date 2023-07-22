import 'dart:io';

import 'package:flutter/material.dart';
import 'package:still_ocean/contacts.dart';
import 'package:still_ocean/game3.dart';
import 'package:still_ocean/skills.dart';
import 'package:full_screen_image/full_screen_image.dart';

class mainmenu extends StatefulWidget {
  const mainmenu({super.key});

  @override
  State<mainmenu> createState() => _mainmenuState();
}

class _mainmenuState extends State<mainmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: Stack(
          children:[FullScreenWidget(
            disposeLevel: DisposeLevel.High,
            child: Container(height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset('images/bg.png',fit: BoxFit.cover,),
              
            ),
            
          ),
            Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(

                  onPressed: ()
    {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> iqootest()));

    }
                , child:Text('Play Game',style: TextStyle(color: Colors.white,fontSize: 50,fontFamily: 'Sacramento'),),
                style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black)),
                ),
                SizedBox(height:40),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> skills()));

                }, child: Text('Skills',style: TextStyle(color: Colors.white,fontSize: 50,fontFamily: 'Sacramento'),),
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black),),
                ),

                SizedBox(height:40),
                ElevatedButton(onPressed: (){

                }, child:Text('Projects',style: TextStyle(color: Colors.white,fontSize: 50,fontFamily: 'Sacramento'),),
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black)),),
                SizedBox(height:40),
                ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> contact()));

                }, child:Text('Contacts',style: TextStyle(color: Colors.white,fontSize: 50,fontFamily: 'Sacramento'),),
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black)),),
                SizedBox(height:40),
                ElevatedButton(onPressed: ()=>exit(0), child:Text('Exit',style: TextStyle(color: Colors.white,fontSize: 50,fontFamily: 'Sacramento'),),
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black)),),



              ],
          ),
            ),],
        ),
      ),
    );
  }
}
