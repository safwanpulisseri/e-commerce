import 'package:flutter/material.dart';
import '../../../home/data/model/product_model.dart';
import '../../../home/data/service/remote/home_product.dart';


class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
   createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  late Future<List<Product>> _futureProducts;

  @override
  void initState() {
    super.initState();
    _futureProducts = ViewProdctDetailsRemoteService().viewProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder<List<Product>>(
        future: _futureProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No products found'));
          } else {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
               return ListTile(
  leading: Image.network(
    product.image,
    height: 50, // Adjusted height
    width: 50,  // Adjusted width
    fit: BoxFit.cover, // Maintain aspect ratio
    errorBuilder: (context, error, stackTrace) {
      return Container(
        height: 50,
        width: 50,
        color: Colors.grey, // Placeholder color
        child: Icon(Icons.error), // Show error icon
      );
    },
  ),
  title: Text(product.slug),
  subtitle: Text('\$${product.price.toString()}'),
);

              },
            );
          }
        },
      ),
    );
  }
}
