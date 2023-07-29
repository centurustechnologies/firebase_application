import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReadClass extends StatefulWidget {
  const ReadClass({super.key});

  @override
  State<ReadClass> createState() => _ReadClassState();
}

class _ReadClassState extends State<ReadClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('demo').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot documentSnapshot =
                      snapshot.data!.docs[index];
                  return Padding(
                    padding: EdgeInsets.all(30),
                    child: Text(documentSnapshot['name'].toString()),
                  );
                },
              );
            }
            return Container();
          }),
    );
  }
}
