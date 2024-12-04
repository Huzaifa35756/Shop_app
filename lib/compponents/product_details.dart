import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';
class ProductDetails extends StatefulWidget {
final product_detail_name;
final product_detail_new_price;
final product_detail_old_price;
final product_detail_picture;

ProductDetails({
  this.product_detail_name,
  this.product_detail_new_price,
this.product_detail_old_price,
this.product_detail_picture
});
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override


  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("Shop App", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.search, color: Colors.white)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart, color: Colors.white)),
        ],
      ),

      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white70,

                  child:Zoom(
                      initTotalZoomOut: true,
                      child: Center(
                        child:Image.asset(widget.product_detail_picture),
                      ),
                    ),

)
                )
            ),
            

        ],
      ),
    );





}
}