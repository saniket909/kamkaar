import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

int selectedIndex = 1;

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 173, 227, 252),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                      child: Text(
                    "skip",
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 79, 142),
                        fontWeight: FontWeight.w700),
                  ))),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(500),
                    child: selectedIndex == 1
                        ? Image.asset(
                            "assets/image.png",
                            height: 300,
                            width: 300,
                            fit: BoxFit.cover,
                          )
                        : selectedIndex == 2
                            ? Image.asset(
                                "assets/screen 2.png",
                                height: 300,
                                width: 300,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                "assets/screen3.png",
                                height: 300,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 300,
                    alignment: Alignment.center,
                    child: selectedIndex == 1
                        ? const Text(
                            "We Provide Professional Home services at a very friendly price",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          )
                        : selectedIndex == 2
                            ? const Text(
                                "Easy Service booking & Scheduling",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              )
                            : const Text(
                                "Get Beauty parlor at your home & other Personal Grooming needs",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  selectedIndex == 1
                      ? Container(
                          height: 5,
                          width: 20,
                          margin: const EdgeInsets.only(right: 35),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 126, 182, 250),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      : selectedIndex == 2
                          ? Container(
                              height: 5,
                              width: 20,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 126, 182, 250),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          : Container(
                              height: 5,
                              width: 20,
                              margin: const EdgeInsets.only(left: 35),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 126, 182, 250),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                ],
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding:
                const EdgeInsets.only(bottom: 50.0), // Adjust the value here
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  selectedIndex++;
                });
              },
              child: const Icon(Icons.arrow_right_alt),
            ),
          ),
        ));
  }
}
