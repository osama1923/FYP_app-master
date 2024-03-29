import 'package:final_year_project/custom_widget/my_account_custom_buttons.dart';
import 'package:final_year_project/screens/my_profile_screens/email_notification.dart';
import 'package:final_year_project/screens/my_profile_screens/first_screen.dart';
import 'package:final_year_project/screens/my_profile_screens/password_screen.dart';
import 'package:final_year_project/screens/my_profile_screens/setting.dart';
import 'package:final_year_project/screens/my_profile_screens/shipping_address.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined)),
        ],
        centerTitle: true,
        title: const Text('HiFashion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            const Center(
              child: Text(
                'MY ACCOUNT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            SizedBox(
              height: 400,
              child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: [
                    MyAccountButton(
                      text: 'SETTING',
                      icon: Icons.settings,
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingStateScreen(),
                        ),
                      );
                        
                      },
                    ),
                    MyAccountButton(
                      text: 'PROFILE',
                      icon: Icons.person,
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => firstscreen(),
                        ),
                      );
                      },
                    ),
                    MyAccountButton(
                        text: 'PASSWORD', icon: Icons.lock, onTap: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PasswordScreen(),
                        ),
                      );
                        }),
                    MyAccountButton(
                      text: 'ORDER',
                      icon: Icons.shopping_bag,
                      onTap: () {},
                    ),
                    MyAccountButton(
                      text: 'ADDRESS',
                      icon: Icons.location_on_outlined,
                      onTap: () {
                        Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => ShippingAddressScreen(),
                        ),
                      );

                      },
                    ),
                    MyAccountButton(
                      text: 'EMAIL',
                      icon: Icons.email_outlined,
                      onTap: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => emailnotificationState(),
                        ),
                      );
                      },
                    ),
                  ]),
            ),
            const Divider(
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.twitter),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.instagram),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.youtube),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
            ),
            const Text('support@email.com'),
            const Text('+92-11111111'),
            const Text('8:00 - 12:00 EVERYDAY'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {}, child: const Text('ABOUT')),
                TextButton(onPressed: () {}, child: const Text('CONTACT')),
                TextButton(onPressed: () {}, child: const Text('BLOG')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
