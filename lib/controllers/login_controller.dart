// import 'package:flutter/cupertino.dart';

// class LoginController  {
//   TextEditingController phoneController = TextEditingController();

//   @override
//   void onClose() {
//     phoneController.dispose();
//     super.onClose();
//   }
// }

import 'package:flutter/material.dart';

class LoginController {
  TextEditingController phoneController = TextEditingController();

  void onClose() {
    phoneController.dispose();
  }
}
