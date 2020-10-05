import 'package:flutter/material.dart';
import 'package:invmovieconcept1/configs/AppDimensions.dart';
import 'package:invmovieconcept1/configs/TextStyles.dart';
import 'package:invmovieconcept1/widgets/Buttons/Boxed.dart';

import 'Base.dart';

void showBottomSheetWithBoxButtons({
  // Contexts
  BuildContext context,
  Function(BuildContext) appinit,
  Future<void> Function(BuildContext context) button1,
  Future<void> Function(BuildContext context) button2,

  // Strings
  String title,
  String label1,
  String label2,

  // Icons
  IconData icon1,
  IconData icon2,
}) {
  Scaffold.of(context).showBottomSheet(
    (bottomSheetContext) {
      appinit(bottomSheetContext);

      return BottomSheetBase(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: AppDimensions.padding * 1,
              horizontal: AppDimensions.padding * 2,
            ),
            child: Text(
              title,
              style: TextStyles.heading56,
            ),
          ),
          Row(
            children: [
              BoxedButton(
                icon: icon1,
                label: label1.toUpperCase(),
                onPressed: () => button1(bottomSheetContext),
              ),
              BoxedButton(
                icon: icon2,
                label: (label2).toUpperCase(),
                onPressed: () => button2(bottomSheetContext),
              ),
            ],
          ),
        ],
      );
    },
    backgroundColor: Colors.transparent,
  );
}
