import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipeapp/Widget/custom_drop_down.dart';

import '../core/constants.dart';

class AddFieldsSection extends StatefulWidget {
  const AddFieldsSection({
    Key? key,
    required this.formKey,
    required this.formFieldsList,
    required this.controllersList,
    required this.popUpItemsList,
    required this.sectionText,
    required this.buttonText,
    required this.validatorText,
    required this.hintText,
    required this.maxLines,
    required this.cursorColor,
  }) : super(key: key);
  final formKey;
  final String sectionText;
  final String buttonText;
  final String hintText;
  final String validatorText;
  final Color cursorColor;
  final int maxLines;
  final List formFieldsList;
  final List controllersList;
  final List<String> popUpItemsList;

  @override
  State<AddFieldsSection> createState() => _AddFieldsSectionState();
}

class _AddFieldsSectionState extends State<AddFieldsSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0).copyWith(right: 0),
      child: Form(
        key: widget.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      widget.sectionText,
                      maxLines: 1,
                      style: GoogleFonts.lora(
                        textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFF725E),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              // !: TextFields list:
            ),
            ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 8);
                },
                primary: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.formFieldsList.length,
                itemBuilder: (context, int index) {
                  int num = index + 1;
                  if (index >= 20) {
                    return const SizedBox();
                  } else {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Container(
                          width: 40,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color:  const Color(0xFFFF725E).withOpacity(0.1),
                          ),
                          child: Center(
                            child: Text(
                              '$num.',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFF725E),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextFormField(
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return widget.validatorText;
                              }
                              return null;
                            },
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFF725E),
                              ),
                            ),
                            controller: widget.controllersList[index],
                            autofocus: false,
                            autocorrect: false,
                            keyboardType: TextInputType.text,
                            obscureText: false,
                            maxLines: widget.maxLines,
                            cursorColor: widget.cursorColor,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              counterText: ' ',
                              fillColor: const Color(0xFFFF725E).withOpacity(0.1),
                              filled: true,
                              isCollapsed: true,
                              contentPadding: const EdgeInsets.all(18),
                              hintText: widget.hintText,
                              hintStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
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
                        ),
                        PopupMenuButton(
                          splashRadius: 20,
                          icon: Icon(
                            Icons.menu,
                            color: Color(0xFFFF725E),
                            size: 22,
                          ),
                          onSelected: (String? value) {
                            if (value == 'Delete item') {
                              widget.formFieldsList.removeAt(index);
                              widget.controllersList.removeAt(index);
                              FocusManager.instance.primaryFocus?.unfocus();
                              setState(() {});
                            }
                            if (value == 'Add item') {
                              widget.controllersList
                                  .add(TextEditingController());
                              widget.formFieldsList.add(3);
                              setState(() {});
                            }
                          },
                          itemBuilder: (BuildContext context) {
                            return widget.popUpItemsList
                                .map<CustomDropDownMenu<String>>(
                                  (String value) => CustomDropDownMenu(
                                    value: value,
                                    text: value,
                                    isRemovable: false,
                                  ),
                                )
                                .toList();
                          },
                        ),
                      ],
                    );
                  }
                }),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 46.0, top: 14, right: 65, left: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Material(
                        color: Color(0xFFFF725E),
                        elevation: 4,
                        child: InkWell(
                          onTap: () {
                            int val = 0;
                            widget.formFieldsList.add(val);
                            val += val++;
                            widget.controllersList.add(TextEditingController());
                            setState(() {});
                          },
                          child: Ink(
                            height: 40,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                            child: Center(
                              child: Text(
                                widget.buttonText,
                                style: GoogleFonts.sansita(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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
