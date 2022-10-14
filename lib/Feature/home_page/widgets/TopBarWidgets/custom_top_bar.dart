import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:akl/core/constant/colors.dart';
import 'package:flutter/material.dart';

import 'searchContainer.dart';

final List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class CustomTopBar extends StatefulWidget {
  const CustomTopBar({super.key});

  @override
  State<CustomTopBar> createState() => _CustomTopBarState();
}

class _CustomTopBarState extends State<CustomTopBar> {
  final List items = ["cairo", 'alex', 'tanta'];
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitle(
                text: "Egypt",
                color: mainColor,
                size: 30,
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down_sharp),
                style: const TextStyle(color: theGreyDash),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    ).toList(),
              ),
            ],
          ),
          const SearchContainer(),
        ],
      ),
    );
  }
}
