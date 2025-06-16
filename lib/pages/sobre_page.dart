import 'package:flutter/material.dart';

import '../template/my_appbar.dart';
import '../template/my_drawer.dart';
import '../template/my_footer.dart';

// Página modelo inicial para todas as outras
class Sobre extends StatelessWidget {
  const Sobre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Sobre'),
      drawer: MyDrawer(),
      body: Center(child: Text('💰 Sobre')),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}