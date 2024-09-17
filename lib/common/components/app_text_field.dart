import 'package:flutter/material.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class AppTextFormField extends StatefulWidget {
  final String lable;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final bool isPass;
  final TextAlign textAlign;
  final bool obsActiveLable;
  const AppTextFormField({super.key, required this.lable, this.controller, this.validator, this.isPass = false, this.textAlign = TextAlign.start, this.obsActiveLable = false});

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool obs = false;
  @override
  void initState() {
    super.initState();
    obs = widget.isPass;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      textAlign: widget.textAlign,
      obscureText: obs,
      decoration: InputDecoration(
        label: Text(
          widget.lable,
          style: const TextStyle(color: Color(0xFF999999)),
        ),
        floatingLabelBehavior: widget.obsActiveLable ? FloatingLabelBehavior.never : null,
        suffix: AppImageAsset(
          height: 16,
          width: 16,
          widget.isPass 
            ? ImageRes.icObscure
            : ImageRes.icClose,
          onTap: () {
            if(widget.isPass) {
              setState(() {
              obs = !obs; 
              });
            } else {
            widget.controller?.clear();
            }
          },
        ),
        enabledBorder: _outlineBorder(),
        border: _outlineBorder(),
        errorBorder: _outlineBorder(),
        focusedBorder: _outlineBorder(),
        disabledBorder: _outlineBorder(),
      ),
    );
  }

  UnderlineInputBorder _outlineBorder()  => const UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF999999)),
  );
}