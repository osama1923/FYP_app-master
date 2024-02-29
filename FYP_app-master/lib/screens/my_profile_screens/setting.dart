import 'package:flutter/material.dart';

class settingState extends StatefulWidget {
  const settingState({super.key});

  @override
  State<settingState> createState() => __settingStateState();
}

class __settingStateState extends State<settingState> {
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
                  'S E T T I N G',
                  style: TextStyle(fontSize: 20.0, ),
                ),
                SizedBox(width: 20,),
                
              ],
              
            ),
            
            SizedBox(height: 30.0),
            ListTile(
              title: Text('Order history',style: TextStyle(fontSize: 20.0, )),
              trailing: Icon(Icons.arrow_forward),
              
              
              
            ),
            Divider(),
            ListTile(
              title: Text('Open items',style: TextStyle(fontSize: 20.0, ) ),
              trailing: Icon(Icons.arrow_forward),
              
              
              
            ),
            Divider(),
            ListTile(
              title: Text('Shipments',style: TextStyle(fontSize: 20.0, )),
              trailing: Icon(Icons.arrow_forward),
              
              
              
            ),
             

          ],
        ),
      ),
    );
  }
}
