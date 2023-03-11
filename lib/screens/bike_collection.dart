import 'package:flutter/material.dart';
import '../components/bikes_staggered_list.dart';

class BikesCollection extends StatelessWidget {
  const BikesCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 186, 186, 186),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white,
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 26,
                            ),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Search your favorite bike',
                            hintStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.bookmark_add_outlined,
                    color: Color(0xff100e1c),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Expanded(
              child: BikesStaggerdList(),
            ),
          ],
        ),
      ),
    );
  }
}
