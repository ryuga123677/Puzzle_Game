import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
class iqootest extends StatefulWidget {
  const iqootest({super.key});

  @override
  State<iqootest> createState() => _iqootestState();
}
class _iqootestState extends State<iqootest> {



  List<Color> arr1=[Colors.red,Colors.blue,Colors.green,Colors.yellow,Colors.purple,Colors.orange,Colors.pink,Colors.lightGreenAccent];
List<Color> arr2=[Colors.lightGreen,Colors.redAccent,Colors.yellowAccent,Colors.purpleAccent,Colors.orangeAccent,Colors.blueGrey,Colors.lightGreen,Colors.redAccent,Colors.yellowAccent,Colors.purpleAccent,Colors.orangeAccent,Colors.blueGrey,];
List<Color> arr3=[];
  void givecolor()
  {
    for(var i =0;i<6;i++)
    {Color k;
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
    for(var i=0;i<6;i++)
    {
      arr2[i+6]=arr2[i];

    }
  }



  String w='asset/images/Orange_question_mark.svg.png';
  String l="";
  Color t=Colors.white;
  Color x=Colors.black;
  Color y=Colors.black;
  Color z=Colors.black;
  Color m=Colors.black;
  Color n=Colors.black;
  Color o=Colors.black;
  Color p=Colors.black;
  Color q=Colors.black;
  Color r=Colors.black;
  Color a=Colors.black;
  Color b=Colors.black;
  Color d=Colors.black;
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
          title: Text('Puzzle game'),
        ),
        body: Column(
          children: [Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(child: Container(
                  decoration: BoxDecoration(
                    color: x,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 120,
                  width: 120,
                ),
                  onTap: (){

                    setState(() {
                      if (x == Colors.black) {
                        c++;

                        t =  arr2[0];
                        if ((t == y || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c %
                            2 == 0) {
                          x = arr2[0];
                          t = Colors.white;
                          result='GOOD';
                        }
                        else if ((t == y || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) &&
                            c % 2 == 1) {

                          x = arr2[0]; result='GOOD';
                          t = Colors.white;
                        }
                        else if ((t != y || t != z || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) &&
                            c % 2 == 0) {
                          x = arr2[0];



                          Future.delayed(Duration(seconds: 1),() {
                            setState(() {
                              x = Colors.black;
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
                padding: const EdgeInsets.all(8.0),
                child: InkWell(child: Container(
                  decoration: BoxDecoration(
                    color: y,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 120,
                  width: 120,
                ),
                    onTap: (){
                      setState(() {
                        if (y == Colors.black) {
                          t = arr2[1];
                          c++;


                          if ((t == x || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {

                            y = arr2[1]; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t == x || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
                            y =  arr2[1]; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t != x || t != z || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
                            y =  arr2[1];



                            Future.delayed(Duration(seconds: 1),() {
                              setState(() {
                                y = Colors.black;  result='TRY AGAIN';
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
                padding: const EdgeInsets.all(8.0),
                child: InkWell(child: Container(
                  decoration: BoxDecoration(
                    color: z,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 120,
                  width: 120,
                ),
                    onTap: (){
                      setState(() {
                        if (z == Colors.black) {
                          c++;
                          t =  arr2[2];
                          if ((t == y || t == x || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
                            z =  arr2[2]; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t == y || t == x || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
                            z =  arr2[2]; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t != x || t != y || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
                            z =  arr2[2];
                            Future.delayed(Duration(seconds: 1),() {
                              setState(() {
                                z=Colors.black;  result='TRY AGAIN';
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
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Container(
                    decoration: BoxDecoration(
                      color: m,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height:  120,
                    width:  120,
                  ),
                      onTap: (){
                        setState(() {
                          if (m == Colors.black) {
                            c++;
                            t = arr2[3];
                            if ((t == y || t == z || t == x || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
                              m = arr2[3]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t == y || t == z || t == x || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
                              m = arr2[3]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t != x || t != y || t != z || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
                              m = arr2[3];
                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  m=Colors.black;  result='TRY AGAIN';
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
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Container(
                    decoration: BoxDecoration(
                      color: n,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 120,
                    width:  120,
                  ),
                      onTap: (){
                        setState(() {
                          if (n == Colors.black) {
                            c++;
                            t = arr2[4];
                            if ((t == y || t == z || t == m || t == x || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
                              n = arr2[4]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t == y || t == z || t == m || t == x || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
                              n = arr2[4]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t != x || t != y || t != m || t != z || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
                              n=arr2[4];
                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  n=Colors.black;  result='TRY AGAIN';
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
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Container(
                    decoration: BoxDecoration(
                      color: o,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height:  120,
                    width:  120,
                  ),
                      onTap: (){
                        setState(() {
                          if (o== Colors.black) {
                            c++;

                            t =arr2[5];
                            if ((t == y || t == z || t == m || t == n || t == x ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
                              o = arr2[5]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t == y || t == z || t == m || t == n || t == x ||t==q||t==p || t==r || t==a || t==b || t==d) && c % 2 == 1) {
                              o = arr2[5]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t != x || t != y || t != m || t != z || t != n || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
                              o=arr2[5];
                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  o=Colors.black;  result='TRY AGAIN';
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
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Container(
                    decoration: BoxDecoration(
                      color: p,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 120,
                    width:  120,
                  ),
                      onTap: (){
                        setState(() {
                          if (p == Colors.black) {
                            c++;
                            t = arr2[6];
                            if ((t == y || t == z || t == x ||t==m|| t == n || t == o  || t==q || t==r || t==a || t==b || t==d) && c % 2 == 0) {
                              p = arr2[6]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t == y || t == z || t == x ||t==m|| t == n || t == o  || t==q || t==r || t==a || t==b || t==d) && c % 2 == 1) {
                              p = arr2[6]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t != x || t != y || t != z ||t!=m|| t != n || t != o  || t!=q || t!=r || t!=a || t!=b || t!=d) && c % 2 == 0) {
                              p = arr2[6];
                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  p=Colors.black;  result='TRY AGAIN';
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
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Container(
                    decoration: BoxDecoration(
                      color: q,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height:  120,
                    width:  120,
                  ),
                      onTap: (){
                        setState(() {
                          if (q == Colors.black) {
                            c++;
                            t = arr2[7];
                            if ((t == y || t == z || t == m || t == x ||t==n|| t == o|| t==p || t==r || t==a || t==b || t==d) && c % 2 == 0) {
                              q = arr2[7]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t == y || t == z || t == m || t == x ||t==n|| t == o || t==p || t==r || t==a || t==b || t==d) && c % 2 == 1) {
                              q = arr2[7]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t != x || t != y || t != m || t != z ||t!=n|| t != o || t!=p || t!=r || t!=a || t!=b || t!=d) && c % 2 == 0) {
                              q=arr2[7];
                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  q=Colors.black;  result='TRY AGAIN';
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
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Container(
                    decoration: BoxDecoration(
                      color: r,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height:  120,
                    width:  120,
                  ),
                      onTap: (){
                        setState(() {
                          if (r== Colors.black) {
                            c++;

                            t = arr2[8];
                            if ((t == y || t == z || t == m || t == n || t == x ||t==o|| t==p || t==q || t==a || t==b || t==d) && c % 2 == 0) {
                              r =arr2[8]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t == y || t == z || t == m || t == n || t == x ||t==o|| t==p || t==q || t==a || t==b || t==d) && c % 2 == 1) {
                              r = arr2[8]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t != x || t != y || t != m || t != z || t != n || t!=o|| t!=p || t!=q || t!=a || t!=b || t!=d) && c % 2 == 0) {
                              r=arr2[8];
                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  r=Colors.black;  result='TRY AGAIN';
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
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Container(
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height:  120,
                    width:  120,
                  ),
                      onTap: (){
                        setState(() {
                          if (a == Colors.black) {
                            c++;
                            t = arr2[9];
                            if ((t == y || t == z || t == x || t == n || t == o ||t==m|| t==p ||t==r|| t==q || t==b || t==d) && c % 2 == 0) {
                              a = arr2[9]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t == y || t == z || t == x || t == n || t == o ||t==m||t==r|| t==p || t==q || t==b || t==d) && c % 2 == 1) {
                              a = arr2[9]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t != x || t != y || t != z || t != n || t != o ||t!=r|| t!=p || t!=q||t!=m || t!=b || t!=d) && c % 2 == 0) {
                              a = arr2[9];
                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  a=Colors.black;  result='TRY AGAIN';
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
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Container(

                    decoration: BoxDecoration(
                      color: b,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 120,
                    width:  120,
                  ),
                      onTap: (){
                        setState(() {
                          if (b == Colors.black) {
                            c++;
                            t =arr2[10];
                            if ((t == y || t == z || t == m || t == x || t == o ||t==r||t==a|| t==p || t==q ||t==n || t==d) && c % 2 == 0) {
                              b = arr2[10]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t == y || t == z || t == m || t == x || t == o ||t==r||t==a|| t==p || t==q ||t==n || t==d) && c % 2 == 1) {
                              b = arr2[10]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t != x || t != y || t != m || t != z || t != o ||t!=r||t!=n|| t!=p || t!=q ||t!=a|| t!=d) && c % 2 == 0) {
                              b=arr2[10];
                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  b=Colors.black;  result='TRY AGAIN';
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
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: d
                    ),
                    height:  120,
                    width:  120,
                  ),
                      onTap: (){
                        setState(() {
                          if (d== Colors.black) {
                            c++;

                            t = arr2[11];
                            if ((t == y || t == z || t == m || t == n || t == x ||t==r||t==a|| t==p || t==q ||t==n ||t==d||t==o) && c % 2 == 0) {
                              d= arr2[11]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t == y || t == z || t == m || t == n || t == x ||t==r||t==a|| t==p || t==q ||t==n ||t==d||t==o) && c % 2 == 1) {
                              d = arr2[11]; result='GOOD';
                              t = Colors.white;
                            }
                            else if ((t != x || t != y || t != m || t != z || t != n ||t!=r|| t!=p || t!=q ||t!=a|| t!=b||t!=o) && c % 2 == 0) {
                              d=arr2[11];
                              Future.delayed(Duration(seconds: 1),() {
                                setState(() {
                                  d=Colors.black;  result='TRY AGAIN';
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
            // Container(
            //
            //   height: 30,
            //  child: Image.asset(w),
            //     ),
            //
            //
            //   ),
            // ),
            // Container(
            //
            //   height: 30,
            //   decoration:BoxDecoration(
            //     image:DecorationImage(
            //       image:NetworkImage('https://loremflickr.com/320/240/fruit'),
            //     ),
            //
            //
            //   ),
            // ),    Container(
            //
            //   height: 30,
            //   decoration:BoxDecoration(
            //     image:DecorationImage(
            //       image:NetworkImage('https://loremflickr.com/320/240/vegetables'),
            //     ),
            //
            //
            //   ),
            // )

          ],

        )

    );
  }
}
