import 'dart:developer';
import 'dart:math';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import 'package:timelines/timelines.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

import '../../../../../uiproviders/extras_provider.dart';

const kTileHeight = 50.0;

final completeColor = primaryOrange;
final inProgressColor = HexColor("#242830");
final todoColor = HexColor("#242830");

class SendingTimeLine extends StatefulWidget {
  @override
  _SendingTimeLineState createState() => _SendingTimeLineState();
}

class _SendingTimeLineState extends State<SendingTimeLine> {
  int _processIndex = 1;

  Color getColor(int index) {
    if (index == _processIndex) {
      return inProgressColor;
    } else if (index < _processIndex) {
      return completeColor;
    } else {
      return todoColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    ExtraProvider streamIndex = context.watch<ExtraProvider>();

    return Container(
      height: 100,
    
      width: MediaQuery.of(context).size.width ,
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          direction: Axis.horizontal,
          connectorTheme: ConnectorThemeData(space: 30.0, thickness: 5.0),
        ),
        builder: TimelineTileBuilder.connected(
          connectionDirection: ConnectionDirection.before,
          itemExtentBuilder: (_, __) =>
              MediaQuery.of(context).size.width / _processes.length,
          contentsBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: AppTextOverPass(
                  text: _processes[index],
                  color: textLightColor,
                ));
          },
          indicatorBuilder: (_, index) {
            var color;
            var child;
            if (index == 0) {
              return Stack(
                children: [
                  CustomPaint(
                    size: Size(30.0, 30.0),
                    painter: _BezierPainter(
                      color: primaryOrange,
                      drawStart: index > 0,
                      drawEnd: index < _processIndex,
                    ),
                  ),
                  DotIndicator(
                    size: 30.0,
                    color: streamIndex.trackTimeline.contains(index)
                        ? primaryOrange
                        : HexColor("#242830"),
                    child: Center(
                      child: AppTextOverPass(
                        text: "1",
                        color: textLightColor,
                      ),
                    ),
                  ),
                ],
              );
            } else if (index == 1) {
              return Stack(
                children: [
                  CustomPaint(
                    size: Size(30.0, 30.0),
                    painter: _BezierPainter(
                      color: primaryOrange,
                      drawStart: index > 0,
                      drawEnd: index < _processIndex,
                    ),
                  ),
                  DotIndicator(
                    size: 30.0,
                    color: streamIndex.trackTimeline.contains(index)
                        ? primaryOrange
                        : HexColor("#242830"),
                    child: Center(
                      child: AppTextOverPass(
                        text: "2",
                        color: textLightColor,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Stack(
                children: [
                  CustomPaint(
                    size: Size(30.0, 30.0),
                    painter: _BezierPainter(
                      color: HexColor("#242830"),
                      drawStart: index > 0,
                      drawEnd: index < _processIndex,
                    ),
                  ),
                  DotIndicator(
                    size: 30.0,
                    color: streamIndex.trackTimeline.contains(index)
                        ? primaryOrange
                        : HexColor("#242830"),
                    child: Center(
                      child: AppTextOverPass(
                        text: "3",
                        color: textLightColor,
                      ),
                    ),
                  ),
                ],
              );
            }
          },
          connectorBuilder: (_, index, type) {
            if (streamIndex.sendPackageIndex == 0) {
              return DottedLine(
                dashColor: HexColor("#242830"),
              );
            } else if (streamIndex.sendPackageIndex == 1 && index == 1) {
              return DottedLine(
                // dashLength: 5,
                dashGapLength: 1,
                lineThickness: 1,
                direction: Axis.horizontal,
                //  lineLength: 100,
                dashColor: primaryOrange,
              );
            } else if (streamIndex.sendPackageIndex == 2 && index == 2) {
              return DottedLine(
                dashColor: primaryOrange,
                dashGapLength: 1,
                lineThickness: 1,
                direction: Axis.horizontal,
                //  lineLength: 100,
              );
            } else {
              return DottedLine(
                dashColor: streamIndex.sendPackageIndex == 2
                    ? primaryOrange
                    : HexColor("#242830"),
                dashGapLength: streamIndex.sendPackageIndex == 2 ? 1 : 4.0,
                lineThickness: streamIndex.sendPackageIndex == 2 ? 1 : 1,
              );
            }
          },
          itemCount: _processes.length,
        ),
      ),
    );
  }
}

/// hardcoded bezier painter
/// TODO: Bezier curve into package component
class _BezierPainter extends CustomPainter {
  const _BezierPainter({
    required this.color,
    this.drawStart = true,
    this.drawEnd = true,
  });

  final Color color;
  final bool drawStart;
  final bool drawEnd;

  Offset _offset(double radius, double angle) {
    return Offset(
      radius * cos(angle) + radius,
      radius * sin(angle) + radius,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = color;

    final radius = size.width / 2;

    var angle;
    var offset1;
    var offset2;

    var path;

    if (drawStart) {
      angle = 3 * pi / 4;
      offset1 = _offset(radius, angle);
      offset2 = _offset(radius, -angle);
      path = Path()
        ..moveTo(offset1.dx, offset1.dy)
        ..quadraticBezierTo(0.0, size.height / 2, -radius,
            radius) // TODO connector start & gradient
        ..quadraticBezierTo(0.0, size.height / 2, offset2.dx, offset2.dy)
        ..close();

      canvas.drawPath(path, paint);
    }
    if (drawEnd) {
      angle = -pi / 4;
      offset1 = _offset(radius, angle);
      offset2 = _offset(radius, -angle);

      path = Path()
        ..moveTo(offset1.dx, offset1.dy)
        ..quadraticBezierTo(size.width, size.height / 2, size.width + radius,
            radius) // TODO connector end & gradient
        ..quadraticBezierTo(size.width, size.height / 2, offset2.dx, offset2.dy)
        ..close();

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(_BezierPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.drawStart != drawStart ||
        oldDelegate.drawEnd != drawEnd;
  }
}

final _processes = [
  'Sender’s Details',
  'Reciever’s Detials',
  'Item Details',
];
