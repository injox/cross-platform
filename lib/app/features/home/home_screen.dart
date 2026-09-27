import 'package:flutter/material.dart';
import 'product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      (
        title: 'Смартфон Samsung Galaxy',
        description: 'Современный смартфон с большим экраном и хорошей камерой.',
        price: 59990.0,
        image: 'assets/images/test_image.png',
      ),
      (
        title: 'Ноутбук ASUS VivoBook',
        description: 'Производительный ноутбук для работы, учёбы и развлечений.',
        price: 79990.0,
        image: 'assets/images/test_image.png',
      ),
      (
        title: 'Беспроводные наушники',
        description: 'Компактные наушники с качественным звуком и шумоподавлением.',
        price: 8990.0,
        image: 'assets/images/test_image.png',
      ),
      (
        title: 'Умные часы',
        description: 'Отслеживание активности, уведомления и контроль здоровья.',
        price: 12990.0,
        image: 'assets/images/test_image.png',
      ),
      (
        title: 'Игровая мышь',
        description: 'Эргономичная мышь с высокой точностью сенсора.',
        price: 4990.0,
        image: 'assets/images/test_image.png',
      ),
      (
        title: 'Механическая клавиатура',
        description: 'Компактная механическая клавиатура для работы и игр.',
        price: 7990.0,
        image: 'assets/images/test_image.png',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Магазин'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        separatorBuilder: (_, _) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final product = products[index];

          return ProductCard(
            title: product.title,
            description: product.description,
            price: product.price,
            image: product.image,
          );
        },
      ),
    );
  }
}
