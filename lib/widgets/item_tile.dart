import 'package:add_to_cart_provider/models/item.dart';
import 'package:add_to_cart_provider/view_models/items_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemTile extends StatelessWidget {

  final Item item;
  const ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var itemsViewModel = Provider.of<ItemsViewModel>(context);

    return Container(

      width: 100,
      height: 180,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue)

      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(item.image,
          height: 80, width: 80, fit: BoxFit.cover,),
          Text(item.name),

          ElevatedButton(onPressed: (){
            itemsViewModel.add(item);
          }, child: const Text('Add'),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
          ),
          ),
        ],
      ),
    );
  }
}
