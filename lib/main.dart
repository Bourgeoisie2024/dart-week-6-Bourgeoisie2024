import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telemedicine App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Telemedicine App'), // Title Bar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Styled Container for Welcome Message
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Welcome to Telemedicine App!',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20.0), // Space between widgets
              // Interactive Button
              ElevatedButton(
                onPressed: () {
                  print('Button Clicked!'); // Print message to console
                },
                child: Text('Click Me'),
              ),
              SizedBox(height: 20.0), // Space between widgets
              // Image Widget
              Image.network(
                'https://plus.unsplash.com/premium_vector-1732109245293-a67e48a7ca5a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dGVsZW1lZGljaW5lfGVufDB8fDB8fHww', // Replace with your image URL
                height: 200.0,
                width: 350.0,
              ),
              SizedBox(height: 20.0), // Space between widgets
              // Login Layout
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    // Username TextField
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10.0), // Space between widgets
                    // Password TextField
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 10.0), // Space between widgets
                    // Login and Registration Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            // Handle login
                          },
                          child: Text('Login'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Handle registration
                          },
                          child: Text('Register'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
