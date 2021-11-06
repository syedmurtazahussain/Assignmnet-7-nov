import 'package:flutter/material.dart';

class Murtaza extends StatefulWidget {
  const Murtaza({Key? key}) : super(key: key);

  @override
  _MurtazaState createState() => _MurtazaState();
}

class _MurtazaState extends State<Murtaza> {
  void floatingAcBtn() {
    showDialog(
      context: context,
      builder: (context) {
        //var textField = TextField(
        //onChanged: (value),
        // );
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          title: Text("Add"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      myassignment("assignmnet");
                      print("working");
                    },
                    child: Text("Add"),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget myassignment(String assignmnet) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(
            "$assignmnet",
          ),
          onLongPress: () {},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: floatingAcBtn,
        child: Icon(
          Icons.add,
          color: Colors.yellow,
        ),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        title: Text("My Todo Assignment"),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          myassignment("assignmnet"),
          myassignment("insert task \n hello World"),
          myassignment("hello how rae your"),
          myassignment("Hi Hi Hi"),
          myassignment("xyz"),
          myassignment("byee"),
        ]),
      ),
    );
  }
}
