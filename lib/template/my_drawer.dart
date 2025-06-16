import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  // A lista de itens do menu deve ser final em um StatelessWidget
  // para garantir que ela não mude após a inicialização.
  final List<Map<String, dynamic>> menuItems = const [
    // Usar `const` para otimização se o conteúdo for constante
    {
      'icon': Icons.home, // Exemplo de outro ícone
      'title': 'Página Inicial',
      'subtitle': 'Voltar ao início',
      'route': '/', // Exemplo de rota para a página inicial
    },
    {
      'icon': Icons.bug_report,
      'title': 'Cadastro',
      'subtitle': 'Pararapãoduro 1',
      'route': '/cadastro',
    },
    {
      'icon': Icons.settings, // Exemplo de outro ícone
      'title': 'Detalhes',
      'subtitle': 'Zuandinho',
      'route': '/detalhes', // Exemplo de rota para configurações
    },
    {
      'icon': Icons.chair,
      'title': 'Faça Contato',
      'subtitle': 'Falaaivoce',
      'route': '/contatos'
    },
    {
      'icon': Icons.info, // Exemplo de outro ícone
      'title': 'Sobre',
      'subtitle': 'Informações do aplicativo',
      'route': '/about', // Exemplo de rota para "Sobre"
    },
  ];

  // Construtor deve ser const se todas as propriedades finais forem inicializadas com const.
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        // Remove o padding padrão do ListView que pode causar um espaço no topo
        children: [
          // Cabeçalho do Menu (opcional)
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menu Principal', // Título do cabeçalho
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),

          // Usando o operador spread (...) e .map para gerar os ListTile a partir da lista
          ...menuItems.map((item) {
            return _menuItem(
              // Chamando o método privado para cada item
              context,
              item['icon'] as IconData, // Fazer cast explícito para IconData
              item['title'] as String, // Fazer cast explícito para String
              item['subtitle'] as String, // Fazer cast explícito para String
              item['route'] as String, // Fazer cast explícito para String
            );
          }),
        ],
      ),
    );
  }

  // Método privado para construir um ListTile de menu.
  // Colocamos um underscore '_' no início para indicar que é um método privado da classe.
  ListTile _menuItem(
    BuildContext context,
    IconData itemIcon,
    String title,
    String subtitle,
    String toRoute,
  ) {
    return ListTile(
      leading: Icon(itemIcon, size: 40, color: Colors.blue[800]),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {
        Navigator.pop(context); // Fecha o drawer
        Navigator.pushNamed(
          context,
          toRoute,
        ); // Navega para a rota especificada
      },
    );
  }
}
