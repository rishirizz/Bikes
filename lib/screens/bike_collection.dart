import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BikesCollection extends StatelessWidget {
  const BikesCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                TextField(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
