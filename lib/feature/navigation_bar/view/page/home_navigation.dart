import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../core/util/png_asset.dart';
import '../../../apparel/view/page/category_page.dart';
import '../../../bag/view/page/my_bag.dart';
import '../../../home/view/page/home_page.dart';
import '../../../order_confirm/view/page/order_confirmation.dart';
import '../../../saved_items/view/page/saved_items.dart';
import '../../getX/home_controller.dart';

class HomeNavigation extends StatelessWidget {
  HomeNavigation({super.key});

  final HomeController controller = Get.put(HomeController());

  final List<Widget> _pages =  [
    HomePage(),
    //OrderConfirmationPage(),
    CategoryPage(),
    ProductListPage(),
    SavedItems(),
  ];

  @override
  Widget build(BuildContext context) {
    // Set the system UI overlay to light mode for white icons
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.black, // Status bar background color
        statusBarIconBrightness: Brightness.light, // White status bar icons
       statusBarBrightness: Brightness.dark, // This is for iOS
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.background,
        body: Obx(() => _pages[controller.selectedIndex.value]), 
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
         //   backgroundColor: AppColor.background,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value, 
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColor.primary,
            unselectedItemColor: AppColor.toneOne,
            onTap: (index) {
              controller.updateIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  controller.selectedIndex.value == 0
                      ? AppPngPath.homePageLogoBold
                      : AppPngPath.homePageLogoOutlined,
                  width: 25,
                  height: 25,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  controller.selectedIndex.value == 1
                      ? AppPngPath.applePageLogoBold
                      : AppPngPath.applePageLogoBold,
                  width: 25,
                  height: 25,
                ),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  controller.selectedIndex.value == 2
                      ? AppPngPath.storePageLogoBold
                      : AppPngPath.storePageLogoOutlined,
                  width: 25,
                  height: 25,
                ),
                label: 'My Bag',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  controller.selectedIndex.value == 3
                      ? AppPngPath.libraryPageLogoBold
                      : AppPngPath.libraryPageLogoOutlined,
                  width: 25,
                  height: 25,
                ),
                label: 'Saved Items',
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
