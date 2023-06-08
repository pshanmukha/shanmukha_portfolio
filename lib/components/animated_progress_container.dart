import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:shanmukha_portfolio/constants.dart';

class AnimatedProgressContainer extends StatefulWidget {
  final String codeSkill;
  const AnimatedProgressContainer({Key? key, required this.codeSkill}) : super(key: key);

  @override
  _AnimatedProgressContainerState createState() => _AnimatedProgressContainerState();
}

class _AnimatedProgressContainerState extends State<AnimatedProgressContainer> with TickerProviderStateMixin {
  late AnimationController _controller1;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      vsync: this,
      duration: defaultDuration
    );
    _startAnimation1();
  }

  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }

  void _startAnimation1() {
    _controller1.reset();
    _controller1.animateTo(1.0, curve: Curves.easeInOut);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: CustomPaint(
        foregroundPainter: AnimatedBorderPainter(
          animation: _controller1,
          strokeColor: primaryColor,
          pathType: PathType.rRect,
          animationDirection: AnimationDirection.clockwise,
          startingPercentage: 0,
          radius: const Radius.circular(12),
        ),
        child: OutlinedButton(
          onPressed: null,
          child: Text(widget.codeSkill,style: const TextStyle(color: Colors.white),),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.transparent),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}


class AnimatedBorderPainter extends CustomPainter {
  final Animation<double> _animation;
  final PathType _pathType;
  final double _strokeWidth;
  final Color _strokeColor;
  final Radius _radius;
  final int _startingPercentage;
  final AnimationDirection _animationDirection;

  AnimatedBorderPainter({
    required animation,
    PathType pathType = PathType.rect,
    double strokeWidth = 4.0,
    Color strokeColor = Colors.white,
    Radius radius = const Radius.circular(4.0),
    int startingPercentage = 0,
    AnimationDirection animationDirection = AnimationDirection.clockwise,
  })  : assert(strokeWidth > 0, 'strokeWidth must be greater than 0.'),
        assert(startingPercentage >= 0 && startingPercentage <= 100,
        'startingPercentage must lie between 0 and 100.'),
        _animation = animation,
        _pathType = pathType,
        _strokeWidth = strokeWidth,
        _strokeColor = strokeColor,
        _radius = radius,
        _startingPercentage = startingPercentage,
        _animationDirection = animationDirection,
        super(repaint: animation);

  late Path _originalPath;
  late Paint _paint;

  @override
  void paint(Canvas canvas, Size size) {
    final animationPercent = _animation.value;

    // Construct original path once when animation starts
    if (animationPercent == 0.0) {
      _originalPath = _createOriginalPath(size);
      _paint = Paint()
        ..strokeWidth = _strokeWidth
        ..style = PaintingStyle.stroke
        ..color = _strokeColor;
    }

    final currentPath = _createAnimatedPath(
      _originalPath,
      animationPercent,
    );

    canvas.drawPath(currentPath, _paint);
  }

  @override
  bool shouldRepaint(AnimatedBorderPainter oldDelegate) => true;

  Path _createOriginalPath(Size size) {
    switch (_pathType) {
      case PathType.rect:
        return _createOriginalPathRect(size);
      case PathType.rRect:
        return _createOriginalPathRRect(size);
      case PathType.circle:
        return _createOriginalPathCircle(size);
    }
  }

  Path _createOriginalPathRect(Size size) {
    Path originalPath = Path()
      ..addRect(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..lineTo(0, -(_strokeWidth / 2));
    if (_startingPercentage > 0 && _startingPercentage < 100) {
      return _createPathForStartingPercentage(
          originalPath, PathType.rect, size);
    }
    return originalPath;
  }

  Path _createOriginalPathRRect(Size size) {
    Path originalPath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          _radius,
        ),
      );
    if (_startingPercentage > 0 && _startingPercentage < 100) {
      return _createPathForStartingPercentage(originalPath, PathType.rRect);
    }
    return originalPath;
  }

  Path _createOriginalPathCircle(Size size) {
    Path originalPath = Path()
      ..addOval(
        Rect.fromLTWH(0, 0, size.width, size.height),
      );
    if (_startingPercentage > 0 && _startingPercentage < 100) {
      return _createPathForStartingPercentage(originalPath, PathType.circle);
    }
    return originalPath;
  }

  Path _createPathForStartingPercentage(Path originalPath, PathType pathType,
      [Size? size]) {
    // Assumes that original path consists of one subpath only
    final pathMetrics = originalPath.computeMetrics().first;
    final pathCutoffPoint = (_startingPercentage / 100) * pathMetrics.length;
    final firstSubPath = pathMetrics.extractPath(0, pathCutoffPoint);
    final secondSubPath =
    pathMetrics.extractPath(pathCutoffPoint, pathMetrics.length);
    if (pathType == PathType.rect) {
      Path path = Path()
        ..addPath(secondSubPath, Offset.zero)
        ..lineTo(0, -(_strokeWidth / 2))
        ..addPath(firstSubPath, Offset.zero);
      switch (_startingPercentage) {
        case 25:
          path.lineTo(size!.width + _strokeWidth / 2, 0);
          break;
        case 50:
          path.lineTo(size!.width - _strokeWidth / 2, size.height);
          break;
        case 75:
          path.lineTo(0, size!.height + _strokeWidth / 2);
          break;
        default:
      }
      return path;
    }
    return Path()
      ..addPath(secondSubPath, Offset.zero)
      ..addPath(firstSubPath, Offset.zero);
  }

  Path _createAnimatedPath(
      Path originalPath,
      double animationPercent,
      ) {
    // ComputeMetrics can only be iterated once!
    final totalLength = originalPath
        .computeMetrics()
        .fold(0.0, (double prev, PathMetric metric) => prev + metric.length);

    final currentLength = totalLength * animationPercent;

    return _extractPathUntilLength(originalPath, currentLength);
  }

  Path _extractPathUntilLength(
      Path originalPath,
      double length,
      ) {
    var currentLength = 0.0;

    final path = Path();

    var metricsIterator = _animationDirection == AnimationDirection.clockwise
        ? originalPath.computeMetrics().iterator
        : originalPath.computeMetrics().toList().reversed.iterator;

    while (metricsIterator.moveNext()) {
      var metric = metricsIterator.current;

      var nextLength = currentLength + metric.length;

      final isLastSegment = nextLength > length;
      if (isLastSegment) {
        final remainingLength = length - currentLength;
        final pathSegment = _animationDirection == AnimationDirection.clockwise
            ? metric.extractPath(0.0, remainingLength)
            : metric.extractPath(
            metric.length - remainingLength, metric.length);

        path.addPath(pathSegment, Offset.zero);
        break;
      } else {
        // There might be a more efficient way of extracting an entire path
        final pathSegment = metric.extractPath(0.0, metric.length);
        path.addPath(pathSegment, Offset.zero);
      }

      currentLength = nextLength;
    }

    return path;
  }
}

enum PathType {
  rect,
  rRect,
  circle,
}

enum AnimationDirection {
  clockwise,
  counterclockwise,
}