import 'package:flutter/material.dart';

class emailnotificationState extends StatefulWidget {
  const emailnotificationState({super.key});

  @override
  State<emailnotificationState> createState() => __emailnotificationStateState();
}
bool isSepecial = true;
bool isShopping = true;

class __emailnotificationStateState extends State<emailnotificationState> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'E M A I L',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20,),
                Text(
                  'N O T I F I C A T I O N',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            ListTile(
              title: Text('Special Announcements'),
              subtitle: Text('Sale alerts, exclusive news'),
              trailing: Switch(value: isSepecial, onChanged: (value){
                setState(() {
                  isSepecial = !isSepecial;
                });
              })),
              Divider(),
             SizedBox(height: 16.0),
             ListTile(
              title: Text('Special Announcements'),
              trailing: Switch(value: isShopping, onChanged: (value){
                setState(() {
                  isShopping = !isShopping;
                });
              })),
             SizedBox(height: 16.0),
             

          ],
        ),
      ),
    );
  }
}