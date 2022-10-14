import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:akl/core/constant/colors.dart';
import 'package:flutter/material.dart';

final List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class HomePageAppBar extends StatefulWidget with PreferredSizeWidget {
  const HomePageAppBar({Key? key}) : super(key: key);

  @override
  State<HomePageAppBar> createState() => _HomePageAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(81);
}

class _HomePageAppBarState extends State<HomePageAppBar> {
  String dropdownValue = list.first;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: scaffoldColor,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitle(
                text: "Egypt",
                color: mainColor,
                size: 28,
              ),
              DropdownButton<String>(
                menuMaxHeight: 200,
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
                        child: CustomSubTitle(
                          text: value,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                }
                return mainColor; // Use the component's default.
              },
            ),
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.search,
          ),
        ),
      ],
    );
  }
}
