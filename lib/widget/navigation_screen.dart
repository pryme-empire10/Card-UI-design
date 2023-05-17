import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/cart_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/tracker_screen.dart';
import '../screens/wallet_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const TrackerScreen(),
    const WalletScreen(),
    const ProfileScreen(),
    const CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.art_track),
            label: 'Tracker',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.payment_outlined),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          switch (index) {
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
              break;
            // case 1:
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => const WalletScreen()),
            //   );
            //   break;
            // case 2:
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => const ProfileScreen()),
            //   );
            //   break;
          }
        },
      ),
    );
  }
}
