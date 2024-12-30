import 'package:ecommerce_no_shoppu/common/widgets/app_bar/appbar.dart';
import 'package:ecommerce_no_shoppu/features/personlization/controllers/update_name_controller.dart';
import 'package:ecommerce_no_shoppu/utils/constants/sizes.dart';
import 'package:ecommerce_no_shoppu/utils/constants/text_strings.dart';
import 'package:ecommerce_no_shoppu/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
Widget build(BuildContext context) {
  final controller = Get.put(UpdateNameController());

  return Scaffold(
    /// Custom Appbar
    appBar: CustomAppBar(
      showBackArrow: true,
      title: Text(
        'Change Name',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    ), // TAppBar
    
    body: Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Headings
          Text(
            'Use real name for easy verification. This name will appear on several pages.',
            style: Theme.of(context).textTheme.labelMedium,
          ), // Text

          const SizedBox(height: TSizes.spaceBtwSections),

          /// Text field and Button
          Form(
            key: controller.updateUserNameFormKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.firstName,
                  validator: (value) => TValidator.validateEmptyText('First name', value),
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ), 
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  controller: controller.lastName,
                  validator: (value) => TValidator.validateEmptyText('Last name', value),
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ), 
              ],
            ),
          ), 

          const SizedBox(height: TSizes.spaceBtwSections),

          /// Save Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.updateUserName(),
              child: const Text('Save'),
            ),
          ), 
        ],
      ),
    ),
  );
}

}
