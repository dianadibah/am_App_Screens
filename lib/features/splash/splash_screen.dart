// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   late Size size;

//   late AnimationController _controller;
//   late Animation<AlignmentGeometry> _alignmentAnimation1;
//   late Animation<double> _sizeAnimation;
//   late Animation<Color?> _colorAnimation;
//   late Animation<double> _borderRadiusAnimation;
//   late Animation<double> _spreadRadiusAnimation;

//   @override
//   void didChangeDependencies() {
//     size = MediaQuery.sizeOf(context);
//     super.didChangeDependencies();
//   }

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 4),
//     );

//     _alignmentAnimation1 = Tween<AlignmentGeometry>(
//             begin: Alignment.topCenter, end: Alignment.center)
//         .animate(CurvedAnimation(
//             parent: _controller,
//             curve: const Interval(0.0, 0.1, curve: Curves.linear)));
// //-----------------------------Size-------------------------------------
//     _sizeAnimation = TweenSequence<double>(
//       [
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 0, end: 200),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 200, end: 200),
//         ),
//         TweenSequenceItem(
//           weight: 0.05,
//           tween: Tween(begin: 200.0, end: 275.0),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 275.0, end: 275.0),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 275.0, end: 700),
//         ),
//         TweenSequenceItem(
//           weight: 0.55,
//           tween: Tween(begin: 700, end: 700),
//         ),
//       ],
//     ).animate(_controller);

//     //---------------------------Color----------------------------------------

//     _colorAnimation = TweenSequence<Color?>(
//       [
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: ColorTween(begin: Colors.red, end: Colors.red),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: ColorTween(begin: Colors.red, end: Colors.red),
//         ),
//         TweenSequenceItem(
//           weight: 0.05,
//           tween: ColorTween(begin: Colors.white, end: Colors.white),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: ColorTween(begin: Colors.white, end: Colors.white),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: ColorTween(begin: Colors.white, end: Colors.red),
//         ),
//         TweenSequenceItem(
//           weight: 0.55,
//           tween: ColorTween(begin: Colors.red, end: Colors.red),
//         ),
//       ],
//     ).animate(_controller);

//     //--------------------boarderRadiusAnimation--------------------------
//     _borderRadiusAnimation = TweenSequence<double>(
//       [
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 1000, end: 1000),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 1000, end: 1000),
//         ),
//         TweenSequenceItem(
//           weight: 0.05,
//           tween: Tween(begin: 1000.0, end: 1000.0),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 1000.0, end: 1000.0),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 1000.0, end: 0.0),
//         ),
//         TweenSequenceItem(
//           weight: 0.55,
//           tween: Tween(begin: 0.0, end: 0.0),
//         ),
//       ],
//     ).animate(_controller);

//     //-------------------spreadRadiusAnimation----------------------------
//     _spreadRadiusAnimation = TweenSequence<double>(
//       [
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 0, end: 0),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 0, end: 0),
//         ),
//         TweenSequenceItem(
//           weight: 0.05,
//           tween: Tween(begin: 0, end: 15),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 15, end: 15),
//         ),
//         TweenSequenceItem(
//           weight: 0.1,
//           tween: Tween(begin: 15, end: 0),
//         ),
//         TweenSequenceItem(
//           weight: 0.55,
//           tween: Tween(begin: 0, end: 0),
//         ),
//       ],
//     ).animate(_controller);
//     _controller.repeat();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Multi Stage Animation')),
//         body: AnimatedBuilder(
//           animation: _controller,
//           builder: (context, child) {
//             return Align(
//               alignment: _alignmentAnimation1.value,
//               child: Container(
//                   decoration: BoxDecoration(
//                     color: _colorAnimation.value,
//                     borderRadius:
//                         BorderRadius.circular(_borderRadiusAnimation.value),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.red.withOpacity(0.2),
//                         spreadRadius: _spreadRadiusAnimation.value,
//                         blurRadius: 20,
//                       ),
//                     ],
//                   ),
//                   height: _sizeAnimation.value,
//                   width: _sizeAnimation.value),
//             );
//           },
//         ));
//   }
// }

