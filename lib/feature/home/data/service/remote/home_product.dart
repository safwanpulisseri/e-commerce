import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../model/product_model.dart';


class ViewProdctDetailsRemoteService {
  final String _link = dotenv.env['API_LINK']!;
  final Dio dio = Dio();

  Future<List<Product>> viewProducts() async {
    log("Fetching products...");
    try {
      var response = await dio.post(
        "${_link}home",
        data: {
          'value': 'test-12-430',
        },
      );
     log(response.data.toString());

      log("Success fetching products");
      
      // Parse JSON response
      List<dynamic> data = response.data['best_seller']; 
      return data.map((product) => Product.fromJson(product)).toList();
    } catch (e) {
      log("Error fetching products: $e");
      throw Exception("Failed to fetch products");
    }
  }
}
