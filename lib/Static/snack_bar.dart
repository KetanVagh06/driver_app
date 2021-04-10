import 'package:flutter/material.dart';

class Snackbar {
  void showSnack(String message, context, Function undo) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        action: undo != null
            ? SnackBarAction(
                label: 'Undo',
                onPressed: undo,
              )
            : null,
      ));
// _scaffoldKey.currentState.showSnackBar(
//   SnackBar(
//     content: Text(message),
//     action: undo != null
//         ? SnackBarAction(
//             textColor: AppColors.primay_Colors,
//             label: "Undo",
//             onPressed: undo,
//           )
//         : null,
//   ),
// );
}
