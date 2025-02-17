import 'package:ecommerce_no_shoppu/data/repositories/address/address_repository.dart';
import 'package:ecommerce_no_shoppu/features/personlization/models/address_model.dart';
import 'package:ecommerce_no_shoppu/utils/helpers/network_manager.dart';
import 'package:ecommerce_no_shoppu/utils/popups/full_screen_loder.dart';
import 'package:ecommerce_no_shoppu/utils/popups/loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressController extends GetxController {
  static AddressController get instance => Get.find();

  final RxBool refreshData = true.obs;
  final name = TextEditingController();
  final phoneNumber = TextEditingController();
  final street = TextEditingController();
  final postalCode = TextEditingController();
  final city = TextEditingController();
  final state = TextEditingController();
  final country = TextEditingController();

  GlobalKey<FormState> addressFormKey = GlobalKey<FormState>();

  final Rx<AddressModel> selectedAddress = AddressModel.empty().obs;
  final addressRepository = Get.put(AddressRepository());

  /// Fetch all user-specific addresses
  Future<List<AddressModel>> getAllUserAddresses() async {
    try {
      final addresses = await addressRepository.fetchUserAddresses();
      selectedAddress.value = addresses.firstWhere(
          (element) => element.selectedAddress,
          orElse: () => AddressModel.empty());

      return addresses;
    } catch (e) {
      TLoaders.errorSnackBar(
        title: 'Address not found',
        message: e.toString(),
      );

      return [];
    }
  }

  Future selectAddress(AddressModel newSelectedAddress) async {
    try {
      // Clear the "selected" field
      if (selectedAddress.value.id.isNotEmpty) {
        addressRepository.updateSelectedField(selectedAddress.value.id, false);

        // Assign selected address
        newSelectedAddress.selectedAddress = true;
        selectedAddress.value = newSelectedAddress;

        // Set the "selected" field to true for the newly selected address
        addressRepository.updateSelectedField(newSelectedAddress.id, true);
      }
    } catch (e) {
      TLoaders.errorSnackBar(
          title: 'Error in Selection', message: e.toString());
    }
  }

  /// Add new Address
  Future addNewAddresses() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog('Storing Address...',
          'assets/images/animations/loader-animation.json');

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!addressFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Save Address Data
      final address = AddressModel(
        id: '',
        name: name.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        street: street.text.trim(),
        city: city.text.trim(),
        state: state.text.trim(),
        postalCode: postalCode.text.trim(),
        country: country.text.trim(),
        selectedAddress: true,
      );

      final id = await addressRepository.addAddress(address);

      address.id = id;
      await selectAddress(address);

      TFullScreenLoader.stopLoading();

      TLoaders.successSnackBar(
          title: 'Congratulations desu!',
          message: 'Kimi no addoressu has been saved succesfully nandesu!');

      refreshData.toggle();

      resetFormFields();
    } catch (e) {}
  }

  /// Function to reset form fields
  void resetFormFields() {
    name.clear();
    phoneNumber.clear();
    street.clear();
    postalCode.clear();
    city.clear();
    state.clear();
    country.clear();
    addressFormKey.currentState?.reset();
  }
}
