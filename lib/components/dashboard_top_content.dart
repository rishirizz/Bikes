import 'package:flutter/material.dart';

class DashBoardTopContent extends StatelessWidget {
  const DashBoardTopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/rider1.jpg'),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FittedBox(
                    child: Text(
                      'Hi Arijeet',
                      style: TextStyle(
                        color: Color.fromARGB(255, 144, 156, 234),
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.notification_add_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                ],
              ),
              const Text(
                'Ready to rev your soul?',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
