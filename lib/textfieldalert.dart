import 'package:flutter/material.dart';
class textfieldalert extends StatelessWidget {
  TextEditingController textfield = new TextEditingController();
  void textalert(BuildContext context) {
    Widget submit = TextButton(onPressed: (){

      Navigator.of(context).pop();
    }, child: Text("Submit"));
    var textalert = AlertDialog(
      title: Text('Text field alert dialog'),
      content: TextField(
        controller: textfield,
        decoration: InputDecoration(
          hintText: "Write Your text here"
        ),
      ),
      actions: [
        submit
      ],
    );
    showDialog(context: context, builder: (BuildContext context){
      return textalert;
    });


  }


  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      textalert(context);
    }, child: Text("Textfield alert",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),

    style: TextButton.styleFrom(
    padding: EdgeInsets.all(10),
    backgroundColor: Colors.purple,
    primary: Colors.white,
    minimumSize: Size(200, 50),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    )),);
  }
}

