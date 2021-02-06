import 'dart:io';

/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';

import 'ProfilePage.dart';
import 'orders_provider_page.dart';



// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(Home_Page());
// }



/// This is the stateful widget that the main application instantiates.
class ProviderHome extends StatefulWidget {
  ProviderHome({Key key}) : super(key: key);

  @override
  _ProviderHomeState createState() => _ProviderHomeState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ProviderHomeState extends State<ProviderHome> {
  int _selectedIndex = 0;
  // static SharedPreferences prefs;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    ProviderOrdersPage(),
    Text('Chat'),
    ProfilePage()
  ];





  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Future<bool> onBackPress() {
    return Future.value(false);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
