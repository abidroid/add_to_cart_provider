import 'package:add_to_cart_provider/models/item.dart';
import 'package:add_to_cart_provider/screens/cart_screen.dart';
import 'package:add_to_cart_provider/util/data_store.dart';
import 'package:add_to_cart_provider/widgets/cart_counter_widget.dart';
import 'package:add_to_cart_provider/widgets/item_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loot Sale'),
        toolbarHeight: 50,
        actions:  [GestureDetector(
            onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return CartScreen();
              }));

            },
            child: CartCounterWidget())],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: Container(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: DataStore.list.length,
              itemBuilder: (context, index){

                Item item = DataStore.list[index];

                return ItemTile(item: item);
          }),
        ),
      ),
    );
  }
}
