library parental_gates;

import 'package:flutter/material.dart';
import 'package:parental_gates/permission_screen.dart';

class Permission {
  static void getPermission(
      {required BuildContext context,
      void Function()? onSuccess,
      void Function()? onFail}) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const GetParentPermition(),
        )).then((value) {
      if (value != null) {
        if (value) {
          if (onSuccess != null) onSuccess();
        } else {
          if (onFail != null) onFail();
        }
      } else {
        if (onFail != null) onFail();
      }
    });
  }
}
