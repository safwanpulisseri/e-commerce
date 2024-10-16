import 'package:e_commerce/core/util/png_asset.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_color.dart';

class OrderConfirmationPage extends StatelessWidget {
  const OrderConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.background,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8.0,
                  spreadRadius: 2.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: AppBar(
              toolbarHeight: 80,
              backgroundColor: AppColor.background,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () {
                  // Navigator.of(context).pop();
                },
              ),
              title: Row(
                children: [
                  Text(
                    'Order Confirmation',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
         
          Expanded(
            child: Center(
              
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center, // Centers the column content
                children: [
                   Spacer(),
                  Column(
                    children: [
                      Image.asset(
                        AppPngPath.orderConfirmOne,
                        // height: 100,
                        // width: 50,
                      ),
                      SizedBox(height: 15,),
                        Image.asset(
                        AppPngPath.orderConfirmTwo,
                        // height: 200,
                        // width: 100,
                      ),
                      SizedBox(height: 20,),
                    
                      Text(
                        'Thank you for shopping!',
                          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              color: AppColor.primary,
              fontSize: 16, 
             fontWeight: FontWeight.w500, 
           
            ),
          ),
                      ),
                      // const SizedBox(height: 5),
                      Text(
                        'Your order has been placed.',
                          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              color: AppColor.primary,
              fontSize: 13, 
             fontWeight: FontWeight.w300, 
           
            ),
          ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                    height: 50,width: 400,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(30)
                      
                    ),
                    child: Center(
                      child: Text(
                                'CONTINUE SHOPPING',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    color: AppColor.background,
                                    fontSize: 20, 
                                   fontWeight: FontWeight.w500, 
                                 
                                  ),
                                ),),
                    ),
                                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
