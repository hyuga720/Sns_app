import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sns_app/next_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> texts = [];

  @override
  void initState() {
    super.initState();
    _fetchFirebaseData();
  }

  Future _fetchFirebaseData() async {
    await FirebaseFirestore.instance
        .collection("posts")
        .orderBy('createdAt', descending: true)
        .get()
        .then((event) {
          setState(() {
            final docs = event.docs;
            texts = docs.map((doc) => doc.data()["text"].toString()).toList();
          });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: ListView(
          children: texts.map((text)=> Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: Row(
              children: [
                const Icon(
                    Icons.person,
                    size:48,
                ),
                Text(text, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              ],
            ),
          )).toList()
        ),
        ),
      floatingActionButton: FloatingActionButton(
         onPressed: () async {
            //画面遷移する
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const AddPage()),
               );
          },
          child: const Icon(Icons.add)
      ),
      );
  }
}
