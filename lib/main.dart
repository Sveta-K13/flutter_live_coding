import 'package:declarative_ui_demo/data.dart';
import 'package:flutter/material.dart';

import 'models/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
            headline5: TextStyle(
          color: Colors.green,
          fontSize: 25,
        )),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            iconPanel,
            Flexible(child: listWidget),
          ],
        ),
      ),
    );
  }

  Widget get iconPanel {
    return Container(
      height: 150,
      width: 500,
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Image.asset(
              ic_close,
              semanticLabel: 'close',
              width: 20,
            ),
            Image.asset(
              ic_disclosure,
              key: Key('jhgbhb2'),
              semanticLabel: 'disclosure',
              width: 20,
            ),
            Image.asset(
              ic_exit,
              semanticLabel: 'exit',
              width: 20,
            ),
            Image.asset(
              ic_info,
              semanticLabel: 'info',
              width: 20,
            ),
            Image.asset(
              ic_limit,
              semanticLabel: 'limit',
              width: 20,
            ),
            Image.asset(
              ic_operation_prime,
              semanticLabel: 'prime operation',
              width: 20,
            ),
            Image.asset(
              ic_operation_transaction,
              semanticLabel: 'transaction operation',
              width: 20,
            ),
            Image.asset(
              ic_transfer,
              semanticLabel: 'transfer',
              width: 20,
            ),
            Image.asset(
              me_photo,
              semanticLabel: 'Sveta',
              width: 150,
              fit: BoxFit.contain,
            ),
          ]),
    );
  }

  Widget get listWidget {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(),
      itemCount: bankItems.length,
      itemBuilder: (context, index) {
        Item item = bankItems[index];
        return Card(
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    item.title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
