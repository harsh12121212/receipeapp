import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDownMenu<T> extends PopupMenuEntry<T> {
  const CustomDropDownMenu(
      {required this.value,
      required this.text,
      this.callback,
      required this.isRemovable,
      Key? key})
      : super(key: key);
  final T value;
  final String text;
  final Function()? callback;
  final bool isRemovable;

  @override
  // ignore: library_private_types_in_public_api
  _CustomDropDownMenuState<T> createState() => _CustomDropDownMenuState<T>();

  @override
  double get height => 32;

  @override
  bool represents(T? value) {
    return this.value == value;
  }
}

class _CustomDropDownMenuState<T> extends State<CustomDropDownMenu<T>> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 45, minWidth: 100),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop<T>(widget.value);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.text,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFF725E),
                    ),
                  ),
                ),
                widget.isRemovable == false
                    ? const SizedBox()
                    : GestureDetector(
                        onTap: widget.callback,
                        child: Image.asset(
                          'assets/profile.png',
                          width: 18,
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
