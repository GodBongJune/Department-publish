import 'package:department/core/constant/color_and_size.dart';
import 'package:department/core/constant/custom_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityWritePageBody extends StatelessWidget {
  const CommunityWritePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                FormField(
                  hintText: "제목",
                  maxLines: 1,
                ),
                Divider(),
                Expanded(
                  child: FormField(
                    hintText: "내용을 입력하세요",
                    maxLines: null,
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.image_outlined,
                        size: 40,
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: basicButton(
                        context: context,
                        onTap: () {},
                        buttonColor: k3DColor,
                        textColor: Colors.white,
                        text: "등록",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final int? maxLines;

  const FormField({
    super.key,
    required this.hintText,
    this.controller,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(decorationThickness: 0),
      maxLines: maxLines,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "${hintText}",
        hintStyle: TextStyle(
          color: kC8Color,
          fontSize: size15,
        ),
      ),
    );
  }
}
