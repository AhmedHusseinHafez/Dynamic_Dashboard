import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/all_expenses_model.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/all_expenses_header.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/all_expenses_item.dart';

import 'package:flutter/material.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return BackGroundContainer(
      child: Column(
        children: [
          const AllExpensesHeader(),
          const SizedBox(height: 16),
          Row(
            children: List.generate(
              AllExpensesModel.allExpenses.length * 2 - 1,
              (index) {
                if (index.isOdd) {
                  // Add space between items
                  return const SizedBox(width: 12);
                }
                int itemIndex = index ~/ 2;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (itemIndex != isSelected) {
                        setState(() {
                          isSelected = itemIndex;
                        });
                      }
                    },
                    child: AllExpensesItem(
                      isSelected: isSelected == itemIndex,
                      model: AllExpensesModel.allExpenses[itemIndex],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BackGroundContainer extends StatelessWidget {
  const BackGroundContainer({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
