
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String re="0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Calculator",style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.lightBlue,
        child: Column(
          children: [
            Card(
              color: Colors.green,
              child:ListTile(
                title:Text(
                    re,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red,fontSize: 30),

                ),
              )



            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  color: Colors.black,
                  onPressed: (){
                setState(() {
                     re=re+"1";
                   });
                }
          ,     child: Text("1",style: TextStyle(color: Colors.white),),
                ),
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+"2";
                    });

                  }
                  , child: Text("2",style: TextStyle(color: Colors.white),),
                ),
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+"3";
                    });

                  }
                  , child: Text("3",style: TextStyle(color: Colors.white),),

                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+"4";
                    });

                  }
                  , child: Text("4",style: TextStyle(color: Colors.white),),

                ),
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+"5";
                    });

                  }
                  , child: Text("5",style: TextStyle(color: Colors.white),),

                ),
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+"6";
                    });

                  }
                  , child: Text("6",style: TextStyle(color: Colors.white),),

                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+"7";
                    });

                  }
                  , child: Text("7",style: TextStyle(color: Colors.white),),

                ),
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+"8";
                    });

                  }
                  , child: Text("8",style: TextStyle(color: Colors.white),),

                ),
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+"9";
                    });

                  }
                  , child: Text("9",style: TextStyle(color: Colors.white),),

                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+"0";
                    });

                  }
                  , child: Text("0",style: TextStyle(color: Colors.white),),

                ),
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+" + ";
                    });

                  }
                  , child: Text("+",style: TextStyle(color: Colors.white),),

                ),
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+" - ";
                    });

                  }
                  , child: Text("-",style: TextStyle(color: Colors.white),),

                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re=re+" * ";
                    });

                  }
                  , child: Text("*",style: TextStyle(color: Colors.white),),

                ),
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    var nums=re.split(" ");
                    int result=int.parse(nums[0]);
                    int j=0;
                    for(int i=1;i<nums.length;i=i+2){
                      if(nums[i]=="+"){
                        result=result+int.parse(nums[j=j+2]);
                      }
                      if(nums[i]=="-"){
                        result=result-int.parse(nums[j=j+2]);
                      }
                      if(nums[i]=="*"){
                        result=result*int.parse(nums[j=j+2]);
                      }
                    }
                    setState(() {
                      re=result.toString();
                    });

                  }
                  , child: Text("=",style: TextStyle(color: Colors.white),),

                ),
                FlatButton(
                  color: Colors.black,
                  onPressed:(){
                    setState(() {
                      re="";
                      //re=re.substring(0,(re.length-1));

                    });

                  }
                  , child: Text("del",style: TextStyle(color: Colors.white),),

                )
              ],
            ),
          ],

        ),
      )
    );
  }
}
