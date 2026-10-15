import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CineKiala'),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 16), child: CircleAvatar()),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            height: 300,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Imagem de fundo
                Image.network(
                  'https://content.pontosj.pt/wp-content/uploads/2021/02/01184048/home-alone.png',
                  fit: BoxFit.cover,
                ),

                // Degradê escuro para o texto ficar legível
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black87],
                    ),
                  ),
                ),

                // Dados no canto inferior esquerdo
                Positioned(
                  left: 16,
                  bottom: 16,
                  right: 16,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sozinho em Casa',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'História do Filme',
                        style: TextStyle(color: AppColors.white),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                AppColors.yellow,
                              ),
                            ),
                            onPressed: () {
                              debugPrint('Ver detalhes');
                            },
                            icon: const Icon(
                              Icons.play_arrow,
                              color: AppColors.black,
                            ),
                            label: const Text(
                              'Ver Detalhes',
                              style: TextStyle(color: AppColors.black),
                            ),
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                AppColors.softDarkBlue,
                              ),
                            ),
                            onPressed: () {
                              debugPrint('Adicionado a minha lista');
                            },
                            icon: const Icon(Icons.add, color: AppColors.white),
                            label: const Text(
                              'Minha Lista',
                              style: TextStyle(color: AppColors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
