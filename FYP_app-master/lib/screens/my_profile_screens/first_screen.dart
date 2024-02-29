import 'package:flutter/material.dart';


class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  late TextEditingController firstnameC, lastnameC, emailC, phoneC;
   @override
  void initState() {
    firstnameC = TextEditingController();
    lastnameC = TextEditingController();
    emailC = TextEditingController();
    phoneC = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    firstnameC.dispose();
    lastnameC.dispose();
    emailC.dispose();
    phoneC.dispose();
   
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
                // Handle search button press
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_bag_outlined),
              onPressed: () {
                // Handle shopping cart button press
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
                  'P R O F I L E',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  Text('Use your twitter account easily login'),
                ],
              ),
              SizedBox(height: 16.0),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  backgroundColor: Colors.white, 
                ),
                child: Text(
                  'CONNECT TO TWITTER',
                  style: TextStyle(color: Colors.black), 
                ),
                  
                ),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: CircleAvatar(),
                title: const Text('Open fashion'),
                trailing: Icon(Icons.more_vert),
              ),
              
              SizedBox(height: 16.0),
              TextField(
                controller: firstnameC,
                decoration: InputDecoration(labelText: 'First Name'),
              ),
              TextField(
                controller: lastnameC,
                decoration: InputDecoration(labelText: 'Last Name'),
              ),
              TextField(
                controller: emailC,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: phoneC,
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
              Spacer(),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  backgroundColor: Colors.black, 
                ),
               child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white), 
                ),
                
              ),
            ],
          ),
        ),
      );
  }
}
  
