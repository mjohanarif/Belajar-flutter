import 'dart:async';
import 'package:flutter/material.dart';

enum ColorEvent { to_amber, to_lightblue }

class ColorBloc {
  Color _color = Colors.amber;

  StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();

  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  StreamController<Color> _statusController = StreamController<Color>();
  StreamSink<Color> get _statusSink => _statusController.sink;
  Stream<Color> get statusStream => _statusController.stream;

  void _mapEventToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.to_amber) {
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }

    _statusSink.add(_color);
  }

  ColorBloc() {
    _eventController.stream.listen(_mapEventToState);
  }
  void dispose() {
    _eventController.close();
    _statusController.close();
  }
}
