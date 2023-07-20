import 'package:flutter/material.dart';
// Flutter Documentation for dialogView function
//
// The dialogView function is a utility function used to create an AlertDialog widget with customizable title, content,
// and action buttons.
//
// Parameters:
// - title: A required String representing the title of the AlertDialog.
// - content: A required String representing the main content of the AlertDialog.
// - onTapOke: A required Function that will be executed when the "Oke" button is tapped.
// - onTapBack: An optional Function that will be executed when the "Kembali" button is tapped. If provided, the "Kembali"
//             button will be visible, otherwise it will be hidden.
//
// Returns:
// An AlertDialog widget with the specified title, content, and action buttons. The AlertDialog will have an "Oke" button
// that triggers the onTapOke function when tapped. If the onTapBack function is provided, the AlertDialog will also have
// a "Kembali" button that triggers the onTapBack function when tapped.

AlertDialog dialogView(
    {required String title,
    required String content,
    required Function() onTapOke,
    Function()? onTapBack}) {
  return AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: [
      Visibility(
        visible: onTapBack != null,
        child: TextButton(
          onPressed: onTapBack,
          child: const Text('Kembali'),
        ),
      ),
      TextButton(
        onPressed: onTapOke,
        child: const Text('Oke'),
      ),
    ],
  );
}
