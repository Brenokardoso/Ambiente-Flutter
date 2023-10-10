// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
// import 'package:flutter_default_state_manager/setState/imc_set_state.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcGausRagned extends GaugeRange {
  ImcGausRagned({
    required Color color,
    required double start,
    required double end,
    required String label,
  }) : super(
          startValue: start,
          endValue: end,
          label: label,
          color: color,
          sizeUnit: GaugeSizeUnit.factor,
          startWidth: 0.65,
          endWidth: 0.65,
        );
}
