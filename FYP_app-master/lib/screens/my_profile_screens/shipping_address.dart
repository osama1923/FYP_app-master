import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({Key? key}) : super(key: key);

  @override
  _ShippingAddressScreenState createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  late TextEditingController addressController;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late String currentAddress;

  @override
  void initState() {
    addressController = TextEditingController();
    currentAddress = '';
    super.initState();
  }

  @override
  void dispose() {
    addressController.dispose();
    super.dispose();
  }

  Future<void> _saveAddress() async {
    try {
      await _firestore.collection('addresses').add({
        'address': currentAddress,
        'timestamp': FieldValue.serverTimestamp(),
      });

      // You can add additional logic or show a confirmation message here

    } catch (e) {
      // Handle errors
      print('Error saving address: $e');
    }
  }

  Future<void> _fetchAddresses() async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firestore.collection('addresses').get();

      if (querySnapshot.docs.isNotEmpty) {
        // Retrieve addresses from Firestore
        List<String> addresses =
            querySnapshot.docs.map((doc) => doc['address'] as String).toList();

        // Handle the retrieved addresses as needed

      } else {
        // No addresses found
      }

    } catch (e) {
      // Handle errors
      print('Error fetching addresses: $e');
    }
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
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
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
                    onChanged: (value) {
                      currentAddress = value;
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    _saveAddress();
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
                  IconButton(
                    icon: Icon(Icons.add, size: 30),
                    onPressed: () {
                      _fetchAddresses();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


