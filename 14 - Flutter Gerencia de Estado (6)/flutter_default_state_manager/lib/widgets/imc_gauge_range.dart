import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcGaugeRange extends GaugeRange {
  ImcGaugeRange({
    super.key,
    required super.color,
    required super.startValue,
    required super.endValue,
    required super.label,
    super.sizeUnit = GaugeSizeUnit.factor,
    super.labelStyle = const GaugeTextStyle(fontFamily: 'times', fontSize: 12),
    super.startWidth = 0.65,
    super.endWidth = 0.65,
  });
}
