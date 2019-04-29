import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future'),
        backgroundColor: Color.fromRGBO(58, 58, 58, 1),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('offers').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();
        // List<Offer> list = new List<Offer>();
        // for(var value in snapshot.data.documents) {
        //     // list.add(new Offer.fromJson(value));
        // }
        return _buildList(context, snapshot.data.documents);        
      },
    );
  }
  

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);
    return Padding(
      key: ValueKey(record.id),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      child: Container(
        child: ListTile(
          title: Text(record.name),
          trailing: Text(record.description.toString()),
        ),
      ),
    );
  }
}

class Record {
  final int id;
  final String name;
  final String salary;
  final String description;
  final String location;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference}): 
    id = map['id'],
    name = map['name'],
    salary = map['salary'],
    location = map['location'],
    description = map['description'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data, reference: snapshot.reference);
}
