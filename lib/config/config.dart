import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Config {
  static final colors = _Color();
}

class _Color {
  Color downloadButton = const Color(0xFF00C2FF);
  Color previwButton = const Color(0xFFE5655D);
  Color appBarColor = Color(0xFF9BD0E0);
}

showCustomSnackBar(BuildContext context, String msg) =>
    showTopSnackBar(Overlay.of(context), CustomSnackBar.error(message: msg));
