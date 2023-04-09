import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TicketStorageController extends GetxController {
  final textController = TextEditingController();

  void fabPressed(Widget widget) async {
    final cdata = await Clipboard.getData(Clipboard.kTextPlain);
    final text = cdata?.text ?? '';

    textController.value = TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(
        offset: text.length,
      ),
    );
    Get.bottomSheet(
      widget,
      isScrollControlled: true,
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
