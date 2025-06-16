import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Cabeçalho do Menu (opcional)
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Drawer Header'),
          ),

          // Exemplo de item de menu para uma rota
          ListTile(
            // Ícone (opcional)
            leading: Icon(Icons.home, size: 40, color: Colors.blue[800]),

            // Título e subtítulo (opcional) do item
            title: const Text('Página inicial'),
            subtitle: const Text('Pararapãoduro'),

            // Ação ao clicar no item
            onTap: () => {
              // Fecha o menu
              Navigator.pop(context),

              // Acessa a rota especificada
              Navigator.pushNamed(context, '/'),
            },
          ),
          ListTile(
            leading: Icon(Icons.bug_report, size: 40, color: Colors.blue[800]),
            title: const Text('Página modelo'),
            subtitle: const Text('Pirambolação'),
            onTap: () => {
              Navigator.pop(context),
              Navigator.pushNamed(context, '/modelo'),
            },
          ),
          // Acesso a Cadastro
          ListTile(
            leading: Icon(
              Icons.text_decrease,
              size: 40,
              color: Colors.blue[800],
            ),
            title: const Text('Cadastro'),
            subtitle: const Text('Petequelizamento'),
            onTap: () => {
              Navigator.pop(context),
              Navigator.pushNamed(context, '/cadastro'),
            },
          ),
          ListTile(
            leading: Icon(Icons.edit, size: 40, color: Colors.blue[800]),
            title: const Text('Detalhes'),
            subtitle: const Text('Zuandinho'),
            onTap: () => {
              Navigator.pop(context),
              Navigator.pushNamed(context, '/detalhes'),
            },
          ),
          Divider(color: Colors.blue),
          ListTile(
            leading: Icon(Icons.chair, size: 40, color: Colors.blue[800]),
            title: const Text('Faça Contato'),
            subtitle: const Text('Falaaivoce'),
            onTap: () => {
              Navigator.pop(context),
              Navigator.pushNamed(context, '/contatos'),
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user, size: 40, color: Colors.blue[800]),
            title: const Text('Sobre'),
            subtitle: const Text('Sobrenildação'),
            onTap: () => {
              Navigator.pop(context),
              Navigator.pushNamed(context, '/sobre'),
            },
          ),
        ],
      ),
    );
  }
}
