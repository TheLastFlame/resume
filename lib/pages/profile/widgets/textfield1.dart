import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/constants.dart';

class TextField1 extends StatelessWidget {
  const TextField1({
    super.key,
    required this.title,
    this.hint,
    this.isRequired = false,
    this.isObscure = false,
    required this.controller,
    this.formatters,
    this.validator,
    this.autofillHints,
    this.textInputAction,
  });
  final String title;
  final String? hint;
  final bool isRequired;
  final bool isObscure;
  final TextEditingController controller;
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? validator;
  final List<String>? autofillHints;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: appPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: appPadding, bottom: appPadding),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title),
                const SizedBox(width: appPadding),
                if (isRequired)
                  const Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
              ],
            ),
          ),
          Stack(
            children: [
              Card(
                margin: EdgeInsets.zero,
                elevation: 2,
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: appPadding * 2.5, horizontal: appPadding * 2),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(cardBorderRadius),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              TextFormField(
                controller: controller,
                obscureText: isObscure,
                validator: validator,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: formatters,
                autofillHints: autofillHints,
                textInputAction: textInputAction,
                decoration: InputDecoration(
                  // fillColor:
                  //     Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  // filled: true,
                  hintText: hint,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: appPadding * 2.5, horizontal: appPadding * 2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(cardBorderRadius),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      color: Theme.of(context).colorScheme.background,
                    ),
                    borderRadius: BorderRadius.circular(cardBorderRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary, width: 2),
                    borderRadius: BorderRadius.circular(cardBorderRadius),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
