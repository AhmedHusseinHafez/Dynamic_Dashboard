import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTextFieldWidget extends StatefulWidget {
  const DefaultTextFieldWidget({
    super.key,
    this.hint,
    this.controller,
    this.textInputAction,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
    this.suffixIcon,
    this.isPassword,
    required this.title,
    this.isPhoneNum,
    this.maxLines,
    this.maxLength,
    this.buildCounter,
  });

  final String? hint;
  final String title;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final List<FilteringTextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final bool? isPassword;
  final bool? isPhoneNum;
  final int? maxLines;
  final int? maxLength;
  final Widget? Function(
    BuildContext, {
    required int currentLength,
    required bool isFocused,
    required int? maxLength,
  })? buildCounter;

  @override
  State<DefaultTextFieldWidget> createState() => _DefaultTextFieldWidgetState();
}

class _DefaultTextFieldWidgetState extends State<DefaultTextFieldWidget> {
  // ignore: prefer_final_fields
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: StyleManager.getRegularStyle(context, fontSize: FontSize.s16),
        ),
        const SizedBox(height: 12),
        TextFormField(
          obscureText: widget.isPassword == true ? _obscureText : false,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          validator: widget.validator,
          controller: widget.controller,
          textInputAction: widget.textInputAction,
          keyboardType: widget.keyboardType,
          // style: Theme.of(context).textTheme.titleSmall,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onSubmitted,
          // maxLines: widget.maxLines ?? 1,
          // maxLength: widget.maxLength,
          // buildCounter: widget.buildCounter,

          // textDirection:
          //     widget.keyboardType == TextInputType.phone ? TextDirection.ltr : null,
          // textAlign: widget.textAlign ?? TextAlign.start,
          // inputFormatters: widget.keyboardType == TextInputType.number ||
          //         widget.keyboardType == TextInputType.phone
          //     ? [FilteringTextInputFormatter.allow(RegExp('[0-9+]'))]
          //     : [],
          decoration: InputDecoration(
            hintStyle: _getTFFFontStyle(context),
            labelStyle: _getTFFFontStyle(context),
            errorStyle: _getTFFFontStyle(context, error: true),
            // enabledBorder: _getTFFBorderStyle(),
            // focusedBorder: _getTFFBorderStyle(color: ColorManager.secondary),
            // errorBorder: _getTFFBorderStyle(color: ColorManager.brightRed),
            // focusedErrorBorder: _getTFFBorderStyle(),
            // border: _getTFFBorderStyle(),
            // suffixIcon: widget.suffixIcon ?? _buildSuffixIcon(),
            hintText: widget.hint,
          ),
        ),
      ],
    );
  }

  static TextStyle _getTFFFontStyle(BuildContext context, {bool? error}) {
    return error ?? false
        ? StyleManager.getLightStyle(
            context,
            color: ColorManager.coral,
            fontSize: FontSize.s16,
          )
        : StyleManager.getLightStyle(
            context,
            color: ColorManager.gray,
            fontSize: FontSize.s16,
          );
  }
}
