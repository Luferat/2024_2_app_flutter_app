import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // Cabeçalho do Menu (opcional)
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.fromLTRB(0, 0, 15, 0),
                        child: Icon(
                          Icons.account_circle,
                          size: 54,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          'Faça Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () => {
                          Navigator.pop(context),
                          Navigator.pushNamed(context, '/detalhes'),
                        },
                      ),
                      Spacer(),
                      InkWell(
                        child: Text(
                          'Cadastre-se',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () => {
                          Navigator.pop(context),
                          Navigator.pushNamed(context, '/detalhes'),
                        },
                      ),
                      Spacer(),
                    ],
                  ),
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
                Divider(),
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
                  leading: Icon(
                    Icons.verified_user,
                    size: 40,
                    color: Colors.blue[800],
                  ),
                  title: const Text('Sobre'),
                  subtitle: const Text('Sobrenildação'),
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.pushNamed(context, '/sobre'),
                  },
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
            child: Text(
              '© 2025 Joca da Silva.',
              // Seu texto de copyright
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
