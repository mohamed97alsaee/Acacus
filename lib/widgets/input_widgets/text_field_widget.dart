import 'package:flutter/material.dart';

import '../../helpers/consts.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      required this.controller,
      this.label,
      required this.validator,
      required this.hintText});
  final TextEditingController controller;
  final String? label;
  final String? hintText;

  final FormFieldValidator<String?> validator;
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            if (widget.label != null)
              Row(
                children: [
                  Text(widget.label.toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: mainColor.withOpacity(0.2),
                  hintText: widget.hintText,
                  hintStyle: TextStyle(color: mainColor.withOpacity(0.5)),
                  // prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(color: mainColor.withOpacity(0.2), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(color: mainColor.withOpacity(0.2), width: 1),
                  ),
                  focusColor: mainColor.withOpacity(0.2),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(color: mainColor.withOpacity(0.2), width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(color: mainColor.withOpacity(0.2), width: 1),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(color: mainColor.withOpacity(0.2), width: 1),
                  ),
                  errorStyle: const TextStyle(color: Colors.red)),
              keyboardType: TextInputType.emailAddress,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: widget.validator,
            ),
          ],
        ),
      ),
    );
  }
}
