
import 'package:flutter/material.dart';
import 'package:bookshop/book.dart';
import 'package:bookshop/bookModel.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:bookshop/cartpage.dart';

void main() => runApp(MyApp(
  model: CartBookModel(),
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final CartBookModel model;
  const MyApp({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartBookModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart',
        home: ListScreen(),
        routes: {'/cart': (context) => CartPage()},
      ),
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar:
       AppBar(
        backgroundColor: Colors.amberAccent[400],

        actions: <Widget>[
          FlatButton(
              child: Text("Clear", style: TextStyle(color: Colors.white),),
              onPressed: () => ScopedModel.of<CartBookModel>(context).clearCart()),

          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          ),

        ],

        title: Text('BookShop'+' Total: ฿ '+ ScopedModel.of<CartBookModel>(context,rebuildOnChange: true).totalCartValue.toString() ),


      ),
      body: ListView.builder(

        itemExtent: 100,
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return ScopedModelDescendant<CartBookModel>(
              builder: (context, child, model) {
                return ListTile(
                    leading: Image.network(itemList[index].imageUrl , height: 150, width: 50, fit: BoxFit.fitWidth,),
                    title: Text(itemList[index].title),
                    subtitle: Text("\฿"+itemList[index].price.toString()),
                    trailing: OutlineButton(
                        child: Text("Buy"),
                        onPressed: () => model.addProduct(itemList[index])));
              });
        },
      ),
    );
  }
}
