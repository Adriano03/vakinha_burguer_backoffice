import 'package:flutter/material.dart';

import '../../core/env/env.dart';
import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/messages.dart';
import '../../core/ui/helpers/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: context.colors.primary,
              width: context.percentWidth(.2),
              height: context.percentHeight(.2),
              child: Text(
                context.screenWidth.toString(),
                style: context.textStyles.textTitle,
              ),
            ),
            SizedBox(
              height: context.percentHeight(.03),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Me-Clique')),
            SizedBox(
              height: context.percentHeight(.03),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(label: Text('Login')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
