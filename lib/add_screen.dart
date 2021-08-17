import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'noteoperation.dart';
import 'home_screen.dart';
class AddScreen extends StatefulWidget {

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  var  titleText;
  var  descriptionText;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('NOTES'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,

      ),
      body:Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Title',
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

              ),

            ),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              onChanged: (value){
                titleText=value;
              },
            ),
            SizedBox(height: 100.0),
            Expanded(child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Description',
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),

              ),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              onChanged: (value){
                descriptionText=value;
              },

            ),
            ),
            ElevatedButton(
                onPressed:(){
                  Provider.of<Noteoperation>(context,listen:false).addnewnote(titleText.toString(),descriptionText.toString());
                  Navigator.pop(context);
            },
              child: Text("Add Note",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),


            )
          ],
        ),
      )
    );
  }
}
