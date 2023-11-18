import 'package:dukan_web_admin/views/screens/sidebar_screens/category_screen.dart';
import 'package:dukan_web_admin/views/screens/sidebar_screens/dashboard_screen.dart';
import 'package:dukan_web_admin/views/screens/sidebar_screens/orders_screen.dart';
import 'package:dukan_web_admin/views/screens/sidebar_screens/products_screen.dart';
import 'package:dukan_web_admin/views/screens/sidebar_screens/upload_banner_screen.dart';
import 'package:dukan_web_admin/views/screens/sidebar_screens/vendors_screen.dart';
import 'package:dukan_web_admin/views/screens/sidebar_screens/withdraw_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedItem = const DashboardScreen();

  screenSelector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedItem = const DashboardScreen();
        });

        break;

      case VendorsScreen.routeName:
        setState(() {
          _selectedItem = const VendorsScreen();
        });

        break;

      case WithdrawalScreen.routeName:
        setState(() {
          _selectedItem = const WithdrawalScreen();
        });

        break;

      case OrderScreen.routeName:
        setState(() {
          _selectedItem = const OrderScreen();
        });

        break;
      case CategoriesScreen.routeName:
        setState(() {
          _selectedItem = CategoriesScreen();
        });

        break;
      case ProductScreen.routeName:
        setState(() {
          _selectedItem = const ProductScreen();
        });

        break;

      case UploadBanner.routeName:
        setState(() {
          _selectedItem = UploadBanner();
        });

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            icon: Icons.dashboard,
            route: DashboardScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Vendors',
            icon: CupertinoIcons.person_3,
            route: VendorsScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Withdrawal',
            icon: CupertinoIcons.money_dollar,
            route: WithdrawalScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Orders',
            icon: CupertinoIcons.shopping_cart,
            route: OrderScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Categories',
            icon: Icons.category,
            route: CategoriesScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Products',
            icon: Icons.shop,
            route: ProductScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Upload Banners',
            icon: CupertinoIcons.add,
            route: UploadBanner.routeName,
          ),
        ],
        selectedRoute: '',
        onSelected: (item) {
          screenSelector(item);
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'Dukan Admin Panel',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'Management',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _selectedItem,
    );
  }
}
