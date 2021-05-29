import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WordUpperCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text
          .replaceAll(RegExp(' +'), ' ')
          .split(' ')
          .map((String str) => '${str[0].toUpperCase()}${str.substring(1)}')
          .join(' '),
      selection: newValue.selection,
    );
  }
}
