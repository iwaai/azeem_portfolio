import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
class CommonFunctions
{

  static showConfirmAlert({required String title, required String content, required Function() onYes}) async
  {

    Get.defaultDialog(
      title: title,
      content: Text(content),
      actions: [
        ElevatedButton(
            onPressed: (){
              onYes();
              Get.back();
            },
            child: const Text("Yes")
        ),
        ElevatedButton(
            onPressed: (){
              Get.back();
            },
            child: const Text("No")
        )
      ]
    );
  }

  static String formatDate(DateTime dateTime)
  {
    return DateFormat("dd-MMMM-yyyy").format(dateTime);
  }


  static closeKeyboard(){
    FocusScope.of(Get.context!).unfocus();
  }

  static bool isURL(String str) {
    // Regular expression to match URLs
    final RegExp urlRegex = RegExp(
      r'^(?:http|https):\/\/[\w\-]+(?:\.[\w\-]+)+[\w\-.,@?^=%&:/~\+#]*[\w\-@?^=%&/~\+#]$',
      caseSensitive: false,
      multiLine: false,
    );

    // Check if the string matches the URL regex
    return urlRegex.hasMatch(str);
  }

}
