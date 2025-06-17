import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // A lista de itens do menu deve ser final em um StatelessWidget
  // para garantir que ela não mude após a inicialização.
  final List<Map<String, dynamic>> menuItems = const [
    {
      'icon': Icons.ac_unit_outlined,
      'title': 'Título da coisa 1',
      'subtitle': 'Pararapãoduro 1',
      'route': '/contatos'
    },
    {
      'icon': Icons.home,
      'title': 'Página Inicial',
      'subtitle': 'Voltar ao início',
      'route': '/'
    },
    {
      'icon': Icons.settings,
      'title': 'Configurações',
      'subtitle': 'Ajustes do aplicativo',
      'route': '/settings'
    },
    {
      'icon': Icons.info,
      'title': 'Sobre',
      'subtitle': 'Informações do aplicativo',
      'route': '/about'
    },
  ];

  // Construtor deve ser const se todas as propriedades finais forem inicializadas com const.
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Usamos uma Column para empilhar o conteúdo principal e o copyright na parte inferior
      child: Column(
        children: [
          // A Section que contém o DrawerHeader e os Itens do Menu
          Expanded( // Expanded faz com que o ListView ocupe todo o espaço disponível
            child: ListView(
              padding: EdgeInsets.zero, // Remove o padding padrão do ListView
              children: [
                // Cabeçalho do Menu (opcional)
                const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text(
                    'Menu Principal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                // Usando o operador spread (...) e .map para gerar os ListTile a partir da lista
                ...menuItems.map((item) {
                  return _menuItem(
                    context,
                    item['icon'] as IconData,
                    item['title'] as String,
                    item['subtitle'] as String,
                    item['route'] as String,
                  );
                }).toList(),
              ],
            ),
          ),
          // --- Início do Conteúdo do Copyright ---
          // Um divisor visual (opcional)
          const Divider(),
          // O texto de copyright
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0, top: 8.0), // Padding para espaçamento
            child: Text(
              '© 2025 Joca da Silva.', // Seu texto de copyright
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // --- Fim do Conteúdo do Copyright ---
        ],
      ),
    );
  }

  // Método privado para construir um ListTile de menu.
  // Colocamos um underscore '_' no início para indicar que é um método privado da classe.
  ListTile _menuItem(BuildContext context, IconData itemIcon, String title,
      String subtitle, String toRoute) {
    return ListTile(
      leading: Icon(itemIcon, size: 40, color: Colors.blue[800]),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, toRoute);
      },
    );
  }
}
