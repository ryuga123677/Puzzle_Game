import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
class skills extends StatefulWidget {
  const skills({super.key});

  @override
  State<skills> createState() => _skillsState();
}

class _skillsState extends State<skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Skills',style: TextStyle(color: Colors.white,fontFamily: 'BungeeSpice'),),
          centerTitle:  true,
        ),
      body: Stack(
        children: [FullScreenWidget(
          disposeLevel: DisposeLevel.High,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: [Colors.lightGreenAccent,
              //   Colors.cyanAccent,
              //   //Colors.indigo
              //   ]
              // )
            ),
            child: Image.asset('images/img.png',fit: BoxFit.cover,),
          ),
        ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(text: TextSpan(
                  style: TextStyle(color: Colors.pinkAccent.shade700,fontSize: 18,fontFamily: 'Merienda'),

                children:<TextSpan>[
                  TextSpan(text:'Coding Skills :'),
                  TextSpan(text: 'C ,C++ ,C# , Dart , Python',style: TextStyle(color:Colors.yellowAccent.shade700,fontFamily: 'Merienda')),

                ]
                ),
                ),
            //     Text('CODING SKILLS : C,C++,C#,DART,PYTHON',style:TextStyle(color: Colors.yellowAccent,fontSize: 20),),
            //     SizedBox(height: 20,),
            //     Text('    DEVELOPMENT SKILLS: Flutter App Development , Unity 3d',style:TextStyle(color: Colors.yellowAccent,fontSize: 20),),
            // SizedBox(height: 20,),
            //     Text('    DEPLOYMENT SKILLS : Firebase Authentication,Firebase Firestore,Firebase Realtime Database',style:TextStyle(color: Colors.yellowAccent,fontSize: 20),),
            // SizedBox(height: 20,),
            //     Text('CREATIVE SKILLS: Blender 3d',style:TextStyle(color: Colors.yellowAccent,fontSize: 20),)
                SizedBox(height: 20,),
               RichText(text: TextSpan(
            style: TextStyle(color: Colors.pinkAccent.shade700,fontSize: 18,fontFamily: 'Merienda'),

    children:<TextSpan>[
    TextSpan(text:'Development :'),
    TextSpan(text:'Flutter App Development',style: TextStyle(color:Colors.yellowAccent.shade700,fontFamily: 'Merienda')),

    ]
    ),
               ),

              RichText(text: TextSpan(
                  style: TextStyle(color: Colors.pinkAccent.shade700,fontSize:18),

                  children:<TextSpan>[
                    TextSpan(text: '                       -Unity Game Development',style: TextStyle(color:Colors.yellowAccent.shade700,fontFamily: 'Merienda',fontSize:18)),

                  ]
              ),
              ),SizedBox(height: 20,),
                RichText(text: TextSpan(
                    style: TextStyle(color: Colors.pinkAccent.shade700,fontSize: 18),

                    children:<TextSpan>[
                      TextSpan(text:'Deployment Skills:',style: TextStyle(color:Colors.pinkAccent.shade700,fontFamily: 'Merienda',fontSize: 18)),
                      TextSpan(text: 'Firebase Authentication',style: TextStyle(color:Colors.yellowAccent.shade700,fontFamily: 'Merienda',fontSize: 18)),

                    ]
                ),
                ),
                RichText(text: TextSpan(
                    style: TextStyle(color: Colors.pinkAccent.shade700,fontSize: 18),

                    children:<TextSpan>[
                      TextSpan(text: '                              -Firebase Firestore',style: TextStyle(color:Colors.yellowAccent.shade700,fontFamily: 'Merienda',fontSize:18)),

                    ]
                ),
                ),
                RichText(text: TextSpan(
                    style: TextStyle(color: Colors.pinkAccent.shade700,fontSize:18),

                    children:<TextSpan>[
                      TextSpan(text: '                    -Firebase Realtime Database',style: TextStyle(color:Colors.yellowAccent.shade700,fontFamily: 'Merienda',fontSize:18),
                      ),


                    ]
                ),
                ),
                RichText(text: TextSpan(
                  children: <TextSpan>[ TextSpan(text: '                   - Postman ,APIs,Google map api',style: TextStyle(color:Colors.yellowAccent.shade700,fontFamily: 'Merienda',fontSize:18))]
                )),
                SizedBox(height: 20,),
                RichText(text: TextSpan(
                    style: TextStyle(color: Colors.pinkAccent.shade700,fontSize: 20,fontFamily: 'Merienda'),

                    children:<TextSpan>[
                      TextSpan(text:'Creative Skills:',style: TextStyle(color:Colors.pinkAccent.shade700,fontFamily: 'Merienda',fontSize: 18)),
                      TextSpan(text: '         Blender 3d',style: TextStyle(color:Colors.yellowAccent.shade700,fontFamily: 'Merienda',fontSize: 18)),

                    ]
                ),
                ),
                SizedBox(height: 40,),
                Text('TheCalmOcean',style: TextStyle(fontFamily: 'Merienda',color: Colors.white),)

              ],


            ),

        ),],
      )
    );
  }
}
