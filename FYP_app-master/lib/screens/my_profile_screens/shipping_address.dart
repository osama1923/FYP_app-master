import 'package:flutter/material.dart';

class shippingaddress extends StatefulWidget {
  const shippingaddress({super.key});

  @override
  State<shippingaddress> createState() => _shippingaddressState();
}

class _shippingaddressState extends State<shippingaddress> {
    late TextEditingController addressController;
    @override
  void initState() {
    addressController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    addressController.dispose();
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'S H I P P I N G   A D D R E S S',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: addressController,
                    decoration: InputDecoration(labelText: 'Shipping Address'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    
                    String currentAddress = addressController.text;
                    
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                     Text(
                      'Add New Address',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  Icon(Icons.add,size: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
