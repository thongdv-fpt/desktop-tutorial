import 'dart:ui';

import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final Widget? actionButton;
  final Color? titleColor;
  final Color? backgroundColor;
  final VoidCallback? onTitleClick;
  final VoidCallback? onBackPress;
  final Widget? titleWidget;
  final bool? enableBack;
  final bool? centerTitle;
  final double height;


  CustomAppBar({
    Key? key,
    this.title,

    this.actionButton,
    this.titleColor,
    this.backgroundColor,
    this.onTitleClick,
    this.onBackPress,
    this.titleWidget,

    this.enableBack = true,
    this.centerTitle = false,
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0.0,
      centerTitle: centerTitle!,

      leading: enableBack!
          ? IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
            // FocusScopeNode currentFocus = FocusScope.of(Get.context!);
            //
            // if (!currentFocus.hasPrimaryFocus &&
            //     currentFocus.focusedChild != null) {
            //   FocusManager.instance.primaryFocus!.unfocus();
            // }
            // if (onBackPress == null) {
            //   Get.back();
            // } else {
            //   onBackPress!();
            // }
          })
          : null,
      title: GestureDetector(
        onTap: onTitleClick ?? () {},
        child: Row(
          children: [
            title != null
                ? Expanded(
                child: Text(
                  title ?? '',
                  textAlign: centerTitle! ? TextAlign.center : TextAlign.left,
                  maxLines: 1,
                  style: TextStyle(color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                ))
                : const SizedBox(),
            SizedBox(width: 10),
            titleWidget != null
                ? title == null
                ? Expanded(child: titleWidget!)
                : titleWidget!
                : const SizedBox(),
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 0),
          child: actionButton ?? const SizedBox(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}