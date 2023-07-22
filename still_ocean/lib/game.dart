import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
class iqootest extends StatefulWidget {
  const iqootest({super.key});

  @override
  State<iqootest> createState() => _iqootestState();
}

class _iqootestState extends State<iqootest> {
  List<Color> image=[Colors.red,Colors.blue,Colors.red,Colors.blue,Colors.green,Colors.green,Colors.black];
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

                    t = Colors.red;
                    if ((t == y || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c %
                        2 == 0) {
                      x = Colors.red;
                      t = Colors.white;
                      result='GOOD';
                    }
                    else if ((t == y || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) &&
                        c % 2 == 1) {

                      x = Colors.red; result='GOOD';
                      t = Colors.white;
                    }
                    else if ((t != y || t != z || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) &&
                        c % 2 == 0) {
                      x = Colors.red;



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

                      x = Colors.red; result='GOOD';
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
        t = Colors.blue;
        c++;


        if ((t == x || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {

          y = Colors.blue; result='GOOD';
          t = Colors.white;
        }
        else if ((t == x || t == z || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
          y = Colors.blue; result='GOOD';
          t = Colors.white;
        }
        else if ((t != x || t != z || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
          y = Colors.blue;



    Future.delayed(Duration(seconds: 1),() {
      setState(() {
        y = Colors.black;  result='TRY AGAIN';
      });

    });

          c--;


        }
        else if ((t != x || t != z || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 1) {
          y = Colors.blue; result='GOOD';
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
        t = Colors.green;
        if ((t == y || t == x || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
          z = Colors.green; result='GOOD';
          t = Colors.white;
        }
        else if ((t == y || t == x || t == m || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
          z = Colors.green; result='GOOD';
          t = Colors.white;
        }
        else if ((t != x || t != y || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
          z = Colors.green;
          Future.delayed(Duration(seconds: 1),() {
            setState(() {
              z=Colors.black;  result='TRY AGAIN';
            });
          });

          c--;
        }
        else if ((t != x || t != y || t != m || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 1) {
          z = Colors.green; result='GOOD';
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
        t = Colors.green;
        if ((t == y || t == z || t == x || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
          m = Colors.green; result='GOOD';
          t = Colors.white;
        }
        else if ((t == y || t == z || t == x || t == n || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
          m = Colors.green; result='GOOD';
          t = Colors.white;
        }
        else if ((t != x || t != y || t != z || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
          m = Colors.green;
          Future.delayed(Duration(seconds: 1),() {
            setState(() {
              m=Colors.black;  result='TRY AGAIN';
            });
          });
          c--;
        }
        else if ((t != x || t != y || t != z || t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 1) {
          m = Colors.green; result='GOOD';
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
        t = Colors.red;
        if ((t == y || t == z || t == m || t == x || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
          n = Colors.red; result='GOOD';
          t = Colors.white;
        }
        else if ((t == y || t == z || t == m || t == x || t == o ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 1) {
          n = Colors.red; result='GOOD';
          t = Colors.white;
        }
        else if ((t != x || t != y || t != m || t != z || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
          n=Colors.red;
          Future.delayed(Duration(seconds: 1),() {
            setState(() {
              n=Colors.black;  result='TRY AGAIN';
            });
          });
          c--;
        }
        else if ((t != x || t != y || t != m || t != z || t != o || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 1) {
          n = Colors.red; result='GOOD';
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

        t = Colors.blue;
        if ((t == y || t == z || t == m || t == n || t == x ||t==p ||t==q|| t==r || t==a || t==b || t==d) && c % 2 == 0) {
          o = Colors.blue; result='GOOD';
          t = Colors.white;
        }
        else if ((t == y || t == z || t == m || t == n || t == x ||t==q||t==p || t==r || t==a || t==b || t==d) && c % 2 == 1) {
          o = Colors.blue; result='GOOD';
          t = Colors.white;
        }
        else if ((t != x || t != y || t != m || t != z || t != n || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 0) {
          o=Colors.blue;
          Future.delayed(Duration(seconds: 1),() {
            setState(() {
              o=Colors.black;  result='TRY AGAIN';
            });
          });
          c--;
        }
        else if ((t != x || t != y || t != m || t != z || t != n  || t!=q || t!=r || t!=a || t!=b || t!=d||t!=p) && c % 2 == 1) {
          o = Colors.blue; result='GOOD';
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
                          t = Colors.yellow;
                          if ((t == y || t == z || t == x ||t==m|| t == n || t == o  || t==q || t==r || t==a || t==b || t==d) && c % 2 == 0) {
                            p = Colors.yellow; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t == y || t == z || t == x ||t==m|| t == n || t == o  || t==q || t==r || t==a || t==b || t==d) && c % 2 == 1) {
                            p = Colors.yellow; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t != x || t != y || t != z ||t!=m|| t != n || t != o  || t!=q || t!=r || t!=a || t!=b || t!=d) && c % 2 == 0) {
                            p = Colors.yellow;
                            Future.delayed(Duration(seconds: 1),() {
                              setState(() {
                                p=Colors.black;  result='TRY AGAIN';
                              });
                            });
                            c--;
                          }
                          else if ((t != x || t != y || t != z ||t!=m|| t != n || t != o || t!=q || t!=r || t!=a || t!=b || t!=d ) && c % 2 == 1) {
                            p = Colors.yellow; result='GOOD';
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
                          t = Colors.purple;
                          if ((t == y || t == z || t == m || t == x ||t==n|| t == o|| t==p || t==r || t==a || t==b || t==d) && c % 2 == 0) {
                            q = Colors.purple; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t == y || t == z || t == m || t == x ||t==n|| t == o || t==p || t==r || t==a || t==b || t==d) && c % 2 == 1) {
                            q = Colors.purple; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t != x || t != y || t != m || t != z ||t!=n|| t != o || t!=p || t!=r || t!=a || t!=b || t!=d) && c % 2 == 0) {
                            q=Colors.purple;
                            Future.delayed(Duration(seconds: 1),() {
                              setState(() {
                               q=Colors.black;  result='TRY AGAIN';
                              });
                            });
                            c--;
                          }
                          else if ((t != x || t != y || t != m || t != z ||t!=n|| t != o || t!=p || t!=r || t!=a || t!=b || t!=d) && c % 2 == 1) {
                            q = Colors.purple; result='GOOD';
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

                          t = Colors.orange;
                          if ((t == y || t == z || t == m || t == n || t == x ||t==o|| t==p || t==q || t==a || t==b || t==d) && c % 2 == 0) {
                            r = Colors.orange; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t == y || t == z || t == m || t == n || t == x ||t==o|| t==p || t==q || t==a || t==b || t==d) && c % 2 == 1) {
                            r = Colors.orange; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t != x || t != y || t != m || t != z || t != n || t!=o|| t!=p || t!=q || t!=a || t!=b || t!=d) && c % 2 == 0) {
                           r=Colors.orange;
                            Future.delayed(Duration(seconds: 1),() {
                              setState(() {
                              r=Colors.black;  result='TRY AGAIN';
                              });
                            });
                            c--;
                          }
                          else if ((t != x || t != y || t != m || t != z || t != n  || t!=o|| t!=p || t!=q || t!=a || t!=b || t!=d) && c % 2 == 1) {
                            r = Colors.orange; result='GOOD';
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
                          t = Colors.orange;
                          if ((t == y || t == z || t == x || t == n || t == o ||t==m|| t==p ||t==r|| t==q || t==b || t==d) && c % 2 == 0) {
                           a = Colors.orange; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t == y || t == z || t == x || t == n || t == o ||t==m||t==r|| t==p || t==q || t==b || t==d) && c % 2 == 1) {
                            a = Colors.orange; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t != x || t != y || t != z || t != n || t != o ||t!=r|| t!=p || t!=q||t!=m || t!=b || t!=d) && c % 2 == 0) {
                            a = Colors.orange;
                            Future.delayed(Duration(seconds: 1),() {
                              setState(() {
                                a=Colors.black;  result='TRY AGAIN';
                              });
                            });
                            c--;
                          }
                          else if ((t != x || t != y || t != z || t != n || t != o ||t!=r|| t!=p || t!=q||t!=m || t!=b || t!=d) && c % 2 == 1) {
                            a = Colors.orange; result='GOOD';
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
                          t = Colors.yellow;
                          if ((t == y || t == z || t == m || t == x || t == o ||t==r||t==a|| t==p || t==q ||t==n || t==d) && c % 2 == 0) {
                           b = Colors.yellow; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t == y || t == z || t == m || t == x || t == o ||t==r||t==a|| t==p || t==q ||t==n || t==d) && c % 2 == 1) {
                           b = Colors.yellow; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t != x || t != y || t != m || t != z || t != o ||t!=r||t!=n|| t!=p || t!=q ||t!=a|| t!=d) && c % 2 == 0) {
                            b=Colors.yellow;
                            Future.delayed(Duration(seconds: 1),() {
                              setState(() {
                             b=Colors.black;  result='TRY AGAIN';
                              });
                            });
                            c--;
                          }
                          else if ((t != x || t != y || t != m || t != z || t != o ||t!=r||t!=n|| t!=p || t!=q ||t!=a|| t!=d) && c % 2 == 1) {
                            b = Colors.yellow; result='GOOD';
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

                          t = Colors.purple;
                          if ((t == y || t == z || t == m || t == n || t == x ||t==r||t==a|| t==p || t==q ||t==n ||t==d||t==o) && c % 2 == 0) {
                            d= Colors.purple; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t == y || t == z || t == m || t == n || t == x ||t==r||t==a|| t==p || t==q ||t==n ||t==d||t==o) && c % 2 == 1) {
                            d = Colors.purple; result='GOOD';
                            t = Colors.white;
                          }
                          else if ((t != x || t != y || t != m || t != z || t != n ||t!=r|| t!=p || t!=q ||t!=a|| t!=b||t!=o) && c % 2 == 0) {
                            d=Colors.purple;
                            Future.delayed(Duration(seconds: 1),() {
                              setState(() {
                                d=Colors.black;  result='TRY AGAIN';
                              });
                            });
                            c--;
                          }
                          else if ((t != x || t != y || t != m || t != z || t != n ||t!=r|| t!=p || t!=q ||t!=a|| t!=b||t!=o) && c % 2 == 1) {
                            d = Colors.purple; result='GOOD';
                          }
                        }
                      });
                    }
                ),
              ),

            ],
          ),
          Container(

            height: 30,
            decoration:BoxDecoration(
              image:DecorationImage(
                image:NetworkImage('https://loremflickr.com/320/240/cars'),
              ),


            ),
          ),
    Container(

    height: 30,
    decoration:BoxDecoration(
    image:DecorationImage(
    image:NetworkImage('https://loremflickr.com/320/240/fruit'),
    ),


    ),
    ),    Container(

            height: 30,
            decoration:BoxDecoration(
              image:DecorationImage(
                image:NetworkImage('https://loremflickr.com/320/240/vegetables'),
              ),


            ),
          )

        ],

      )

    );
  }
}
