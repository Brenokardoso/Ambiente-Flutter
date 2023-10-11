// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauge_range.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialFormsGauge extends StatelessWidget {
  final double imc;
  const RadialFormsGauge({Key? key, required this.imc});

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
            ImcGaugeRange(
                color: Colors.blue, start: 12.5, end: 18.5, label: ("Magreza")),
            ImcGaugeRange(
                color: Colors.green, start: 18.5, end: 24.5, label: ("Normal")),
            ImcGaugeRange(
                color: Colors.yellow,
                start: 24.5,
                end: 29.9,
                label: ("Sobrepeso")),
            ImcGaugeRange(
                color: Colors.red,
                start: 29.9,
                end: 39.9,
                label: ("Obesidade")),
            ImcGaugeRange(
                color: Colors.orange,
                start: 39.9,
                end: 47.9,
                label: ("Obesidade Morbida")),
          ],
          // ignore: prefer_const_literals_to_create_immutables
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
