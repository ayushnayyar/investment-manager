import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_manager/widgets/add_investment/uppercase_formatter.dart';

class StringInput extends StatefulWidget {
  const StringInput({
    required this.onChange,
    required this.errorText,
    required this.labelText,
    required this.hint,
    required this.allCaps,
  });

  final String errorText;
  final String labelText;
  final String hint;
  final bool allCaps;

  final Function(String) onChange;

  @override
  _StringInputState createState() => _StringInputState();
}

class _StringInputState extends State<StringInput> {
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
      ),
      child: TextFormField(
        inputFormatters: widget.allCaps
            ? <TextInputFormatter>[
                UpperCaseFormatter(),
              ]
            : null,
        textCapitalization: widget.allCaps == false ? TextCapitalization.words : TextCapitalization.none,
        onChanged: widget.onChange,
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return widget.errorText;
          }
          return null;
        },
        decoration: InputDecoration(
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: const OutlineInputBorder(),
          labelText: widget.labelText,
          hintText: widget.hint,
        ),
      ),
    );
  }
}
