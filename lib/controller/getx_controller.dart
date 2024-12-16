import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TextControllers extends GetxController {
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> amountController = TextEditingController().obs;
}
