import 'package:flutter/material.dart';

import '../template/my_appbar.dart';
import '../template/my_drawer.dart';
import '../template/my_footer.dart';

// Página modelo inicial para todas as outras
class Modelo extends StatelessWidget {
  const Modelo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Página Modelo'),
      drawer: MyDrawer(),
      body: Center(child: Text('💛 Página modelo')),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}