import 'package:flutter/material.dart';

OutlineInputBorder kFocusedErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.red),
  borderRadius: BorderRadius.circular(10),
);
OutlineInputBorder kErrorBorder = OutlineInputBorder(
  borderSide: const BorderSide(color: Colors.red),
  borderRadius: BorderRadius.circular(10),
);
OutlineInputBorder kEnabledBorder = OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.circular(10),
);
OutlineInputBorder kFocusedBorder = OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.circular(10),
);
OutlineInputBorder kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
);