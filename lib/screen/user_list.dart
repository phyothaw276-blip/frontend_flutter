import 'package:flutter/material.dart';
import 'package:intern_trainning/model/user_data.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

static const users=[
  User(
    name: 'Aung Aung', 
    email:'aungaung@example.com', 
    role: 'Admin',
  ),
  User(
    name: 'Zaw Zaw', 
    email: 'zawzaw@example.com', 
    role: 'Leader',
  ),
  User(
    name: 'Aye Aye',
     email: 'ayeaye@example.com',
      role: 'Member',
  )
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text('User List')),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];

          return Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(user.name),
              subtitle: Text(user.email),
              trailing: Text(user.role),
            ),
          );
        },
      ),
    );
  }
}