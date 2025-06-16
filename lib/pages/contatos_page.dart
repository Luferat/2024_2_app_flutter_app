import 'package:flutter/material.dart';

import '../template/my_appbar.dart';
import '../template/my_drawer.dart';
import '../template/my_footer.dart';

// Página modelo inicial para todas as outras
class Contatos extends StatelessWidget {
  const Contatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Faça Contato'),
      drawer: MyDrawer(),
      body: Center(child: Text('📜 Faça Contata')),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}