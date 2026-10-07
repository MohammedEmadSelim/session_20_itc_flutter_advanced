import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool isPink = true;
  bool isLoading = false;
  bool isOpacity = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
      isPink = !isPink;
      isOpacity = !isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(context.widget.key);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),

            // AnimatedSwitcher(
            //   duration:Duration(milliseconds: 500) ,
            //   child: Text(
            //     '$_counter',
            //     key:ValueKey<int>(_counter) ,
            //     style: TextStyle(fontWeight: FontWeight.w700,fontSize: 63)
            //   ),
            // ),
            ///==================
            // AnimatedContainer(
            //   curve: Curves.linear,
            //   duration: Duration(milliseconds: 500),
            //   width: isPink ? 400 : 200,
            //   height: isPink ? 400 : 200,
            //   decoration: BoxDecoration(
            //     color: isPink ? Colors.pink : Colors.grey,
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(12),
            //     child: Image.network(
            //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlsu3y3bGm1x5OLNxCuk5_-m4jOaqnl0W7Y2-LrJG26CQun-CPccLE5xY&s=10",
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            ///======================
            // AnimatedCrossFade(
            //   firstChild: GestureDetector(
            //     onTap: () {
            //       setState(() {
            //         isLoading = !isLoading;
            //
            //       });
            //     },
            //     child: Container(
            //       width: 120,
            //       height: 40,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(12),
            //         color: Colors.pinkAccent,
            //       ),
            //       child: Center(
            //         child: Text("Login", style: TextStyle(color: Colors.white)),
            //       ),
            //     ),
            //   ),
            //   secondChild: Center(child: CircularProgressIndicator(color: Colors.pinkAccent,),),
            //   crossFadeState: isLoading?CrossFadeState.showSecond:CrossFadeState.showFirst,
            //   duration: Duration(milliseconds: 500),
            // ),

            ///======================
            AnimatedOpacity(
              opacity: isOpacity?0.0:1.0,
              duration: Duration(milliseconds: 500),
              child: Text("Welcome best Students"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
