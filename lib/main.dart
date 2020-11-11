import 'package:declarative_ui_demo/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        height: double.infinity,
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
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            SvgPicture.asset(ic_close, semanticsLabel: 'close'),
            SvgPicture.asset(ic_disclosure, semanticsLabel: 'disclosure'),
            SvgPicture.asset(ic_exit, semanticsLabel: 'exit'),
            SvgPicture.asset(ic_info, semanticsLabel: 'info'),
            SvgPicture.asset(ic_limit, semanticsLabel: 'limit'),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Image.asset(
                ic_operation_prime,
                semanticLabel: 'prime operation',
              ),
            ),
            SvgPicture.asset(ic_operation_transaction,
                semanticsLabel: 'transaction operation'),
            SvgPicture.asset(ic_transfer, semanticsLabel: 'transfer'),
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
