import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
class iqootest extends StatefulWidget {
  const iqootest({super.key});

  @override
  State<iqootest> createState() => _iqootestState();
}
class _iqootestState extends State<iqootest> {
  List<Color> arc=[Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,];


  List<String> arr1=['images/banana.jpg','images/guava.jpeg','images/mango.jpg','images/orange.png','images/strawberry.png','images/watermellon.png','images/cherry.jpg'];
  List<String> arr2=['','','','','','','','','','','',''];
  List<Color> arr3=[];
  int count=0;


  void givecolor()
  {
    for(var i =0;i<6;i++)
    {String k;
    int g=0;

    k=arr1[Random().nextInt(6)];
    for(var j=i;j>=0;j--)
    {
      if(k==arr2[j])
      {
        i--;
        g++;
        break;
      }

    }
    if(g!=1) {
      arr2[i] = k;
    }
    }
    for(var i=0,j=11;i<6;i++,j--)
    {
      arr2[j]=arr2[i];

    }
  }




  String t='';
  String x='images/Orange_question_mark.svg.png';
  String y='images/Orange_question_mark.svg.png';
  String z='images/Orange_question_mark.svg.png';
  String m='images/Orange_question_mark.svg.png';
  String n='images/Orange_question_mark.svg.png';
  String o='images/Orange_question_mark.svg.png';
  String p='images/Orange_question_mark.svg.png';
  String q='images/Orange_question_mark.svg.png';
  String r='images/Orange_question_mark.svg.png';
  String a='images/Orange_question_mark.svg.png';
  String b='images/Orange_question_mark.svg.png';
  String d='images/Orange_question_mark.svg.png';
  int c=0;
  String result="";


