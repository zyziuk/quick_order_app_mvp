import 'package:flutter/material.dart';
import 'order/widgets/order_list_widget.dart';
import 'order/widgets/order_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Quick Order App"),
              bottom: const TabBar(tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.add),
                  text: "Add Order",
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: "List",
                ),
              ]),
            ),
            body: TabBarView(children: [OrderWidget(), const OrderListWidget()]),
          )),
    );
  }
}
