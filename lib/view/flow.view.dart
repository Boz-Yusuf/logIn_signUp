import 'package:flutter/material.dart';
import 'package:login_signup/utils/global.colors.dart';
import 'package:login_signup/view/advert.view.dart';
import 'package:login_signup/view/createPost.view.dart';
import 'package:login_signup/view/home.view.dart';
import 'package:login_signup/view/profil.view.dart';
import 'package:login_signup/view/shop.view.dart';



class FlowView extends StatefulWidget {
  const FlowView({super.key});

  @override
  State<FlowView> createState() => _FlowViewState();
}

class _FlowViewState extends State<FlowView> {
  int _selectedIndex = 0;

  void _navigationBottomNavBar(index){
    setState(() {
      _selectedIndex = index;
    });
  }


  final List<Widget> _children = [
    const HomePage(),  
    const JobPage(),
    const CreatePost(),
    const ShoppingPage(),
    const ProfilPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(  
        currentIndex: _selectedIndex,  
        onTap: _navigationBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Flow'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Job'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          ],
        ),
    );
  }
}



