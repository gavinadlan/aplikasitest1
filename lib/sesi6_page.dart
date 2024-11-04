import 'package:flutter/material.dart';

class Sesi6 extends StatefulWidget {
  const Sesi6({super.key});

  @override
  State<Sesi6> createState() => _Sesi6State();
}

class _Sesi6State extends State<Sesi6> {
  int counter = 0;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height / 2,
              width: size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Image(
                          image: AssetImage('img/img.jpg'),
                          fit: BoxFit.fill,
                          height: 180,
                          width: 350)),
                  Positioned(
                      bottom: 5,
                      left: 15,
                      child: SizedBox(
                          child: Row(children: [
                        const Text("Foto Bagus"),
                        const SizedBox(
                          width: 100,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const Text("5"),
                        const SizedBox(width: 15),
                        InkWell(
                            onTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                            child: Icon(
                              isLiked ? Icons.favorite : Icons.favorite_border,
                              color: isLiked ? Colors.red : Colors.black,
                            ))
                      ])))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}