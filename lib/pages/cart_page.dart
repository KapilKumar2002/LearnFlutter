import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/cart.dart';
import '../store/store.dart';
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
            notifications: {},
            mutations: {RemoveMutation},
            builder: (context, dynamic, VxStatus){
              return "\$${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(context.theme.primaryColor)
                  .make();
            },
          ),
          30.widthBox,
          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not supported yet...".text.make()),);
          },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Vx.indigo400)
              ),
              child: "Buy".text.white.make()
          ).w32(context),
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty? "Nothing to show".text.xl3.color(context.primaryColor).makeCentered():ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index)=> ListTile(
          leading: Icon(Icons.done,
          color: context.primaryColor,),
          trailing: IconButton(
            color: context.primaryColor,
            onPressed: ()=> RemoveMutation(_cart.items[index]),
              icon: Icon(Icons.remove_circle_outline),
          ),
          title: _cart.items[index].name.text.color(context.primaryColor).make(),
        ),
        );
  }
}

