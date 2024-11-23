import 'package:flutter/material.dart';
import '../widgets/dashboard_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> areasDeAcesso = [
      {
        'icon': Icons.folder_open,
        'title': 'User Stories',
        'description': 'Analise de User Stories',
      },
      {
        'icon': Icons.attach_money,
        'title': 'Analise de Cenarios de teste',
        'description': 'Gerencie itens de negócio de Empréstimo Pessoal.'
      },
      {
        'icon': Icons.home,
        'title': 'Gerenciamento de Requisitos',
        'description': 'Analise Requisitos de servico '
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Portal de Analise de Requisitos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Seu acessos recentes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Center(
                child: Text(
                  'Nenhum acesso recente.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            const Text(
              'Sua área de acessos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 4 / 3,
                ),
                itemCount: areasDeAcesso.length,
                itemBuilder: (context, index) {
                  final area = areasDeAcesso[index];
                  return DashboardTile(
                    icon: area['icon'],
                    title: area['title'],
                    description: area['description'],
                    onTap: () {
                      // Ação ao clicar no item
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
