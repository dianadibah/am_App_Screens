import 'package:am_project/core/config/app_colors.dart';
import 'package:flutter/material.dart';

class BuildRangeSlider extends StatefulWidget {
  const BuildRangeSlider({super.key, this.onChangeStart});
  final void Function(RangeValues val)? onChangeStart;
  @override
  State<BuildRangeSlider> createState() => _BuildRangeSliderState();
}

class _BuildRangeSliderState extends State<BuildRangeSlider> {
  RangeValues _currentRangeValues = const RangeValues(50, 80);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          sliderTheme: SliderThemeData(
        trackHeight: 1.0,
        trackShape: const RoundedRectSliderTrackShape(),
        activeTrackColor: AppColors.redCarBold,
        inactiveTrackColor: AppColors.greyFilter,
        thumbShape: const RoundSliderThumbShape(
          enabledThumbRadius: 30.0,
          pressedElevation: 8.0,
        ),
        thumbColor: AppColors.redCarBold,
        overlayColor: AppColors.redCarBold.withOpacity(0.2),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 32.0),
        tickMarkShape: const RoundSliderTickMarkShape(),
        activeTickMarkColor: AppColors.redCarBold,
        inactiveTickMarkColor: Colors.white,
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: AppColors.redCarBold,
      )),
      child: RangeSlider(
        values: _currentRangeValues,
        max: 100,
        min: 50,
        divisions: 10,
        onChangeEnd: (val) {},
        onChangeStart: widget.onChangeStart,
        labels: RangeLabels(
          _currentRangeValues.start.round().toString(),
          _currentRangeValues.end.round().toString(),
        ),
        onChanged: (RangeValues values) {
          setState(() {
            _currentRangeValues = values;
          });
        },
      ),
    );
  }
}
