import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants.dart';

class TitleAndDescriptionFormSection extends StatefulWidget {
  TitleAndDescriptionFormSection({
    super.key,
    required this.formKey,
    required this.titleController,
    required this.descriptionController,
    required this.servesValue,
    required this.cookTimeController,
    required this.onChanged,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController cookTimeController;
  String? servesValue;
  final Function(String?) onChanged;

  @override
  State<TitleAndDescriptionFormSection> createState() =>
      _TitleAndDescriptionFormSectionState();
}

class _TitleAndDescriptionFormSectionState
    extends State<TitleAndDescriptionFormSection> {
  List<String> dropdownItems = [
    '2',
    '4',
    '6',
    '8',
    '10',
    '12',
    '14',
    '16',
    '18',
    '20',
    '22',
    '24',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Form(
        key: widget.formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Title Required';
                }
                return null;
              },
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFF725E),
                ),
              ),
              controller: widget.titleController,
              maxLines: 2,
              cursorHeight: 30,
              autofocus: false,
              autocorrect: false,
              keyboardType: TextInputType.text,
              obscureText: false,
              decoration: InputDecoration(
                counterText: ' ',
                fillColor: const Color(0xFFFF725E).withOpacity(0.1),
                filled: true,
                isCollapsed: true,
                contentPadding: const EdgeInsets.all(18),
                hintText: "Title: Mother's vegetable soup",
                hintStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFF725E),
                  ),
                ),
                focusedErrorBorder: kFocusedErrorBorder,
                errorBorder: kErrorBorder,
                enabledBorder: kEnabledBorder,
                focusedBorder: kFocusedBorder,
                border: kBorder,
              ),
            ),
            TextFormField(
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Description Required';
                }
                return null;
              },
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFF725E),
                ),
              ),
              controller: widget.descriptionController,
              maxLines: 6,
              cursorHeight: 30,
              autofocus: false,
              autocorrect: false,
              keyboardType: TextInputType.text,
              obscureText: false,
              decoration: InputDecoration(
                counterText: ' ',
                fillColor: const Color(0xFFFF725E).withOpacity(0.1),
                filled: true,
                isCollapsed: true,
                contentPadding: const EdgeInsets.all(18),
                hintText:
                    "Description: What's the origin of your recipe? What inspired it? what makes it special?",
                hintStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFF725E),
                  ),
                ),
                focusedErrorBorder: kFocusedErrorBorder,
                errorBorder: kErrorBorder,
                enabledBorder: kEnabledBorder,
                focusedBorder: kFocusedBorder,
                border: kBorder,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Serves',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Color(0xFFFF725E),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SizedBox(
                          width: 135,
                          child: Align(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                isExpanded: true,
                                hint: const Row(
                                  children: [
                                    Icon(
                                      Icons.group,
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Select',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                items: dropdownItems
                                    .map((item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ))
                                    .toList(),
                                value: widget.servesValue,
                                onChanged: widget.onChanged,
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                ),
                                iconSize: 17,
                                iconEnabledColor: Colors.white,
                                iconDisabledColor: Colors.grey,
                                buttonHeight: 50,
                                buttonPadding:
                                    const EdgeInsets.only(left: 14, right: 14),
                                buttonDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFFF725E),
                                ),
                                itemHeight: 40,
                                itemPadding:
                                    const EdgeInsets.only(left: 14, right: 14),
                                dropdownMaxHeight: 200,
                                dropdownWidth: 80,
                                dropdownPadding: null,
                                dropdownDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Color(0xFFFF725E).withOpacity(0.1),
                                    border: Border.all(
                                      color: Color(0xFFFF725E).withOpacity(0.1),
                                    )),
                                dropdownElevation: 8,
                                scrollbarRadius: const Radius.circular(40),
                                scrollbarThickness: 8,
                                scrollbarAlwaysShow: true,
                                offset: const Offset(-20, 0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cook time',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Color(0xFFFF725E),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SizedBox(
                          width: 135,
                          child: TextFormField(
                            validator: (String? value) {
                              if (value!.length >= 20) {
                                return 'Too much';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.visiblePassword,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    height: 1.6),
                            autofocus: false,
                            autocorrect: false,
                            textInputAction: TextInputAction.done,
                            controller: widget.cookTimeController,
                            decoration: InputDecoration(
                              hintStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFFFF725E),
                                    fontWeight: FontWeight.w400,
                                    height: 1.6),
                              ),
                              hintText: '1 hr 30 mins',
                              fillColor: Color(0xFFFF725E).withOpacity(0.1),
                              filled: true,
                              counterText: ' ',
                              contentPadding: const EdgeInsets.all(8),
                              focusedErrorBorder: kFocusedErrorBorder,
                              errorBorder: kErrorBorder,
                              enabledBorder: kEnabledBorder,
                              focusedBorder: kFocusedBorder,
                              // border: kBorder,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
