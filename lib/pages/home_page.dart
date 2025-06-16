import 'package:flutter/material.dart';

import '../template/my_appbar.dart';
import '../template/my_drawer.dart';
import '../template/my_footer.dart';

// Página inicial
// Use a estrutura abaixo como base para criar outras páginas/rotas no
// aplicativo.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior → <header>
      appBar: MyAppBar(),

      // Conteúdo da página → <main>, <div>, <p>...
      body: const Center(child: const Text('🟢 Página inicial')),

      // Menu lateral → <nav>
      drawer: MyDrawer(),

      // Rodapé usando a classe que personaliza o rodapé
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}