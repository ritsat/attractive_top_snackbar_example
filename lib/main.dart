import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Snackbar Example"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showTopSnackBar(
                    Overlay.of(context),
                    const CustomSnackBar.info(
                      message: "This is an info top Snackbar!",
                    ),
                  );
                },
                child: const Text("Show Info Snackbar")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  showTopSnackBar(
                      Overlay.of(context),
                      const CustomSnackBar.success(
                        message: "This is a success bottom Snackbar!",
                      ),
                      snackBarPosition: SnackBarPosition.bottom);
                },
                child: const Text("Show Success Snackbar")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  showTopSnackBar(
                    Overlay.of(context),
                    const CustomSnackBar.error(
                      message: "This is an error top Snackbar!",
                    ),
                  );
                },
                child: const Text("Show Error Snackbar")),
            ElevatedButton(
                onPressed: () {
                  showTopSnackBar(
                    Overlay.of(context),
                    const CustomSnackBar.error(
                      message: "This is a success Snackbar with custom colors!",
                      backgroundColor: Colors.green,
                      textStyle: TextStyle(color: Colors.white),
                    ),
                  );
                },
                child: const Text("Show Custom color Snackbar")),
            ElevatedButton(
                onPressed: () {
                  showTopSnackBar(
                    Overlay.of(context),
                    const CustomSnackBar.info(
                      message: "This is an info Snackbar with an icon!",
                      icon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 48,
                        ),
                      ),
                    ),
                  );
                },
                child: const Text("Show Info Snackbar with Custom icon")),
          ],
        ),
      ),
    );
  }
}
