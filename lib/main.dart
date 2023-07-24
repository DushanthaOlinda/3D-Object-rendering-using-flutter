import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_cube/flutter_cube.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // on below line specifying title.
      title: 'Flutter Demo',

      // on below line hiding our debug banner
      debugShowCheckedModeBanner: false,

      // on below line setting theme.
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // on below line displaying home page
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  // on below line creating an object for earth
  late Object earth;

  // on below line initializing state
  @override
  void initState() {

    // on below line initializing earth object
    earth = Object(fileName: "assets/earth/earth_ball.obj");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    // on below line creating our UI.
    return Scaffold(

      // on below line creating a center widget.
      body: Center(

        // on below line creating a column
        child: Column(

          // on below line specifying alignment
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // on below line adding a sized box
            const SizedBox(
              height: 100,
            ),

            // on below line adding a text for displaying a text for heading.
            const Text(

              // on below line specifying text message
              "3D Objects in Flutter",

              // on below line specifying text style
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            // on below line adding a sized box
            const SizedBox(
              height: 20,
            ),

            // on below line creating an expanded widget for displaying an earth
            Expanded(

              // on below line creating a cube
              child: Cube(

                // on below line creating a scene
                onSceneCreated: (Scene scene) {

                  // on below line adding a scene as earth
                  scene.world.add(earth);

                  // on below line setting camera for zoom.
                  scene.camera.zoom = 5;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}