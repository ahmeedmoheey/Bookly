import 'package:flutter/material.dart';

import '../views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookly'),
        actions: [
          IconButton(
              onPressed: (){}, icon: Icon(Icons.search,))
        ],
    ),
    body:SplashViewBody(),
    );
  }
}
