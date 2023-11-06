import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget {
  OrderWidget({super.key});

  final TextEditingController _edtOrderTypeController = TextEditingController();
  final TextEditingController _edtSubclassController = TextEditingController();
  final TextEditingController _edtPOCommentsController =
      TextEditingController();
  final TextEditingController _edtBuyerCommentsController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "CREATE QUICK ORDER",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              controller: _edtOrderTypeController,
              decoration: const InputDecoration(helperText: "Order Type"),
            ),
            TextField(
              controller: _edtSubclassController,
              decoration: const InputDecoration(helperText: "Subclass"),
            ),
            TextField(
              controller: _edtPOCommentsController,
              decoration: const InputDecoration(helperText: "PO Comments"),
            ),
            TextField(
              controller: _edtBuyerCommentsController,
              decoration: const InputDecoration(helperText: "Buyer Comments"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.save),
                        SizedBox(
                          width: 3,
                        ),
                        Text("Save")
                      ])),
              onPressed: () {

                Map<String, dynamic> data = {
                  "orderType": _edtOrderTypeController.text.toString(),
                  "subclass": _edtSubclassController.text.toString(),
                  "poComments": _edtPOCommentsController.text.toString(),
                  "buyerComments": _edtBuyerCommentsController.text.toString(),
                }; 


                SnackBar snackBar = SnackBar(
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(Icons.send, color: Colors.white,),  
                        Text("Zapisano do kolejki: '${data['orderType']}'"),
                        ],
                    ),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            )
          ],
        ),
      ),
    );
  }

  void orderSaveAction() {

  }
}
