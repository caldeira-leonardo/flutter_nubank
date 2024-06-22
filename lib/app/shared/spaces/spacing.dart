import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const int kDefaultScalingFactor = 8;

class Spacing {
  const Spacing(this._val, {this.factor = kDefaultScalingFactor});
  static const xxs = Spacing(0.5); //4

  static const xs = Spacing(1); //8

  static const sm = Spacing(2); //16

  static const md = Spacing(3); //24

  static const lg = Spacing(4); //32

  static const xl = Spacing(5); //40

  static const xxl = Spacing(6); //48

  static const xxxl = Spacing(7); //56

  final double _val;

  double get value => _val * factor;

  final int factor;

  Spacing operator -(Spacing other) => Spacing(value - other.value);

  Spacing operator +(Spacing other) => Spacing(value + other.value);

  Spacing operator *(double operand) => Spacing(value * operand);
}

extension SpacingExtensions on Spacing {
  double get width => !kIsWeb ? value : value.w;

  double get height => !kIsWeb ? value : value.h;

  SizedBox get vertical => SizedBox(height: !kIsWeb ? value : value.h);

  SizedBox get horizontal => SizedBox(width: !kIsWeb ? value : value.w);
}
