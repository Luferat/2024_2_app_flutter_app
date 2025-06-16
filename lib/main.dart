import 'package:flutter/material.dart';

// Importa as classes da estrutura da página
import 'pages/_modelo_page.dart';
import 'pages/cadastro_page.dart';
import 'pages/detalhes_page.dart';
import 'pages/home_page.dart';
import 'pages/contatos_page.dart';
import 'pages/sobre_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      // Rota inicial da aplicação
      initialRoute: '/',

      // Mapa de rotas da aplicação
      // Para acessar uma rota na Web → /#/test
      routes: {
        '/': (context) => const HomePage(),
        '/modelo': (context) => const Modelo(),
        '/cadastro': (context) => const Cadastro(),
        '/detalhes': (context) => const Detalhes(),
        '/contatos': (context) => const Contatos(),
        '/sobre': (context) => const Sobre(),
      },
    );
  }
}