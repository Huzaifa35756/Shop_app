import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name':'Blazer',
      'picture':'assets/images/products/blazer1.jpeg',
      'old_price':120,
      'price':80,
    },

    {
      'name':'Red Dress',
      'picture':'assets/images/products/dress1.jpeg',
      'old_price':100,
      'price':70,
    },
    {
      'name':'Blazer',
      'picture':'assets/images/products/blazer2.jpeg',
      'old_price':80,
      'price':70,
    },
    {
      'name':'Black Dress',
      'picture':'assets/images/products/dress2.jpeg',
      'old_price':180,
      'price':160,
    },
    {
      'name':'Red Heals',
      'picture':'assets/images/products/hills2.jpeg',
      'old_price':90,
      'price':70,
    },
    {
      'name':'Heals',
      'picture':'assets/images/products/hills1.jpeg',
      'old_price':125,
      'price':90,
    },
    {
      'name':'Pants',
      'picture':'assets/images/products/pants2.jpeg',
      'old_price':20,
      'price':15,
    },
    {
      'name':'Skirt',
      'picture':'assets/images/products/skt1.jpeg',
      'old_price':50,
      'price':40,
    },
    {
      'name':'Pink Skirt',
      'picture':'assets/images/products/skt2.jpeg',
      'old_price':70,
      'price':60,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration
                                :TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}