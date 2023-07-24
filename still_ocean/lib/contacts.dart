import 'package:flutter/material.dart';
class contact extends StatelessWidget {
  const contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacts',style: TextStyle(color: Colors.white,fontFamily: 'BungeeSpice'),),
          centerTitle: true,
        ),
      body: Center(
        child: Container(height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(

              colors: [
              Colors.purpleAccent,
              Colors.yellowAccent.shade100],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight
            )
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Text('Hi,I am Harshit Kumar Vishwakarma, I love to create experiences that are out of ordinary. You can contact me on handles below-',style: TextStyle(color: Colors.black,fontFamily: 'Merienda',fontSize: 16),),
                Row(
                  children: [


                    Text('Github -',style: TextStyle(fontSize: 18,fontFamily: 'Merienda',color: Colors.red.shade900),),
                    Text(' ryuga123677',style: TextStyle(fontSize: 16,fontFamily: 'Merienda',color: Colors.blueAccent.shade400),),
                  ],
                ),
                    SizedBox(height: 30,),


                        Text('LinkedIn -                               ',style:TextStyle(fontFamily: 'Merienda',color: Colors.red.shade900,fontSize: 18)),
                        Text( ' https://www.linkedin.com/in/harshit-vishwakarma-8638a3245',style: TextStyle(fontSize: 16,fontFamily: 'Merienda',color: Colors.blueAccent.shade400),),



                SizedBox(height: 30,),

                   RichText(text: TextSpan(

                       children:<TextSpan>[
                   TextSpan(text:'Gmail  -                                                  ',   style: TextStyle(color: Colors.red.shade900,fontSize:18,fontFamily: 'Merienda'),),
                     TextSpan(text: '  kishanss311@gmail.com',style: TextStyle(fontSize:16,fontFamily: 'Merienda',color: Colors.blueAccent.shade400)),
]
            ),
        ),
                Spacer(),
                Text('TheCalmOcean',style: TextStyle(fontFamily: 'Merienda',color: Colors.black),)],
      ),
          ),
          ),
      ),
    );
  }
}
