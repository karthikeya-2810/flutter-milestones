import 'dart:convert';

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Users"),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final name = user['name']['first'];
            final email = user['email'];
            final imageurl = user['picture']['thumbnail'];

            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(imageurl),
              ),
              title: Text(name),
              subtitle: Text(email),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchusers,
        child: const Text("+"),
      ),
    );
  }

  void fetchusers() async {
    const url = 'https://randomuser.me/api/?results=2';
    print('fetch users');
    try {
      final uri = Uri.parse(url);
      final resposnse = await http.get(uri);
      final body = resposnse.body;
      final json = jsonDecode(body);
      jsonDecode(body);
      setState(() {
        users = json['results'];
      });
      print('fetching users done');
    } catch (e) {
      print('Error: $e');
    }
  }
}
