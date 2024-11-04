import 'package:flutter/material.dart';

class Sesi5 extends StatelessWidget {
  const Sesi5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Novel Bagus"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Novel"),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("J.K. Rowling"),
                    Text("17 Agustus 1945"),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: const ClipRRect(
                    child: Image(
                      image: AssetImage('img/how to train your dragon.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas elit ante, congue non nibh in, ullamcorper porttitor est. Donec placerat ut diam a pellentesque. Proin sem nisi, rhoncus a tellus eget, finibus hendrerit est. Duis dignissim neque purus, non imperdiet purus maximus ac. Nunc pulvinar sed nulla non sollicitudin. Sed ullamcorper scelerisque ipsum, at ultricies nulla. Phasellus quis odio faucibus, mollis libero vel, ullamcorper augue. Aliquam arcu felis, sagittis sit amet metus ut, pretium tristique ligula.",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Quisque vestibulum ipsum eget sagittis venenatis. Fusce sed arcu tellus. Ut ornare euismod ligula sit amet ullamcorper. Vestibulum volutpat interdum erat, vitae placerat dui auctor at. Donec id molestie purus, et lacinia nulla. Donec a elementum lectus. Nunc dictum id lacus sodales tincidunt. Donec scelerisque lorem et lorem ullamcorper mollis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed semper consectetur nibh, fermentum tristique metus eleifend non. Nulla elementum venenatis nibh, eget tincidunt augue convallis id. Vestibulum leo nisl, auctor eget ipsum et, faucibus tincidunt tellus. Morbi eu facilisis sem, at lobortis ligula.",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Nullam consequat lobortis blandit. Aenean ultricies erat sit amet dui varius, ut pharetra libero pharetra. Aenean elementum at elit eu aliquam. Praesent porta, nunc ut consequat cursus, urna orci tristique arcu, a gravida ante sem eu nunc. Vivamus gravida dictum enim ut egestas. Quisque eget convallis magna, a tempor diam. Integer quis dui tristique, consectetur enim venenatis, pretium mi. Cras sagittis risus vehicula arcu varius, semper fermentum arcu convallis. Nam eget arcu dui.",
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ));
  }
}