// /*AlignTransition(
//             alignment: Tween<AlignmentGeometry>(
//                     begin: Alignment.topCenter, end: Alignment.center)
//                 .animate(_alignmentAnimation1),
//             child: DecoratedBoxTransition(
//               decoration: _colorAnimation1.animate(CurvedAnimation(
//                   parent: _controller,
//                   curve: const Interval(0.3, 0.40, curve: Curves.linear))),
//               child: AnimatedBuilder(
//                 animation: _sizeAnimation1,
//                 builder: (context, child) {
//                   print("value${_sizeAnimation1.value}");
//                   return SizedBox(
//                     width: _sizeAnimation1.value *
//                         200, // تغيير العرض بناءً على القيمة
//                     height: _sizeAnimation1.value *
//                         200, // تغيير الارتفاع بناءً على القيمة
//                     child: child,
//                   );
//                 },
//               ),
//             ))*/
import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:am_project/core/constant/general_widget/show_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auth/presentation/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Size size;

  late AnimationController _controller;
  late Animation<double> _leftAnimation;
  late Animation<double> _rightAnimation;
  late Animation<double> _topAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation1;
  late Animation<Color?> _colorAnimation2;
  late Animation<double> _borderRadiusAnimation1;
  late Animation<double> _borderRadiusAnimation2;
  late Animation<double> _borderRadiusAnimation3;
  late Animation<double> _borderRadiusAnimation4;
  late Animation<double> _spreadRadiusAnimation;
  //------------logo-------------------
  late Animation<double> _topAnimationLogo;
  late Animation<double> _colorAnimationLogo;
  //-----------TextAndButton-----------
  late Animation<double> _textAndButtonAnimation;
  //-----------CarImage----------------
  late Animation<double> _carImageAnimation;
  @override
  void didChangeDependencies() {
    size = MediaQuery.sizeOf(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

//-----------------------------Size-------------------------------------
    _sizeAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0.w, end: 183.33.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 183.33.w, end: 183.33.w),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 183.33.w, end: 252.08.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 252.08.w, end: 252.08.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 252.08.w, end: 825.01.w),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 825.01.w, end: 825.01.w),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: Tween(begin: 825.01.w, end: 825.01.w),
        ),
      ],
    ).animate(_controller);
    //---------------------------AlignAnimation-------------------------
    _leftAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 229.17.w, end: 88.45.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 88.45.w, end: 88.45.w),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 88.45.w, end: 55.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 55.w, end: 55.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0.w, end: -45.83.w),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: -45.83.w, end: -45.83.w),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: Tween(begin: -45.83.w, end: -45.83.w),
        ),
      ],
    ).animate(_controller);

    _rightAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 229.17.w, end: 88.45.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 88.45.w, end: 88.45.w),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 88.45.w, end: 55.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 55.w, end: 55.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0.w, end: -45.83.w),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: -275.w, end: -275.w),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: Tween(begin: -275.w, end: -275.w),
        ),
      ],
    ).animate(_controller);

    _topAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0.h, end: 253.29.h),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 253.29.h, end: 253.29.h),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 253.29.h, end: 222.38.h),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 222.38.h, end: 222.38.h),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 222.38.h, end: 0.h),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 0.h, end: 0.h),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 0.h, end: -420.24.h),
        ),
        TweenSequenceItem(
          weight: 0.25,
          tween: Tween(begin: -420.24.h, end: -420.24.h),
        ),
      ],
    ).animate(_controller);
    //---------------------------Color------------------------------------

    _colorAnimation1 = TweenSequence<Color?>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: ColorTween(
              begin: AppColors.primaryRed[0], end: AppColors.primaryRed[0]),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: ColorTween(
              begin: AppColors.primaryRed[0], end: AppColors.primaryRed[0]),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: ColorTween(
              begin: AppColors.scaffoldBackgroundColor,
              end: AppColors.scaffoldBackgroundColor),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: ColorTween(
              begin: AppColors.scaffoldBackgroundColor,
              end: AppColors.scaffoldBackgroundColor),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: ColorTween(
              begin: AppColors.scaffoldBackgroundColor,
              end: AppColors.primaryRed[0]),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: ColorTween(
              begin: AppColors.primaryRed[0], end: AppColors.primaryRed[0]),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: ColorTween(
              begin: AppColors.primaryRed[0], end: AppColors.primaryRed[0]),
        ),
      ],
    ).animate(_controller);
    _colorAnimation2 = TweenSequence<Color?>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: ColorTween(
              begin: AppColors.primaryRed[1], end: AppColors.primaryRed[1]),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: ColorTween(
              begin: AppColors.primaryRed[1], end: AppColors.primaryRed[1]),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: ColorTween(
              begin: AppColors.scaffoldBackgroundColor,
              end: AppColors.scaffoldBackgroundColor),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: ColorTween(
              begin: AppColors.scaffoldBackgroundColor,
              end: AppColors.scaffoldBackgroundColor),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: ColorTween(
              begin: AppColors.scaffoldBackgroundColor,
              end: AppColors.primaryRed[1]),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: ColorTween(
              begin: AppColors.primaryRed[1], end: AppColors.primaryRed[1]),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: ColorTween(
              begin: AppColors.primaryRed[1], end: AppColors.primaryRed[1]),
        ),
      ],
    ).animate(_controller);

    //--------------------boarderRadiusAnimation--------------------------
    _borderRadiusAnimation1 = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500, end: 500),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500, end: 500),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 500.0, end: 500.0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500.0, end: 500.0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500.0, end: 0.0),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 0.0, end: 0.0),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: Tween(begin: 400.0, end: 400.0),
        ),
      ],
    ).animate(_controller);
    _borderRadiusAnimation2 = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500, end: 500),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500, end: 500),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 500.0, end: 500.0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500.0, end: 500.0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500.0, end: 0.0),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 0.0, end: 0.0),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: Tween(begin: 300.0, end: 300.0),
        ),
      ],
    ).animate(_controller);
    _borderRadiusAnimation3 = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500, end: 500),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500, end: 500),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 500.0, end: 500.0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500.0, end: 500.0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500.0, end: 0.0),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 0.0, end: 0.0),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: Tween(begin: 0.0, end: 0.0),
        ),
      ],
    ).animate(_controller);
    _borderRadiusAnimation4 = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500, end: 500),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500, end: 500),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 500.0, end: 500.0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500.0, end: 500.0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 500.0, end: 0.0),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 0.0, end: 0.0),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: Tween(begin: 0.0, end: 0.0),
        ),
      ],
    ).animate(_controller);
    //-------------------spreadRadiusAnimation----------------------------
    _spreadRadiusAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0.w, end: 0.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0.w, end: 0.w),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 0.w, end: 18.33.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 18.33.w, end: 18.33.w),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 18.33.w, end: 0.w),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 0.w, end: 0.w),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: Tween(begin: 0.w, end: 0.w),
        ),
      ],
    ).animate(_controller);
    //--------------------LOGO------LOGO--------LOGO----------------------
    _topAnimationLogo = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 321.98.h, end: 321.98.h),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 321.98.h, end: 321.98.h),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 321.98.h, end: 321.98.h),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 321.98.h, end: 321.98.h),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 321.98.h, end: 321.98.h),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 321.98.h, end: 321.98.h),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 321.98.h, end: 80.39.h),
        ),
        TweenSequenceItem(
          weight: 0.25,
          tween: Tween(begin: 80.39.h, end: 80.39.h),
        ),
      ],
    ).animate(_controller);
    _colorAnimationLogo = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 1, end: 1),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 1, end: 1),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 1, end: 1),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: Tween(begin: 1, end: 1),
        ),
      ],
    ).animate(_controller);
    //--------------------Text-And-Button---------------------------------
    _textAndButtonAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.4,
          tween: Tween(begin: 1, end: 1),
        ),
      ],
    ).animate(_controller);
    //-------------------Car-image----------------------------------------
    _carImageAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.05,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.1,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.15,
          tween: Tween(begin: 0, end: 0),
        ),
        TweenSequenceItem(
          weight: 0.25,
          tween: Tween(begin: 1, end: 1),
        ),
      ],
    ).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("width:${size.width}");
    print("width:${size.height}");
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Stack(
              children: [
                _textAndButtonAnimation.value == 1
                    ? Stack(
                        children: [
                          Positioned(
                              bottom: 40,
                              left: 20,
                              child: Column(
                                children: [
                                  Text(
                                    "Premium cars Enjoy \nthe Luxury",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                    textAlign: TextAlign.start,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Buy , sell , or trade luxury\ncarsinstantly anyware in the world",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: AppColors.black,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, top: 30, bottom: 30),
                                    child: CustomButton(
                                        width: 275.w,
                                        height: 43.h,
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen(),
                                          ));
                                        },
                                        isFilled: true,
                                        child: Text(
                                          "Let's Go",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                color: AppColors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        )),
                                  ),
                                ],
                              )),
                        ],
                      )
                    : const SizedBox(),
                Stack(
                  children: [
                    Positioned(
                      left: _leftAnimation.value,
                      right: _rightAnimation.value,
                      top: _topAnimation.value,
                      child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              _colorAnimation1.value!,
                              _colorAnimation2.value!
                            ]),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                    _borderRadiusAnimation1.value),
                                bottomRight: Radius.circular(
                                    _borderRadiusAnimation2.value),
                                topLeft: Radius.circular(
                                    _borderRadiusAnimation3.value),
                                topRight: Radius.circular(
                                    _borderRadiusAnimation4.value)),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.redCarBold.withOpacity(0.45),
                                spreadRadius: _spreadRadiusAnimation.value,
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          height: _sizeAnimation.value,
                          width: _sizeAnimation.value),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Positioned(
                      top: _topAnimationLogo.value,
                      left: 131.08.w,
                      child: ShowSvg(
                        _colorAnimationLogo.value == 0
                            ? AppImages.logoRedSvg
                            : AppImages.logowhiteSvg,
                        width: 45.83.w,
                        height: 45.83.w,
                      ),
                    ),
                  ],
                ),
                _carImageAnimation.value == 1
                    ? Stack(
                        children: [
                          Positioned(
                              top: 225.84.h,
                              right: -160.41.w,
                              child: Image.asset(
                                AppImages.carSplash,
                                width: 403.55.h,
                                height: 293.33.w,
                              ))
                        ],
                      )
                    : const SizedBox(),
              ],
            );
          },
        ));
  }
}
