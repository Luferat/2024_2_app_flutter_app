import 'package:flutter/material.dart';

import '../template/my_appbar.dart';
import '../template/my_footer.dart';

// Página cadastro
class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Cadastro'),
      body: Center(child: Text('📖 Página de cadastro')),
      bottomNavigationBar: MyBottomNavBar(),
      // drawer: MyDrawer(),
    );
  }
}
