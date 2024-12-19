import 'package:am_project/core/config/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowSvg extends StatelessWidget {
  const ShowSvg(
    this.assetName, {
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
  });

  final String assetName;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: width ?? AppFont.large,
      height: height ?? AppFont.large,
      fit: fit,
    );
  }
}
