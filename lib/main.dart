import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_application/list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.amber,
          onPressed: () {
            // manual create doc function
            // FirebaseFirestore.instance.collection('demo').doc('ankit').set(
            //   {
            //     'name': 'suraj',
            //     'email': 'kdjefhgkjdsf',
            //   },
            // );

            // automatic create doc function
            // FirebaseFirestore.instance.collection('demo').add(
            //   {
            //     'name': 'suraj',
            //     'email': 'kdjefhgkjdsf',
            //   },
            // );

            // delete doc function
            // FirebaseFirestore.instance
            //     .collection('demo')
            //     .doc('ankit')
            //     .delete();

            // update doc function
            // FirebaseFirestore.instance
            //     .collection('demo')
            //     .doc('Tbmb1iwFli05EoH7VaOM')
            //     .update(
            //   {
            //     'name': 'test@tesdt.com',
            //     'email': 'test@tessdfsdfedsdt.com',
            //     'gender': 'm',
            //   },
            // );
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReadClass(),
                ));
          },
          child: Text('Click me'),
        ),
      ),
    );
  }
}
