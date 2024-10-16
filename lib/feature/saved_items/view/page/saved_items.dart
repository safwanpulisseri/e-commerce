import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../core/util/png_asset.dart';

class SavedItems extends StatelessWidget {
  const SavedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColor.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
          //  Navigator.of(context).pop();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saved Items',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primary,
                  ),
                ),
                Text(
                  '2 items',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.toneOne,
                  ),
                ),
              ],
            ),
            Image.asset(
              AppPngPath.storePageLogoBold,
              height: 20,
              width: 20,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            height:270,
            decoration: BoxDecoration(
              color: AppColor.background,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 15),
                    Image.asset(
                      AppPngPath.savedItemsOne,
                      height: 200,
                      width: 100,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Aligns text and icon on opposite sides
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Men\'s Black The Ryuk Graphic\nPrinted Oversized T-shirt',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '£60.00',
                                style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  color: AppColor.toneOne,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '£60.00',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primary,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '20% OFF',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: AppColor.toneThree,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'XL / Beige',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.primary,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              AppPngPath.deleteOulined,
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,width: 250,
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(30)
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset(AppPngPath.shopingBagWithWhite,height: 20,width: 20,),
                    SizedBox(width: 10,),
                   Text(
          'ADD TO BAG',
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              color: AppColor.background,
              fontSize: 20, 
             fontWeight: FontWeight.w500, 
           
            ),
          ),),
                  ],),
                ),
                SizedBox(height: 10,),
                SizedBox(width: 400,
                  child: Divider(
                    color: AppColor.toneOne.withOpacity(0.3),
                  ))
          

              ],
            ),
          ),
        ],
      ),
    );
  }
}
