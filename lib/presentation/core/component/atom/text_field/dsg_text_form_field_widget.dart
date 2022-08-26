import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DSGTextFormFieldWidget extends StatelessWidget {
  const DSGTextFormFieldWidget({
    Key? key,
    this.hintText,
    this.errorText,
    this.focusNode,
    this.controller,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.maxLines = 1,
    this.maxLength,
    this.enabled = true,
    this.obscureText = false,
    this.hasError = false,
    this.autocorrect = false,
  }) : super(key: key);

  final String? hintText;
  final String? errorText;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final int? maxLines;
  final int? maxLength;
  final bool enabled;
  final bool obscureText;
  final bool hasError;
  final bool autocorrect;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: colorScheme.onPrimary),
      decoration: InputDecoration(
        hintStyle: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(color: Theme.of(context).hintColor),
        errorStyle: Theme.of(context)
            .textTheme
            .overline
            ?.copyWith(color: Theme.of(context).errorColor),
        hintText: hintText,
        errorText: errorText,
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: padding2,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: padding2,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: colorScheme.error,
            width: padding2,
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: colorScheme.error,
            width: padding2,
          ),
        ),
      ),
      focusNode: focusNode,
      controller: controller,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization,
      maxLines: maxLines,
      maxLength: maxLength,
      enabled: enabled,
      obscureText: obscureText,
      autocorrect: autocorrect,
    );
  }
}
