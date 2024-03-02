import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Change Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PasswordScreen(),
    );
  }
}

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  late TextEditingController currentPasswordC, newPasswordC, confirmNewPasswordC;
  FirebaseBackend _firebaseBackend = FirebaseBackend();

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

  void _savePassword() async {
    String currentPassword = currentPasswordC.text;
    String newPassword = newPasswordC.text;
    String confirmNewPassword = confirmNewPasswordC.text;

    try {
      // Add your own validation logic if needed

      // Call the backend method to change the password
      await _firebaseBackend.changePassword(currentPassword, newPassword);

      // Password changed successfully
      // You can show a success message or navigate to another screen
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Password Changed'),
            content: Text('Your password has been successfully changed.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } catch (e) {
      // Handle errors
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text(e.toString()),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Change Demo'),
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
                _savePassword();
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

class FirebaseBackend {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> changePassword(String currentPassword, String newPassword) async {
    try {
      // Get the current user
      User? user = _auth.currentUser;

      // Reauthenticate the user with the current password
      AuthCredential credential = EmailAuthProvider.credential(
        email: user?.email ?? '',
        password: currentPassword,
      );
      await user?.reauthenticateWithCredential(credential);

      // Update the user's password
      await user?.updatePassword(newPassword);
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuth exceptions
      throw Exception(e.message);
    }
  }
}
