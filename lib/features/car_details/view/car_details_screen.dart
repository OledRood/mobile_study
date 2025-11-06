import 'package:flutter/material.dart';
import 'package:mobile_study/ui/theme/models/app_images.dart';

class CarDetailsScreen extends StatelessWidget {
  final String carId;
  const CarDetailsScreen({super.key, required this.carId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Детали'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(children: [Image.asset(AppImages.mockedAutoDetailsPhoto)]),
    );
  }
}
