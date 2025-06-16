import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue, // Cor de fundo do BottomAppBar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // Distribui os itens uniformemente
        children: <Widget>[
          IconButton(
            // Cor do ícone
            color: Colors.white,
            // Ao passar mouse
            hoverColor: Colors.orange,
            // Ao pressionar
            highlightColor: Colors.black,
            // Ícone de casa
            icon: const Icon(Icons.home),
            // Tamanho do ícone
            iconSize: 30.0,
            // Ao para o moue, mostra o text
            tooltip: 'Página Inicial',
            // Navegar para a página inicial.
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          IconButton(
            icon: const Icon(Icons.bug_report),
            color: Colors.white,
            hoverColor: Colors.orange,
            highlightColor: Colors.black,
            iconSize: 30.0,
            onPressed: () {
              Navigator.pushNamed(context, '/modelo');
            }, // onPressed
            tooltip: 'Pesquisar',
          ),
          IconButton(
            icon: const Icon(Icons.info),
            color: Colors.white,
            hoverColor: Colors.orange,
            highlightColor: Colors.black,
            iconSize: 30.0,
            onPressed: () {
              Navigator.pushNamed(context, '/detalhes');
            }, // onPressed
            tooltip: 'Informações',
          ),
        ], // children
      ), // Row
    ); // BottomAppBar
  } // build
} // MyBottomNavBar
