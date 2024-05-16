import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:record_platform_interface/record_platform_interface.dart';

class RecordPluginWeb {
  static void registerWith(Registrar registrar) {
    RecordPlatform.instance = RecordPluginWebWrapper();
  }
}

class RecordPluginWebWrapper extends RecordPlatform {
  @override
  Future<void> create(String recorderId) async {}

  @override
  Future<void> dispose(String recorderId) async {}

  @override
  Future<bool> hasPermission(String recorderId) async {
    return false;
  }

  @override
  Future<bool> isPaused(String recorderId) async {
    return false;
  }

  @override
  Future<bool> isRecording(String recorderId) async {
    return false;
  }

  @override
  Future<void> pause(String recorderId) async {}

  @override
  Future<void> resume(String recorderId) async {}

  @override
  Future<void> start(
    String recorderId,
    RecordConfig config, {
    required String path,
  }) async {}

  @override
  Future<Stream<Uint8List>> startStream(
    String recorderId,
    RecordConfig config,
  ) async {
    return const Stream.empty();
  }

  @override
  Future<String?> stop(String recorderId) async {
    return null;
  }

  @override
  Future<void> cancel(String recorderId) async {}

  @override
  Future<List<InputDevice>> listInputDevices(String recorderId) async {
    return [];
  }

  @override
  Future<bool> isEncoderSupported(
    String recorderId,
    AudioEncoder encoder,
  ) async {
    return false;
  }

  @override
  Future<Amplitude> getAmplitude(String recorderId) async {
    return Amplitude(current: 0, max: 0);
  }

  @override
  Stream<RecordState> onStateChanged(String recorderId) {
    return const Stream.empty();
  }
}
