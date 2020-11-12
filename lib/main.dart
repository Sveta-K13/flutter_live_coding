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
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline6: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
          bodyText1: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(0, 0, 0, 0.55),
            letterSpacing: -0.33,
          ),
        ),
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 250,
            backgroundColor: Colors.white,
            title: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 8),
                      blurRadius: 16,
                      spreadRadius: 0,
                    )
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(38),
                child: Image.asset(
                  me_photo,
                  semanticLabel: 'Sveta',
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            bottom: TabBar(
              unselectedLabelColor: Color.fromRGBO(0, 0, 0, 0.55),
              labelColor: Colors.black,
              indicatorColor: Color.fromRGBO(6, 132, 65, 1),
              tabs: [
                Tab(text: 'Профиль'),
                Tab(text: 'Настройки'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    profileBlock,
                    // tarifBlock,
                    // interestBlock,
                  ],
                ),
              ),
              iconPanel,
            ],
          )),
    );
  }

  Widget get profileBlock {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            profile_title,
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            profile_description,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Container(
            height: 130,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 8,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: bankItems.length,
              itemBuilder: (context, i) => buildBankItem(bankItems[i]),
            ),
          )
        ],
      ),
    );
  }

  Widget buildBankItem(Item item) {
    return Container(
      height: 130,
      width: 230,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              item.type == ItemType.PRIME
                  ? Image.asset(ic_operation_prime)
                  : Image.asset(ic_operation_transaction),
              SizedBox(width: 12),
              Text(item.title, style: Theme.of(context).textTheme.headline6),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                item.description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.55),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget get tarifBlock {
    return Container(
      child: Column(
        children: [],
      ),
    );
  }

  Widget get interestBlock {
    return Container(
      child: Column(
        children: [],
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
