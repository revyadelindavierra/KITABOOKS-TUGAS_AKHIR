import 'package:flutter/material.dart';

class otpp extends StatelessWidget {
  List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            4,
            (index) => SizedBox(
              width: 50.0,
              child: TextField(
                controller: controllers[index],
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                onChanged: (value) {
                  if (value.length == 1 && index < 3) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: InputDecoration(
                  counter: Offstage(),
                  contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 6,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
