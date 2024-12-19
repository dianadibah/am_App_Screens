import 'dart:io';

import 'package:am_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'app_boxs_name.dart';
import 'pref_keys.dart';

class GlobalFunctions {
  GlobalFunctions._();

  static bool isAuth() {
    Box localBox = Hive.box(AppBox.configBox);
    bool isauth = localBox.containsKey(PrefKeys.token);
    return isauth;
  }

  static bool isFirstOpen() {
    Box localBox = Hive.box(AppBox.configBox);
    bool isFirstOpen = localBox.containsKey(PrefKeys.firstOpen);
    return isFirstOpen;
  }

  static Future<String?> getToken() async {
    Box localBox = Hive.box(AppBox.configBox);
    String? token = await localBox.get(PrefKeys.token);
    return token;
  }

  static Future<void> setToken(String token) async {
    Box localBox = Hive.box(AppBox.configBox);
    await localBox.put(PrefKeys.token, token);
  }

  static Future<void> removeToken() async {
    Box localBox = Hive.box(AppBox.configBox);
    await localBox.delete(PrefKeys.token);
  }

  static String? validateEmail(String? value, BuildContext context) {
    const pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    final regex = RegExp(pattern);

    return value == ""
        ? "The field is empty! Please enter a value.."
        : !regex.hasMatch(value!)
            ? "Enter a valid email address"
            : null;
  }

  static String? validatePassword(String? password, BuildContext context) {
    if (password == "") {
      return "The field is empty! Please enter a value..";
    }
    // Reset error message
    String errorMessage = '';
    // Password length greater than  8
    if (password!.length < 8) {
      errorMessage += "Password must be at least 8 characters long.";
    }

    return errorMessage.isNotEmpty ? errorMessage : null;
  }

  static valid(String val, int min, int max, BuildContext context) {
    if (val == "") {
      return "The field is empty! Please enter a value..";
    }
    if (val.length < min) {
      return "Characters cannot be smaller than $min.";
    }
    if (val.length > max) {
      return "characters cannot be greater than  $max.";
    }
  }

  static String? validPhoneNumber(String phoneNumber) {
    if (phoneNumber == "") {
      return "The field is empty! Please enter a value..";
    }
    RegExp regex =
        RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$');

    // Test the input against the regex pattern
    return !regex.hasMatch(phoneNumber) ? "Enter a valid phone number" : null;
  }

  static Future<File?>? chooseImagePicker() async {
    File? image;
    ImagePicker picker = ImagePicker();
    XFile? imagePicker = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
        preferredCameraDevice: CameraDevice.front);
    if (imagePicker != null) {
      image = File(imagePicker.path);
      print('image path ${image.toString()}');
      return image;
    }
    return null;
  }

  static Future<List<File>?>? chooseMultiImagePicker() async {
    final ImagePicker picker = ImagePicker();
    // final LostDataResponse response = await picker.retrieveLostData();
    // if (response.isEmpty) {
    //   return null;
    // }
    // final List<XFile>? files = response.files;

    // if (files != null) {
    //   _handleLostFiles(files);
    // } else {
    //   _handleError(response.exception);
    // }
    List<File>? image;
    List<XFile>? listImages = await picker.pickMultiImage(imageQuality: 50);
    print('yyy $listImages');
    image = listImages.map<File>((xfile) => File(xfile.path)).toList();
    print('image path ${image.toString()}');
    return image;
    return null;
  }
}
