import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Countries());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 Tracker',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Covid-19 tracker'),
        ),
        drawer:

        Drawer(

          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(

                accountEmail: new Text("sdb@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Text('SB'),
                ),
                accountName: new Text("Simran Bhavsar"),
                decoration: new BoxDecoration(color: Colors.black),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Text('AB'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Text('DB'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Text('NB'),
                  )
                ],
              ),
              ListTile(
                trailing: Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 25,
                      width: 100,
                      child: Center(
                        child:new Text("Covid 19 Tracker",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),),
                      ),
                      decoration: new BoxDecoration(
                          color: Colors.black,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                            bottomLeft: const Radius.circular(40.0),
                            bottomRight:const Radius.circular(40.0),
                          )
                      ),
                    );
                  },
                ),
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(Icons.home),
                    );
                  },
                ),
                title: Text('Home'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                trailing: Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 25,
                      width: 70,
                      child: Center(
                        child:new Text("Countries",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),),
                      ),
                      decoration: new BoxDecoration(
                          color: Colors.black,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                            bottomLeft: const Radius.circular(40.0),
                            bottomRight:const Radius.circular(40.0),
                          )
                      ),
                    );
                  },
                ),
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(Icons.show_chart),
                    );
                  },
                ),
                title: Text('Status'),
                onTap: ()  {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Countries()));

                },
              ),

            ],
          ),

        )
        ,
        body:


        SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.orangeAccent,
                width: 500,
                height: 90,
                child:Center(
                  child: new Text("COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019. COVID-19 is now a pandemic affecting many countries globally.",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Text("WorldWide",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Container(
              height: 35,
            width: 100,
            child: Center(
            child:new Text("Regional",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
            ),

    decoration: new BoxDecoration(
    color: Colors.black,
    borderRadius: new BorderRadius.only(
    topLeft: const Radius.circular(40.0),
    topRight: const Radius.circular(40.0),
    bottomLeft: const Radius.circular(40.0),
    bottomRight:const Radius.circular(40.0),
    )
    ),
    ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),

                    height: 100,
                    width: 190,
                    child: Center(
                      child:new Text("CONFIRMED 8766741",textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),

                    decoration: new BoxDecoration(
                        color: Colors.red.withOpacity(0.3),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(25.0),
                          topRight: const Radius.circular(25.0),
                          bottomLeft: const Radius.circular(25.0),
                          bottomRight:const Radius.circular(25.0),
                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),

                    height: 100,
                    width: 190,
                    child: Center(
                      child:new Text("ACTIVE 3675533",textAlign: TextAlign.center,style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),

                    decoration: new BoxDecoration(
                        color: Colors.blue.withOpacity(0.3),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(25.0),
                          topRight: const Radius.circular(25.0),
                          bottomLeft: const Radius.circular(25.0),
                          bottomRight:const Radius.circular(25.0),
                        )
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 190,
                    child: Center(
                      child:new Text("RECOVERED 4628502",textAlign: TextAlign.center,style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),

                    decoration: new BoxDecoration(
                        color: Colors.green.withOpacity(0.3),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(25.0),
                          topRight: const Radius.circular(25.0),
                          bottomLeft: const Radius.circular(25.0),
                          bottomRight:const Radius.circular(25.0),
                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),

                    height: 100,
                    width: 190,
                    child: Center(
                      child:new Text("DEATHS 462706",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),

                    decoration: new BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(25.0),
                          topRight: const Radius.circular(25.0),
                          bottomLeft: const Radius.circular(25.0),
                          bottomRight:const Radius.circular(25.0),
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Most Affected Countries",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: <Widget>[
                  Image.asset("assets/images/usa.jpg",height: 35,width: 60,    fit: BoxFit.fitWidth),
                  Text("  USA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("  Deaths: 121407",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)
                ],
              ),
              Row(
                children: <Widget>[
                  Image.asset("assets/images/brazil.png",height: 35,width: 60,    fit: BoxFit.fitWidth),
                  Text("  Brazil",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("  Deaths: 49090",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)
                ],
              ),
              Row(
                children: <Widget>[
                  Image.asset("assets/images/UK.png",height: 35,width: 60,    fit: BoxFit.fitWidth),
                  Text("  UK",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("  Deaths: 42461",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)
                ],
              ),
              Row(
                children: <Widget>[
                  Image.asset("assets/images/italy.png",height: 35,width: 60,    fit: BoxFit.fitWidth),
                  Text("  Italy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("  Deaths: 34561",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)
                ],
              ),

            ],

          ),
        )

      ),
    );
  }
}


class Countries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  title: "dddd",
  home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text('Countries'),
    ),
    drawer:

    Drawer(

      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(

            accountEmail: new Text("sdb@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
              child: Text('SB'),
            ),
            accountName: new Text("Simran Bhavsar"),
            decoration: new BoxDecoration(color: Colors.black),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: Text('AB'),
              ),
              CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: Text('DB'),
              ),
              CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: Text('NB'),
              )
            ],
          ),
          ListTile(
            trailing: Builder(
              builder: (BuildContext context) {
                return Container(
                  height: 25,
                  width: 100,
                  child: Center(
                    child:new Text("Covid 19 Tracker",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),),
                  ),
                  decoration: new BoxDecoration(
                      color: Colors.black,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight:const Radius.circular(40.0),
                      )
                  ),
                );
              },
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.home),
                );
              },
            ),
            title: Text('Home'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            trailing: Builder(
              builder: (BuildContext context) {
                return Container(
                  height: 25,
                  width: 70,
                  child: Center(
                    child:new Text("Countries",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),),
                  ),
                  decoration: new BoxDecoration(
                      color: Colors.black,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight:const Radius.circular(40.0),
                      )
                  ),
                );
              },
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.show_chart),
                );
              },
            ),
            title: Text('Status'),
            onTap: ()  {
              Navigator.push(
                  context, new MaterialPageRoute(
                  builder: (context) => new Countries()));
            },
          ),

        ],
      ),

    ),
    body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("USA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)  ,
                        Center(
                          child:Image.asset("assets/images/usa.jpg",height: 30,width: 70,fit: BoxFit.fitWidth,),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("CONFIRMED: 2315678",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("ACTIVE: 1235711",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("RECOVERED: 958234",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("DEATHS: 121733",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("+ 18488 cases today",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("+ 326 deaths today",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),

                      ],
                    )

                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Brazil",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)  ,
                        Center(
                          child:Image.asset("assets/images/brazil.png",height: 30,width: 70,fit: BoxFit.fitWidth,),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("CONFIRMED: 1043168",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("ACTIVE: 450826",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("RECOVERED: 543186",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("DEATHS: 49156",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("+ 4600 cases today",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("+ 66 deaths today",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),

                      ],
                    )

                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("UK",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)  ,
                        Center(
                          child:Image.asset("assets/images/UK.png",height: 30,width: 70,fit: BoxFit.fitWidth,),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("CONFIRMED: 303110",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("ACTIVE: 260521",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("RECOVERED: 0",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("DEATHS: 42589",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("+ 1295 cases today",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("+ 128 deaths today",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),

                      ],
                    )

                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Italy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)  ,
                        Center(
                          child:Image.asset("assets/images/italy.png",height: 30,width: 70,fit: BoxFit.fitWidth,),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("CONFIRMED: 238275",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("ACTIVE: 21212",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("RECOVERED: 182453",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("DEATHS: 34610",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("+ 264 cases today",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text("+ 49 deaths today",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),

                      ],
                    )

                  ],
                ),
              ),
            ),
          ],
        )



  ),
) ;
  }
}



