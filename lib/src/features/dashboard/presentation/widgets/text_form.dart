import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/default_text_field.dart';

import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  const MyTextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: DefaultTextFieldWidget(
                title: StringsManager.customerName,
                hint: StringsManager.typeCustomerName,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: DefaultTextFieldWidget(
                title: StringsManager.customerEmail,
                hint: StringsManager.typeCustomerEmail,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: DefaultTextFieldWidget(
                title: StringsManager.itemName,
                hint: StringsManager.typeCustomerName,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: DefaultTextFieldWidget(
                title: StringsManager.itemMount,
                hint: StringsManager.uSD,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
