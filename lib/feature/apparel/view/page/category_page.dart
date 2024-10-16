import 'package:flutter/material.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../core/util/png_asset.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
            // Navigator.of(context).pop();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Oversized T-Shirts',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primary,
                  ),
                ),
                Text(
                  '2374 items',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.toneOne,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  AppPngPath.libraryPageLogoBold,
                  height: 20,
                  width: 20,
                ),
                SizedBox(width: 10,),
                Image.asset(
                  AppPngPath.storePageLogoBold,
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 15, // Space between columns
            mainAxisSpacing: 15, // Space between rows
            childAspectRatio: 0.6, // Adjust aspect ratio as needed
          ),
          itemCount: 6, // Update based on your product count
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    index.isEven
                        ? AppPngPath.bottomScrollImageOne
                        : AppPngPath.bottomScrollImageTwo,
                    height: 260,
                    width: 190,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'First Line Text',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primary,
                  ),
                ),
                Text(
                  '£39.95',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primary,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
