import 'package:baronbay_pos/models/product_model.dart';
import 'package:flutter/material.dart';

import '../settings/theme.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key});
  
  get product => null;
  
  @override
  Widget build(BuildContext context) {

    // ProductModel product;
    // ProductCard(this.product);

    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: whiteColor,
        ),
        width: double.infinity,
        height: 92,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage('assets/images/image_shoes.png'),
                fit: BoxFit.cover)
              ),
            ),
            const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    'judul',
                    style: primaryTextStyle.copyWith(
                      color: blackColor,
                      fontSize: 14,
                      fontWeight: bold
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    'judul',
                    style: primaryTextStyle.copyWith(
                      color: blackColor,
                      fontSize: 14,
                      fontWeight: medium
                    ),
                  ),
                )
              ],
            )
    
          ],
        ),
      ),
    );
  }
}