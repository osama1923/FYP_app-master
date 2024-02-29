import 'package:flutter/material.dart';

class passwordscreen extends StatefulWidget {
  const passwordscreen({super.key});

  @override
  State<passwordscreen> createState() => _passwordscreenState();
}

class _passwordscreenState extends State<passwordscreen> {
  late TextEditingController currentPasswordC, newPasswordC, confirmNewPasswordC;
  @override
  void initState() {
    currentPasswordC = TextEditingController();
    newPasswordC = TextEditingController();
    confirmNewPasswordC = TextEditingController();
    
    super.initState();
  }

  @override
  void dispose() {
    currentPasswordC.dispose();
    newPasswordC.dispose();
    confirmNewPasswordC.dispose();
   
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            children: const [],
          ),
        ),
      appBar: AppBar(

        centerTitle: true,
        title: Text('HIfashion'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              
            },
          ),
        ],
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'P A S S W O R D',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16.0),
           
            SizedBox(height: 16.0),
            TextField(
              controller: currentPasswordC,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Current Password'),
            ),
            TextField(
              controller: newPasswordC,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Enter New Password'),
            ),
            TextField(
              controller: confirmNewPasswordC,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Confirm New Password'),
            ),
            Spacer(),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle password save logic
                String currentPassword = currentPasswordC.text;
                String newPassword = newPasswordC.text;
                String confirmNewPassword = confirmNewPasswordC.text;

                // Add your logic to validate and save passwords
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10.0),
                backgroundColor: Colors.black,
              ),
              child: Text(
                'Save Password',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}