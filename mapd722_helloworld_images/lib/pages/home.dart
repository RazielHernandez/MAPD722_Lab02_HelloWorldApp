// home.dart
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}



// MAIN CONTAINER

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () { },
        ),

        title: Text('Home'),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                ImagesAndIconWidget(),
                Divider(),
                BoxDecoratorWidget(),
                Divider(),
                InputDecoratorsWidget(),
              ],
            ),
          ),
        ),
      ), 
    );
  }
}

class ImagesAndIconWidget extends StatelessWidget {
  /*const ImagesAndIconWidget({
    Key key,
  }) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        
        Image(
          image: AssetImage("assets/images/logo.png"),
          //color: Colors.orange,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width / 3,
        ),
        
        Image.network(
          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
          width: MediaQuery.of(context).size.width / 3,
        ),

        Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        ),
      ],
    );
  }
}

class BoxDecoratorWidget extends StatelessWidget {
  /*const BoxDecoratorWidget({
      Key key,
    }) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.orange,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            )
          ],
        ),
      ),
    );
  }
}

class InputDecoratorsWidget extends StatelessWidget {
  /*const InputDecoratorsWidget({
      Key key,
    }) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
          color: Colors.grey.shade800,
          fontSize: 16.0,
        ),
      decoration: InputDecoration( 
        labelText: "Notes",
        labelStyle: TextStyle(color: Colors.purple),
        //border: UnderlineInputBorder(),
        //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color.Colors.purple)),
        border: OutlineInputBorder(),
      ),
    ),
    Divider(
      color: Colors.lightGreen,
      height: 50.0,
    ),
    TextFormField(
      decoration: InputDecoration(labelText: 'Enter your notes'),
    ),
   ],
  );
 }
} 

