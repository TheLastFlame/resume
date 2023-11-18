import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/constants.dart';

class Datepicker1 extends StatelessWidget {
  const Datepicker1({
    super.key,
    required this.hint,
    this.isRequired = false,
    required this.controller,
    this.formatters,
    this.validator,
  });
  final String hint;
  final bool isRequired;
  final TextEditingController controller;
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    DateTime? date;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: appPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: appPadding, horizontal: appPadding * 2),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(hint),
                const SizedBox(width: appPadding),
                if (isRequired)
                  const Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
              ],
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(cardBorderRadius),
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: date ??
                    DateTime.now().add(const Duration(days: 365 * -18 - 4)),
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
              ).then(
                (value) {
                  date = value;
                  controller.text =
                      value?.toString().split(' ')[0] ?? controller.text;
                },
              );
            },
            child: IgnorePointer(
              child: TextFormField(
                controller: controller,
                validator: validator,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: formatters,
                decoration: InputDecoration(
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: appPadding * 2),
                    child: Icon(Icons.calendar_month_outlined),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: appPadding * 2.5, horizontal: appPadding * 2),
                  // errorBuilder: (value) => Align(
                  //   alignment: Alignment.centerRight,
                  //   child: Text(
                  //     value,
                  //     style: TextStyle(
                  //       color: Theme.of(context).colorScheme.error,
                  //     ),
                  //   ),
                  // ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(cardBorderRadius),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.6)),
                    borderRadius: BorderRadius.circular(cardBorderRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary, width: 2),
                    borderRadius: BorderRadius.circular(cardBorderRadius),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
