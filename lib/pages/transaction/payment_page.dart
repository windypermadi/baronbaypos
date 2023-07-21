import 'package:baronbay_pos/settings/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget _header(){
      return AppBar(
        backgroundColor: backgroundColor1,
        title: const Text('Pembayaran'),
        elevation: 0,
      );
    }
    
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: headerColor,
        centerTitle: true,
        title: const Text(
          'Pembayaran',
        ),
        elevation: 0,
      ),body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              alignment: Alignment.center,
              color: primaryTextColor,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 20),
                    child: Text('Total Pembayaran',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                      color: blackColor
                    ),
                    ),
                  ),
                  Text('Rp27.000',
                  style: primaryTextStyle.copyWith(
                    fontSize: 35,
                    fontWeight: superBold,
                    color: primaryColor
                  ),
                  ),
                ],
              ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 180,top: 20, bottom: 10),
                    child: 
                    Text('Pilih Pembayaran',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold
                    ),),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 20, right: 10),
                        child: 
                        SizedBox(
                        height: 80,
                        width: 300,
                        child: Container(
                          decoration: BoxDecoration(
                          border: Border.all(
                            color: secondaryTextColor
                          ),
                          borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: (){}, 
                            style: TextButton.styleFrom(
                              backgroundColor: whiteColor,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Tunai',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: medium
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        ),
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: 
                        SizedBox(
                        height: 80,
                        width: 300,
                        child: Container(
                          decoration: BoxDecoration(
                          border: Border.all(
                            color: secondaryTextColor
                          ),
                          borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: (){}, 
                            style: TextButton.styleFrom(
                              backgroundColor: whiteColor,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Pembayaran Lainnya',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: medium
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        ),
                      ),
                      ),
                    ],
                  )
                ],
              )
          ],
        ),
      ),

    );
  }
}