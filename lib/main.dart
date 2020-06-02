import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[850],
      appBar: AppBar(
        title: Text('NINJA ID'),
        backgroundColor: Colors.grey[800],
        elevation: 0.0,//removes the effect of making the appbar a block instead flattens the appbar
        centerTitle: true,
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            child: FloatingActionButton(
              onPressed: (){
                setState(() {
                  level+=1;
                });
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.grey[800],
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: (){
                setState(() {
                  level-=1;
                });
              },
              child: Icon(Icons.maximize),
              backgroundColor: Colors.grey[800],
            ),
          ),
        ],
      ),
      body: Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,//to allign everything to the ..like to make dem start on the same line
          children: <Widget>[
            Center(//this centralizes the display pics
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja1.png'),//dis does something like profile picture like in whatsapp
                radius: 40.0,//to increase the radius
              ),
            ),
            SizedBox(height: 10.0),
            Text(
                'NAME',
            style:TextStyle(
              letterSpacing: 2.0,
                  color:Colors.grey,
            ),
            ),
            SizedBox(height: 10.0),//to add space between lines in column to avoid using padding all the time
            Text(
              'CHUN-LI',
              style:TextStyle(
                letterSpacing: 2.0,
                color:Colors.amberAccent[200],
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'CURRENT NINJA LEVEL',
              style:TextStyle(
                letterSpacing: 2.0,
                color:Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),//to add space between lines in column to avoid using padding all the time
            Text(
              '$level',
              style:TextStyle(
                letterSpacing: 2.0,
                color:Colors.amberAccent[200],
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                    'timmybanjo@gmail.com',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                ),)

              ],
            )
          ],
        ),
      ),

    );
  }
}
