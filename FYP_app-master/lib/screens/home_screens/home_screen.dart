
import 'package:final_year_project/custom_tabs/home_screen_tabs/home_page_tab_all.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {

            }, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined)),
          ],
          centerTitle: true,
          title: const Text('HiFashion'),
          bottom: const TabBar(
              labelColor: Colors.black,

              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Appeal'),
                Tab(text: 'T-shart'),
                Tab(text: 'T-shart'),

              ]),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [],
          ),
        ),
        body:   const TabBarView(
          children: [

          HomePageTabAll(),

            Text('hi'),
            Text('hi'),
            Text('hi'),


          ],
        ),
      ),
    );
  }
}
