import 'package:flutter/material.dart';

import '../template/my_appbar.dart';
import '../template/my_drawer.dart';
import '../template/my_footer.dart';

// Página detalhes
class Detalhes extends StatelessWidget {
  const Detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Detalhes'),
      body: Center(child: Text('🧶 Página detalhes')),
      bottomNavigationBar: MyBottomNavBar(),
      drawer: MyDrawer(),
    );
  }
}
