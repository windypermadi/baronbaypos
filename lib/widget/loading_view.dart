import 'package:baronbay_pos/settings/theme.dart';
import 'package:flutter/material.dart';

// Flutter Documentation for loadingDefault function
//
// The loadingDefault function is a utility function used to display a circular progress indicator at the center of the screen.
// This is typically used to indicate that the application is currently loading or performing some background task.
//
// Returns:
// A CircularProgressIndicator widget with the specified color and strokeWidth, centered on the screen.

Widget loadingDefault() {
  return Center(
      child: CircularProgressIndicator(color: primaryColor, strokeWidth: 2));
}
