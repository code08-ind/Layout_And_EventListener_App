import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// var to store
// onChanged callback
  String name = "";
  String nameText = "No Name Entered";
  String rollno = "";
  String rollnoText = "No Roll No. Entered";
  String stream = "";
  String streamText = "No Stream Entered";

  void _setText() {
    setState(() {
      name = nameText;
      rollno = rollnoText;
      stream = streamText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Layout And Event Listener App'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Enter Name'),
                  onChanged: (value) => nameText = value,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Enter Roll No.'),
                  onChanged: (value) => rollnoText = value,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Enter Stream'),
                  onChanged: (value) => streamText = value,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          RaisedButton(
            onPressed: _setText,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text(
              'Submit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            color: Colors.blue,
            elevation: 8,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Name Is : " + name,
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Roll No. Is : " + rollno,
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Stream Is : " + stream,
            style: TextStyle(fontSize: 20.0),
          ),
          // changes in text
          // are shown here
        ],
      ),
    );
  }
}
