import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;
import 'dart:async';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 Tracker',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Cover(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/countries': (context) => Countries(),
      },
    );
  }
}




class Cover extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onTap: () {
                  Navigator.pushNamed(context,"/countries");
                },
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

    );
      }
}



class Countries extends StatefulWidget
{
  @override
  CountriesState createState() =>new CountriesState();
}

class CountriesState extends State<Countries>{

  final String url="https://api.covid19api.com/summary";
  List data;
  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async{
    var response=await http.get(
      Uri.encodeFull(url),
      headers:{"Accept":"application/json"}
    );


setState(() {
  var convertDataToJson=JSON.jsonDecode(response.body);
data=convertDataToJson["Countries"];
print(data);
//print(data[0]["CountryCode"]);
});
  }


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
          new ListView.builder(
              itemCount: data.length,
              itemBuilder:(BuildContext buildContext,int index)
              {
           return      Column(
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
                           Text(""+data[index]["Country"].toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)  ,
                          Center(
                             child:Image.network("https://www.countryflags.io/"+data[index]["CountryCode"]+"/flat/64.png",height: 30,width: 70,fit: BoxFit.fitWidth,),
                           ),
                         ],
                       ),
                       Column(
                         children: <Widget>[
                           Text("CONFIRMED: "+data[index]["TotalConfirmed"].toString(),style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15,),),
                           Text("ACTIVE: "+(data[index]["TotalConfirmed"]-data[index]["TotalRecovered"]).toString(),style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15,),),
                           Text("RECOVERED: "+data[index]["TotalRecovered"].toString(),style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 15,),),
                           Text("DEATHS: "+data[index]["TotalDeaths"].toString(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),
                           Text("+ "+ data[index]["NewConfirmed"].toString()+" cases today",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15,),),
                           Text("+ "+ data[index]["NewDeaths"].toString()+" deaths today",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),

                         ],
                       )

                     ],
                   ),
                 ),
               ),
             ],
           );
              },

          ),




      ),
    ) ;

  }

}