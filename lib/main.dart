//Victor M. Telles A. | 737066
//Crear varios widgets
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 04',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 95, 163, 236)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Tarea 04"),
      ),

      //Añadir el contenido
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Clima
            Stack(
              children: [
                //Contenedor principal
                Container(
                  //Espaciado
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.fromLTRB(4, 32, 4, 4),

                  //decoracion del contenedor (Border)
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.deepOrangeAccent,
                  ),

                  //Caja
                  constraints: const BoxConstraints(
                    maxHeight: 100,
                  ),

                  //Contenido
                  child: Column(
                    children: [
                      //Espaciado
                      const Spacer(),

                      //Ciudad, temperatura
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Guadalajara",
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "19C°",
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),

                      //Text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Nublado",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Icon(
                            Icons.refresh,
                            size: 18,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      //Espaciado
                      const Spacer(),
                    ],
                  ),
                ),
                //Imagen de una nube centrada.
                Positioned(
                  top: 5,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/6122/6122714.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ],
            ),

            //1°Fila
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Positioned(
                  left: 100,
                  child: Container(
                    width: 90,
                    height: 90,
                    color: Colors.blue,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

            //2° Fila
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Soy Jeff",
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.pink,
                  ),
                  textAlign: TextAlign.center,
                ),
                Stack(
                  children: [
                    //imgen
                    Image.network(
                      "https://i.blogs.es/c877e0/jeff-marvel-rivals/840_560.jpeg",
                      height: 200,
                      width: 800,
                      fit: BoxFit.contain,
                    ),

                    Positioned(
                      right: 30,
                      bottom: -30,
                      child: Image.network(
                        "https://static.wikia.nocookie.net/marvel-rivals/images/3/37/Monster_Hulk_Hero_Portrait.png/revision/latest/scale-to-width-down/250?cb=20240829195358",
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              ],
            ),

            //3° Fila
            Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.only(right: 20),
              child: const Text(
                "Soy un tiburonsin",
                style: TextStyle(fontSize: 18, color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
