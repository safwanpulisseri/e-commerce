import 'package:e_commerce/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/util/png_asset.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        elevation: 0,
      
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           Image.asset(AppPngPath.searchIcon,height: 20,width: 20,),
           const SizedBox(width: 20),
           Image.asset(AppPngPath.storePageLogoBold,height: 20,width: 20,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
             const  SizedBox(width: 15,),
             ClipRRect(
            borderRadius: BorderRadius.circular(15.0), 
            child: Image.asset(
              AppPngPath.scrollImageOne,
              height: 150,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
                const  SizedBox(width: 15,),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              AppPngPath.scrollImageTwo,
                height: 150,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
                const  SizedBox(width: 15,),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              AppPngPath.scrollImageThree,
               height: 150,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
                const  SizedBox(width: 15,),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              AppPngPath.scrollImageOne,
                height: 150,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
                const  SizedBox(width: 15,),
            ],
          ),
        ),
       Padding(
         padding: const EdgeInsets.all(15.0),
         child: ClipRRect(  borderRadius: BorderRadius.circular(15.0),child: Image.asset(AppPngPath.homeImageOne,),),
       ),
       
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
          'Our Products',
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontSize: 20, 
             fontWeight: FontWeight.w500, 
            
            ),
          ),),
           Text(
          'Explore All',
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              color: AppColor.toneTwo,
              fontSize: 20, 
             fontWeight: FontWeight.w500, 
           
            ),
          ),),
               
                ],
              ),
            ),

            // // Product Grid
            SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
             const  SizedBox(width: 15,),
             ClipRRect(
            borderRadius: BorderRadius.circular(15.0), 
            child: Image.asset(
              AppPngPath.bottomScrollImageOne,
              height: 260,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
                const  SizedBox(width: 15,),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              AppPngPath.bottomScrollImageTwo,
              height: 260,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
                const  SizedBox(width: 15,),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
                AppPngPath.bottomScrollImageOne,
              height: 260,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
                const  SizedBox(width: 15,),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              AppPngPath.bottomScrollImageTwo,
                 height: 260,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
                const  SizedBox(width: 15,),
            ],
          ),
        ),
          ],
        ),
      ),
    
    );
  }


}