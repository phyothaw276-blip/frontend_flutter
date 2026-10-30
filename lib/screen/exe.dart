import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}



class _MyAppState extends State<MyApp> {

String message = "Welcome To Intern Blog";
void changeMessage(){
    setState((){
       message = "Welcome to Flutter Blog";
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'Intern Blog',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          
            ),

      ),
      
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(8),
          decoration:BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(30)
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Icon(Icons.person),
              const SizedBox(width: 10),
              Text( 'Aung Aung',
              style: const TextStyle(fontSize: 24)),
              const SizedBox(width: 20),
              Text('Admin')],),
          
              SizedBox(height: 20),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Icon(Icons.person),
              const SizedBox(width: 10),
              Text( 'Zaw Zaw',
              style: const TextStyle(fontSize: 24)),
              const SizedBox(width: 20),
              Text('Leader')],),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Icon(Icons.person),
              const SizedBox(width: 10),
              Text( 'Aye Aye',
              style: const TextStyle(fontSize: 24)),
              const SizedBox(width: 20),
              Text('Member')],),
          
          
              SizedBox(height: 30),
          
          ElevatedButton(
                  onPressed: changeMessage,
                  child: const Text(
                  'Click Me', 
                  style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,),
                  ),
                ),
            ],
          ),
        ),
        
      
      ),
    );
  }
}
