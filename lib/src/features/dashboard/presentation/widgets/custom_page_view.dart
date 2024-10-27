import 'package:dots_indicator/dots_indicator.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({
    super.key,
  });

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  late PageController pageController;
  double currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();

    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page ?? 0;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      StringsManager.myCard,
      "${StringsManager.myCard} 2",
      "${StringsManager.myCard} 3",
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Listener(
          onPointerSignal: (pointerSignal) {
            if (pointerSignal is PointerScrollEvent) {
              // Detect mouse scroll event
              if (pointerSignal.scrollDelta.dy > 0) {
                // Scroll down - go to the next page
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                );
              } else if (pointerSignal.scrollDelta.dy < 0) {
                // Scroll up - go to the previous page
                pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                );
              }
            }
          },
          child: ExpandablePageView(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            children: List.generate(
                3,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: MyCard(title: titles[index]),
                    )),
          ),
        ),
        const SizedBox(height: 19),
        DotsIndicator(
          dotsCount: titles.length,
          position: currentPage.toInt(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(32, 8),
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
      ],
    );
  }
}
