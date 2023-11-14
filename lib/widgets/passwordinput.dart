import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class passwordinputField extends StatelessWidget {
  const passwordinputField({
    super.key,
    required this.hintText,
    required this.onChanged,
  });
  final String hintText;
  // final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 8, bottom: 8),
        height: 50,
        width: 250,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: TextFormField(
            obscureText: true,
            onChanged: onChanged,
            style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: 16),
            decoration: InputDecoration(
                label: Text(hintText),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 97, 176),
                    ))),
          ),
        ));
  }
}
