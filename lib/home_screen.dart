import 'package:flutter/material.dart';
import 'package:note_app/add_screen.dart';
import 'package:note_app/note.dart';
import 'noteoperation.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>AddScreen()));
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.black54,

        ),
      ),
      appBar: AppBar(
        title: Text('NOTES'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,

      ),
      body: Consumer<Noteoperation>(
        builder: (context,Noteoperation data,child) {
          return ListView.builder(

              itemCount: data.getNotes.length,
              itemBuilder: (context, index) {
                return NotesCard(data.getNotes[index]);

              }
          );
        },

    ),


    );
  }
}

class NotesCard extends StatefulWidget {
  final Note note;
  NotesCard(this.note);

  @override
  State<NotesCard> createState() => _NotesCardState();
}

class _NotesCardState extends State<NotesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(widget.note.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,

          ),),

          SizedBox(height: 15.0),
          Text(widget.note.description,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
          SizedBox(height: 77.0),





        ],
      ),

    );
  }
}