  void initState()
  {
    givecolor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Find Pair',style: TextStyle(fontFamily: 'BungeeSpice'),),
          centerTitle: true,
        ),
        body:
            Column(
            children: [Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: InkWell(child: Container(
                    child: Image.asset(x),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: MediaQuery.of(context).size.height*.18,
                    width: MediaQuery.of(context).size.width*.3,
                  ),
                    onTap: (){
                      displayresult();

                      setState(() {count++;

                        if (x == 'images/Orange_question_mark.svg.png') {
                          c++;


                          t =  arr2[0];
                          if ((t == y || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c %
                              2 == 0) {
                            x = arr2[0];
                            t = '';
                            result='GOOD';
                          }
                          else if ((t == y || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) &&
                              c % 2 == 1) {

                            x = arr2[0]; result='GOOD';
                            t = '';
                          }
                          else if ((t != y || t != z || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) &&
                              c % 2 == 0) {
                            x = arr2[0];



                            Future.delayed(Duration(seconds: 1),() {
                              setState(() {
                                x = 'images/Orange_question_mark.svg.png';
                                result='TRY AGAIN';
                              });

                              c--;

                            });
                          }

                          else if ((t != y || t != z || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p )&&
                              c % 2 == 1) {

                            x = arr2[0]; result='GOOD';
                          }
                        }




                      });
                    },),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: InkWell(child: Container(
                    child: Image.asset(y),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: MediaQuery.of(context).size.height*.18,
                    width: MediaQuery.of(context).size.width*.3,
                  ),
                      onTap: (){count++;
                      displayresult();
                        setState(() {
                          if (y == 'images/Orange_question_mark.svg.png') {
                            t = arr2[1];

                            c++;


                            if ((t == x || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {

                              y = arr2[1]; result='GOOD';
                              t = '';
                            }
                            else if ((t == x || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
                              y =  arr2[1]; result='GOOD';
                              t = '';
                            }
                            else if ((t != x || t != z || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
                              y =  arr2[1];



                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  y = 'images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                });

                              });

                              c--;


                            }
                            else if ((t != x || t != z || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 1) {
                              y =  arr2[1]; result='GOOD';
                            }
                          }
                        });
                      }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: InkWell(child: Container(
                    child: Image.asset(z),
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: MediaQuery.of(context).size.height*.18,
                    width: MediaQuery.of(context).size.width*.3,
                  ),
                      onTap: (){count++;
                      displayresult();
                        setState(() {
                          if (z == 'images/Orange_question_mark.svg.png') {
                            c++;

                            t =  arr2[2];
                            if ((t == y || t == x || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
                              z =  arr2[2]; result='GOOD';
                              t = '';
                            }
                            else if ((t == y || t == x || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
                              z =  arr2[2]; result='GOOD';
                              t = '';
                            }
                            else if ((t != x || t != y || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
                              z =  arr2[2];
                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  z='images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                });
                              });

                              c--;
                            }
                            else if ((t != x || t != y || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 1) {
                              z =  arr2[2]; result='GOOD';
                            }
                          }
                        });
                      }
                  ),
                ),
              ],
            ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(child: Container(
                      child: Image.asset(m),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(30),
                      ),
                      height:  MediaQuery.of(context).size.height*.18,
                      width: MediaQuery.of(context).size.width*.3,
                    ),
                        onTap: (){count++;
                        displayresult();
                          setState(() {
                            if (m == 'images/Orange_question_mark.svg.png') {
                              c++;

                              t = arr2[3];
                              if ((t == y || t == z || t == x || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
                                m = arr2[3]; result='GOOD';
                                t = '';
                              }
                              else if ((t == y || t == z || t == x || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
                                m = arr2[3]; result='GOOD';
                                t = '';
                              }
                              else if ((t != x || t != y || t != z || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
                                m = arr2[3];
                                Future.delayed(Duration(seconds: 1),() {
                                  setState(() {
                                    m='images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                  });
                                });
                                c--;
                              }
                              else if ((t != x || t != y || t != z || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 1) {
                                m = arr2[3]; result='GOOD';
                              }
                            }
                          });
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(child: Container(
                      child: Image.asset(n),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: MediaQuery.of(context).size.height*.18,
                      width:  MediaQuery.of(context).size.width*.3,
                    ),
                        onTap: (){count++;
                        displayresult();
                          setState(() {
                            if (n == 'images/Orange_question_mark.svg.png') {
                              c++;

                              t = arr2[4];
                              if ((t == y || t == z || t == m || t == x || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
                                n = arr2[4]; result='GOOD';
                                t ='';
                              }
                              else if ((t == y || t == z || t == m || t == x || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
                                n = arr2[4]; result='GOOD';
                                t = '';
                              }
                              else if ((t != x || t != y || t != m || t != z || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
                                n=arr2[4];
                                Future.delayed(Duration(seconds: 1),() {
                                  setState(() {
                                    n='images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                  });
                                });
                                c--;
                              }
                              else if ((t != x || t != y || t != m || t != z || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 1) {
                                n = arr2[4]; result='GOOD';
                              }
                            }
                          });
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(child: Container(
                      child: Image.asset(o),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: MediaQuery.of(context).size.height*.18,
                      width: MediaQuery.of(context).size.width*.3,
                    ),
                        onTap: (){count++;
                        displayresult();
                          setState(() {
                            if (o== 'images/Orange_question_mark.svg.png') {
                              c++;


                              t =arr2[5];
                              if ((t == y || t == z || t == m || t == n || t == x ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
                                o = arr2[5]; result='GOOD';
                                t = '';
                              }
                              else if ((t == y || t == z || t == m || t == n || t == x ||t==q||t==p || t==r || t==a || t==b || t==d) && c % 2 == 1) {
                                o = arr2[5]; result='GOOD';
                                t = '';
                              }
                              else if ((t != x || t != y || t != m || t != z || t != n || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
                                o=arr2[5];
                                Future.delayed(Duration(seconds: 1),() {
                                  setState(() {
                                    o='images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                  });
                                });
                                c--;
                              }
                              else if ((t != x || t != y || t != m || t != z || t != n  || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 1) {
                                o = arr2[5]; result='GOOD';
                              }
                            }
                          });
                        }
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(child: Container(
                      child: Image.asset(p),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: MediaQuery.of(context).size.height*.18,
                      width: MediaQuery.of(context).size.width*.3,
                    ),
                        onTap: (){count++;
                        displayresult();
                          setState(() {
                            if (p == 'images/Orange_question_mark.svg.png') {
                              c++;

                              t = arr2[6];
                              if ((t == y || t == z || t == x ||t==m|| t == n || t == o  || t==q || t==r || t==a || t==b || t==d) && c % 2 == 0) {
                                p = arr2[6]; result='GOOD';
                                t = '';
                              }
                              else if ((t == y || t == z || t == x ||t==m|| t == n || t == o  || t==q || t==r || t==a || t==b || t==d) && c % 2 == 1) {
                                p = arr2[6]; result='GOOD';
                                t = '';
                              }
                              else if ((t != x || t != y || t != z ||t!=m|| t != n || t != o  || t!=q || t!=r || t!=a || t!=b || t!=d) && c % 2 == 0) {
                                p = arr2[6];
                                Future.delayed(Duration(seconds: 1),() {
                                  setState(() {
                                    p='images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                  });
                                });
                                c--;
                              }
                              else if ((t != x || t != y || t != z ||t!=m|| t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d ) && c % 2 == 1) {
                                p =arr2[6]; result='GOOD';
                              }
                            }
                          });
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(child: Container(
                      child: Image.asset(q),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height:  MediaQuery.of(context).size.height*.18,
                      width: MediaQuery.of(context).size.width*.3,
                    ),
                        onTap: (){count++;
                        displayresult();
                          setState(() {
                            if (q == 'images/Orange_question_mark.svg.png') {
                              c++;

                              t = arr2[7];
                              if ((t == y || t == z || t == m || t == x ||t==n|| t == o|| t==p || t==r || t==a || t==b || t==d) && c % 2 == 0) {
                                q = arr2[7]; result='GOOD';
                                t = '';
                              }
                              else if ((t == y || t == z || t == m || t == x ||t==n|| t == o || t==p || t==r || t==a || t==b || t==d) && c % 2 == 1) {
                                q = arr2[7]; result='GOOD';
                                t = '';
                              }
                              else if ((t != x || t != y || t != m || t != z ||t!=n|| t != o || t!=p || t!=r || t!=a || t!=b || t!=d) && c % 2 == 0) {
                                q=arr2[7];
                                Future.delayed(Duration(seconds: 1),() {
                                  setState(() {
                                    q='images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                  });
                                });
                                c--;
                              }
                              else if ((t != x || t != y || t != m || t != z ||t!=n|| t != o || t!=p || t!=r || t!=a || t!=b || t!=d) && c % 2 == 1) {
                                q = arr2[7]; result='GOOD';
                              }
                            }
                          });
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(child: Container(
                      child: Image.asset(r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height:  MediaQuery.of(context).size.height*.18,
                      width: MediaQuery.of(context).size.width*.3,
                    ),
                        onTap: (){count++;
                        displayresult();
                          setState(() {
                            if (r== 'images/Orange_question_mark.svg.png') {
                              c++;


                              t = arr2[8];
                              if ((t == y || t == z || t == m || t == n || t == x ||t==o|| t==p || t==q || t==a || t==b || t==d) && c % 2 == 0) {
                                r =arr2[8]; result='GOOD';
                                t = '';
                              }
                              else if ((t == y || t == z || t == m || t == n || t == x ||t==o|| t==p || t==q || t==a || t==b || t==d) && c % 2 == 1) {
                                r = arr2[8]; result='GOOD';
                                t ='';
                              }
                              else if ((t != x || t != y || t != m || t != z || t != n || t!=o|| t!=p || t!=q || t!=a || t!=b || t!=d) && c % 2 == 0) {
                                r=arr2[8];
                                Future.delayed(Duration(seconds: 1),() {
                                  setState(() {
                                    r='images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                  });
                                });
                                c--;
                              }
                              else if ((t != x || t != y || t != m || t != z || t != n  || t!=o|| t!=p || t!=q || t!=a || t!=b || t!=d) && c % 2 == 1) {
                                r = arr2[8]; result='GOOD';
                              }
                            }
                          });
                        }
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(child: Container(
                      child: Image.asset(a),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: MediaQuery.of(context).size.height*.18,
                      width:  MediaQuery.of(context).size.width*.3,
                    ),
                        onTap: (){count++;
                        displayresult();
                          setState(() {
                            if (a == 'images/Orange_question_mark.svg.png') {
                              c++;

                              t = arr2[9];
                              if ((t == y || t == z || t == x || t == n || t == o ||t==m|| t==p ||t==r|| t==q || t==b || t==d) && c % 2 == 0) {
                                a = arr2[9]; result='GOOD';
                                t = '';
                              }
                              else if ((t == y || t == z || t == x || t == n || t == o ||t==m||t==r|| t==p || t==q || t==b || t==d) && c % 2 == 1) {
                                a = arr2[9]; result='GOOD';
                                t = '';
                              }
                              else if ((t != x || t != y || t != z || t != n || t != o ||t!=r|| t!=p || t!=q||t!=m || t!=b || t!=d) && c % 2 == 0) {
                                a = arr2[9];
                                Future.delayed(Duration(seconds: 1),() {
                                  setState(() {
                                    a='images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                  });
                                });
                                c--;
                              }
                              else if ((t != x || t != y || t != z || t != n || t != o ||t!=r|| t!=p || t!=q||t!=m || t!=b || t!=d) && c % 2 == 1) {
                                a = arr2[9]; result='GOOD';
                              }
                            }
                          });
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(child: Container(
                      child: Image.asset(b),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: MediaQuery.of(context).size.height*.18,
                      width:  MediaQuery.of(context).size.width*.3,
                    ),
                        onTap: (){count++;
                        displayresult();
                          setState(() {
                            if (b == 'images/Orange_question_mark.svg.png') {
                              c++;

                              t =arr2[10];
                              if ((t == y || t == z || t == m || t == x || t == o ||t==r||t==a|| t==p || t==q ||t==n || t==d) && c % 2 == 0) {
                                b = arr2[10]; result='GOOD';
                                t = '';
                              }
                              else if ((t == y || t == z || t == m || t == x || t == o ||t==r||t==a|| t==p || t==q ||t==n || t==d) && c % 2 == 1) {
                                b = arr2[10]; result='GOOD';
                                t = '';
                              }
                              else if ((t != x || t != y || t != m || t != z || t != o ||t!=r||t!=n|| t!=p || t!=q ||t!=a|| t!=d) && c % 2 == 0) {
                                b=arr2[10];
                                Future.delayed(Duration(seconds: 1),() {
                                  setState(() {
                                    b='images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                  });
                                });
                                c--;
                              }
                              else if ((t != x || t != y || t != m || t != z || t != o ||t!=r||t!=n|| t!=p || t!=q ||t!=a|| t!=d) && c % 2 == 1) {
                                b = arr2[10]; result='GOOD';
                              }
                            }
                          });
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(child: Container(
                      child: Image.asset(d),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),

                      ),
                      height:  MediaQuery.of(context).size.height*.18,
                      width:  MediaQuery.of(context).size.width*.3,
                    ),
                        onTap: (){count++;
                        displayresult();
                          setState(() {
                            if (d== 'images/Orange_question_mark.svg.png') {
                              c++;


                              t = arr2[11];
                              if ((t == y || t == z || t == m || t == n || t == x ||t==r||t==a|| t==p || t==q ||t==n ||t==d||t==o) && c % 2 == 0) {
                                d= arr2[11]; result='GOOD';
                                t = '';
                              }
                              else if ((t == y || t == z || t == m || t == n || t == x ||t==r||t==a|| t==p || t==q ||t==n ||t==d||t==o) && c % 2 == 1) {
                                d = arr2[11]; result='GOOD';
                                t = '';
                              }
                              else if ((t != x || t != y || t != m || t != z || t != n ||t!=r|| t!=p || t!=q ||t!=a|| t!=b||t!=o) && c % 2 == 0) {
                                d=arr2[11];
                                Future.delayed(Duration(seconds: 1),() {
                                  setState(() {
                                    d='images/Orange_question_mark.svg.png';  result='TRY AGAIN';
                                  });
                                });
                                c--;
                              }
                              else if ((t != x || t != y || t != m || t != z || t != n ||t!=r|| t!=p || t!=q ||t!=a|| t!=b||t!=o) && c % 2 == 1) {
                                d =arr2[11]; result='GOOD';
                              }
                            }
                          });
                        }
                    ),
                  ),

                ],
              ),
              Container(

                height: 60,
               child: Text(result,style: TextStyle(fontSize: 20,color: Colors.red),),

                  ),
              SizedBox(height: 5,),
              Stack(

             children: [Padding(
               padding: const EdgeInsets.symmetric(vertical: 20),
               child: Text('   Result Out of 5',style: TextStyle(color: Colors.blue,fontSize: 20),),
             ),
               Card(color: Colors.tealAccent,
               child:  Row(
                 children: [

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: 20,
                       width: 60,
                       color: arc[0],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container( height: 20,
                       width: 60,
                       color: arc[1],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container( height: 20,
                       width: 60,
                       color: arc[2],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container( height: 20,
                       width: 60,
                       color: arc[3],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container( height: 20,
                       width: 60,
                       color: arc[4],
                     ),
                   ),

                 ],
               ),


             ),
              ]
              ),




            ],

            ),


    );
  }
  void displayresult()
  {print(c);
    print(count);
    if((count/2==6) && c==11)
    {

        setState(() {
          print('a');
          arc[0] = Colors.green;
          arc[1] = Colors.green;
          arc[2] = Colors.green;
          arc[3] = Colors.green;
          arc[4] = Colors.green;
        });
      }
        else if((6<(count/2)) && ((count/2) <=7) && c==11)
          {
            setState(() {

print('b');
            arc[0]=Colors.green;
            arc[1]=Colors.green;
            arc[2]=Colors.green;
            arc[3]=Colors.green;
            arc[4]=Colors.white;
            });
          }
       else if((7<(count/2)) && ((count/2) <=8) && c==11)
        {
          setState(() {
            print('c');


            arc[0]=Colors.green;
            arc[1]=Colors.green;
            arc[2]=Colors.green;
            arc[3]=Colors.white;
            arc[4]=Colors.white;
          });
        }
        else if((8<(count/2)) && ((count/2) <=9) && c==11)
        {
          setState(() {
print('d');

            arc[0]=Colors.green;
            arc[1]=Colors.green;
            arc[2]=Colors.white;
            arc[3]=Colors.white;
            arc[4]=Colors.white;
          });
        }
        else if((8<(count/2)) && ((count/2) <=10000) && c==11)
        {
          setState(() {
            print('e');


            arc[0]=Colors.green;
            arc[1]=Colors.white;
            arc[2]=Colors.white;
            arc[3]=Colors.white;
            arc[4]=Colors.white;
          });
        }




  }
}
