import 'package:flutter/material.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1000) {
            return SizedBox(
              // decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/banner_font.jpg'), fit: BoxFit.cover)),
              width: double.infinity,
              height: 900,
              child: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Kharold Canova',
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Desarrollador Frontend Flutter',
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Flexible(
                            child: SizedBox(
                                width: 250,
                                height: 50,
                                child: FilledButton(
                                    onPressed: () {},
                                    child: const Text('Contactame'))),
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                        flex: 2,
                        child: CircleAvatar(
                            radius: 250,
                            backgroundImage:
                                AssetImage('images/banner_profile.jpg'))),
                  ],
                ),
              ),
            );
          } else {
            return SizedBox(
              // decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/banner_font.jpg'), fit: BoxFit.cover)),
              width: double.infinity,
              height: 900,
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 250,
                        backgroundImage:
                            AssetImage('images/banner_profile.jpg')),
                      Text(
                        'Kharold Canova',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width / 15,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Desarrollador Frontend Flutter',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width / 25),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                          width: 250,
                          height: 50,
                          child: FilledButton(
                              onPressed: () {},
                              child: const Text('Contactame')))
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
