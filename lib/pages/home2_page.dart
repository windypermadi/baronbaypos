import 'package:baronbay_pos/providers/product_provider.dart';
import 'package:baronbay_pos/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../settings/theme.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    //  productProvider = Provider.of<ProductProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 12,
          child: Column(
            children: [
              _topMenu(
                title: 'Baron Bay HTM Kasir',
                subTitle: 'NIKKO - Kasir',
                action: _search(),
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _itemTab(
                      icon: 'assets/images/icon-burger.png',
                      title: 'Burger',
                      isActive: true,
                    ),
                    _itemTab(
                      icon: 'assets/images/icon-noodles.png',
                      title: 'Noodles',
                      isActive: false,
                    ),
                    _itemTab(
                      icon: 'assets/images/icon-drinks.png',
                      title: 'Drinks',
                      isActive: false,
                    ),
                    _itemTab(
                      icon: 'assets/images/icon-desserts.png',
                      title: 'Desserts',
                      isActive: false,
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  // childAspectRatio: (1 / 1.2),
                  children: [
                    ProductCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(flex: 0, child: Container()),
        Expanded(
          flex: 6,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
                      color: whiteColor,
                    
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('assets/icons/icon_discount.svg',
                    width: 26,
                    height: 26,
                    ),
                    const SizedBox(width: 20,),
                    SvgPicture.asset('assets/icons/icon_contact.svg',
                    width: 26,
                    height: 26,
                    ),
                    const SizedBox(width: 20,),
                    SizedBox(
                      height: 35,
                      width: 80,
                      child: Container(
                        decoration: BoxDecoration(
                        border: Border.all(
                          color: blackColor
                        ),
                        borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: (){}, 
                          style: TextButton.styleFrom(
                            backgroundColor: whiteColor,
                          ),
                          child: Text(
                            'Hapus',
                            style: blackTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: medium
                            ),
                          )),
                      ),
                    )
                  ],
                ),
                // _topMenu(
                //   title: 'Order',
                //   subTitle: 'Table 8',
                //   action: Container(),
                // ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      _itemOrder(
                        image: 'assets/items/1.png',
                        title: 'Orginal Burger',
                        qty: '2',
                        price: '\$5.99',
                      ),
                      _itemOrder(
                        image: 'assets/items/2.png',
                        title: 'Double Burger',
                        qty: '3',
                        price: '\$10.99',
                      ),
                      _itemOrder(
                        image: 'assets/items/6.png',
                        title: 'Special Black Burger',
                        qty: '2',
                        price: '\$8.00',
                      ),
                      _itemOrder(
                        image: 'assets/items/4.png',
                        title: 'Special Cheese Burger',
                        qty: '2',
                        price: '\$12.99',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xff320617),
                    ),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sub Total',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '\$40.32',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tax',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '\$4.32',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          height: 1,
                          width: double.infinity,
                          color: Colors.white,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '\$44.64',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: SizedBox(
                                height: 40,
                                width: 80,
                                child: TextButton(
                                onPressed: (){}, 
                                style: TextButton.styleFrom(
                                  backgroundColor: whiteColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  'Simpan',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: medium
                                  ),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: 140,
                              child: TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/payment-page');
                              }, 
                              style: TextButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Bayar',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: medium
                                ),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget _itemOrder({
    required String image,
    required String title,
    required String qty,
    required String price,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: subtitleColor),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                    color: blackColor
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  price,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                    color: blackColor
                  ),
                )
              ],
            ),
          ),
          Text(
            '$qty x',
            style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                    color: blackColor
                  ),
          ),
        ],
      ),
    );
  }

  // Widget _item({
  //   required String image,
  //   required String title,
  //   required String price,
  //   required String item,
  // }) {
  //   return Container(
  //     margin: const EdgeInsets.only(right: 20, bottom: 20),
  //     padding: const EdgeInsets.all(0),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(10),
  //       color: whiteColor,
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Container(
  //           height: 130,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(16),
  //             image: DecorationImage(
  //               image: AssetImage(image),
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //         ),
  //         const SizedBox(height: 5),
  //         Text(
  //           title,
  //           style: primaryTextStyle.copyWith(
  //             color: blackColor,
  //             fontSize: 14,
  //             fontWeight: bold
  //           ),
  //         ),
  //         const SizedBox(height: 5),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               price,
  //               style: const TextStyle(
  //                 color: Colors.deepOrange,
  //                 fontSize: 20,
  //               ),
  //             ),
  //             Text(
  //               item,
  //               style: const TextStyle(
  //                 color: Colors.white60,
  //                 fontSize: 12,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _itemTab(
      {required String icon, required String title, required bool isActive}) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 26),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
        border: isActive
            ? Border.all(color: primaryColor, width: 1)
            : Border.all(color: blackColor, width: 1),
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 38,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium
            ),
          ),
        ],
      ),
    );
  }

  Widget _topMenu({
    required String title,
    required String subTitle,
    required Widget action,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              subTitle,
              style: TextStyle(
                color: subtitleColor,
                fontSize: 10,
              ),
            ),
          ],
        ),
        Expanded(flex: 1, child: Container(width: double.infinity)),
        Expanded(flex: 5, child: action),
      ],
    );
  }

  Widget _search() {
    return Container(
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: blackColor
          ),
          borderRadius: BorderRadius.circular(10),
          color: whiteColor,
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: subtitleColor,
            ),
            const SizedBox(width: 10),
            Text(
              'Search Item',
              style: TextStyle(color: subtitleColor, fontSize: 11),
            )
          ],
        ));
  }