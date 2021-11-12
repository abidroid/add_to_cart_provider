import 'package:add_to_cart_provider/models/item.dart';
import 'package:add_to_cart_provider/view_models/items_view_model.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {

  final Item item;
  final ItemsViewModel itemsViewModel;

  const CartTile({Key? key, required this.item, required this.itemsViewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.blue),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(item.image, width: 80,height: 80,),

          Text(item.name),

          Column(
            children: [

              ElevatedButton(onPressed: (){
                itemsViewModel.remove(item);
              }, child: const Text('Remove'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),

              Row(
                children: [

                  OutlinedButton(onPressed: (){
                    itemsViewModel.decreaseCartQuantity(item);
                  }, child: const Text('-')),
                  Text(item.cartQuantity.toString()),
                  OutlinedButton(onPressed: (){
                    itemsViewModel.increaseCartQuantity(item);


                  }, child: const Text('+')),


                ],
              )
            ],
          )
        ],
      ),

    );
  }
}
