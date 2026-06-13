import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();

}

class _ItemState extends State<Item>{
    int quantity = 10;

    void add() {
      setState(() {
        quantity++;
      });
    }

    void remove() {
      setState(() {
        // quantity--;
        quantity = quantity > 0 ? quantity - 1 : 0;
      });
    }
    List data = ["สมชาย", "สมศรี", "สมปอง", "สมหมาย", "สมจิตร"];

    @override
    Widget build(BuildContext context) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "จำนวนสินค้า: $quantity",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: add,
                  child: Text("เพิ่ม"),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: remove,
                  child: Text("ลด"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    padding: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      data[index],
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }

}
