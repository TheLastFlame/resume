import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:resume/constants.dart';

class DropdownSwitcher1 extends StatelessWidget {
  const DropdownSwitcher1({
    super.key,
    required this.hint,
    this.isRequired = false,
    required this.onChanged,
    required this.options,
    this.validator,
    this.selectedIndex,
  });
  final String hint;
  final bool isRequired;
  final void Function(int?)? onChanged;
  final List<String> options;
  final int? selectedIndex;
  final String? Function(String?)? validator;

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
          DropdownButtonFormField2<String>(
            value: selectedIndex != null ? options[selectedIndex!] : null,
            isExpanded: true,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                top: appPadding * 2.5,
                bottom: appPadding * 2.5,
                right: appPadding * 2,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(cardBorderRadius),
              ),
            ),
            items: options
                .map((item) => DropdownItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (val) => onChanged!(options.indexOf(val!)),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.keyboard_arrow_down,
              ),
              iconSize: 24,
            ),
            dropdownStyleData: DropdownStyleData(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(cardBorderRadius),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: appPadding * 2),
            ),
          ),
        ],
      ),
    );
  }
}
