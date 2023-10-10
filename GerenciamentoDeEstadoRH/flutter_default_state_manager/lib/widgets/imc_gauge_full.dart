// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauges_range.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcGaugeFull extends StatelessWidget {
  double imc;
  ImcGaugeFull({Key? key, required this.imc});
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          showLabels: false,
          showAxisLine: false,
          showTicks: false,
          minimum: 12.5,
          maximum: 47.9,
          ranges: [
            ImcGausRagned(
              color: Colors.red,
              start: 12.5,
              end: 18.5,
              label: "Magreza",
            ),
            ImcGausRagned(
              color: Color.fromARGB(255, 116, 212, 27),
              start: 18.5,
              end: 24.5,
              label: "normal",
            ),
            ImcGausRagned(
              color: Color.fromARGB(255, 47, 60, 243),
              start: 24.5,
              end: 29.9,
              label: "Sobrepeso",
            ),
            ImcGausRagned(
              color: Color.fromARGB(255, 238, 219, 48),
              start: 29.9,
              end: 39.9,
              label: "Obesidade",
            ),
            ImcGausRagned(
              color: Color.fromARGB(255, 255, 32, 244),
              start: 39.9,
              end: 47.5,
              label: "Obesidade grave",
            ),
          ],
          pointers: [
            NeedlePointer(
              value: imc,
              enableAnimation: true,
            )
          ],
        ),
      ],
    );
  }
}
