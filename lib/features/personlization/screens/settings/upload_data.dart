import 'package:ecommerce_no_shoppu/common/widgets/app_bar/appbar.dart';
import 'package:ecommerce_no_shoppu/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_no_shoppu/features/personlization/screens/settings/widgets/dummy_data_tile.dart';
import 'package:ecommerce_no_shoppu/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UploadDataScreen extends StatelessWidget {
  const UploadDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Categories
    // final categories = ADummyData.categories;
    // final categoriesController = Get.put(CategoryRepository());

    /// Banners
    // final banners = ADummyData.banners;
    // final bannersController = Get.put(BannerRepository());

    /// Products
    // final products = ADummyData.products;
    // final productController = Get.put(ProductRepository());

    /// Brands
    // final brands = ADummyData.brandList;
    // final brandController = Get.put(BrandRepository());

    /// Brand Categories
    // final brandCategories = ADummyData.brandCategories;
    // final bcController = Get.put(BrandRepository());

    /// Product Categories
    // final productCategories = ADummyData.productCategories;
    // final pcController = Get.put(ProductRepository());

    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Upload Dummy Data',
            style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SectionHeading(
                title: 'Main Record',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Column(
                children: [
                  DummyDataTile(
                    icon: Iconsax.format_square,
                    title: 'Upload Categories',
                    onPressed: () {
                      // categoriesController.uploadDummyData(categories);
                    },
                  ),
                  DummyDataTile(
                    icon: Iconsax.shop,
                    title: 'Upload Brands',
                    onPressed: () {
                      // try {
                      //  brandController.uploadDummyData(brands);
                      // } catch (e) {
                      //   print("Error uploading brand data: $e");
                      // }
                    },
                  ),
                  DummyDataTile(
                    icon: Iconsax.shopping_bag,
                    title: 'Upload Products',
                    onPressed: () {
                        // productController.uploadDummyData(products);
                    },
                  ),
                  DummyDataTile(
                    icon: Iconsax.document,
                    title: 'Upload Banners',
                    onPressed: () {
                      // bannersController.uploadDummyData(banners);
                    },
                    padding: TSizes.spaceBtwSections,
                  )
                ],
              ),
              const SectionHeading(
                title: 'Relationships',
                showActionButton: false,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Make sure you have already uploaded all the content abovu desu yo.',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Column(
                children: [
                  DummyDataTile(
                    icon: Iconsax.attach_circle,
                    title: 'Upload Brands & Categories Relation Data',
                    onPressed: () {
                      // bcController.uploadBrandCategories(brandCategories);
                    },
                  ),
                  DummyDataTile(
                    icon: Iconsax.attach_circle,
                    title: 'Upload Products & Categories Relation Data',
                    onPressed: () {
                      // pcController.uploadProductCategories(productCategories);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
