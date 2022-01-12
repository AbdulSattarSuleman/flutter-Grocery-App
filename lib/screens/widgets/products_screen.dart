import 'package:flutter/material.dart';

import 'package:practice_api/models/product_model.dart';
import 'package:practice_api/services/api_service.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: FutureBuilder(
        future: getProductData(),
        builder: (context, AsyncSnapshot<List<ProductModel>> snapshot) {
          return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: screenSize.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            snapshot.data![index].image,
                          ),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2),
                            BlendMode.screen,
                          )),
                      borderRadius: BorderRadius.circular(20)),
                );
              });
        },
      ),
    );
  }
}
