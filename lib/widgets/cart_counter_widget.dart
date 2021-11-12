import 'package:add_to_cart_provider/view_models/items_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartCounterWidget extends StatelessWidget {
  const CartCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Center(
        child: Column(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration:
                  BoxDecoration(color: Colors.red[500], shape: BoxShape.circle),
              child: Center(
                child: Consumer<ItemsViewModel>(
                  builder: (context, itemsViewModel, child) {
                    return Text(
                      itemsViewModel.itemList.length.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    );
                  },
                ),
              ),
            ),
            const Icon(Icons.shopping_cart),
          ],
        ),
      ),
    );
  }
}
