import 'dart:isolate';
import 'user.dart';

enum MessageType {
  start,
  stop,
  userRequest,
  userResponse;

  static MessageType fromString(String value) {
    return switch (value) {
      'start' => MessageType.start,
      'userRequest' => MessageType.userRequest,
      'userResponse' => MessageType.userResponse,
      'stop' => MessageType.stop,
      _ => throw Exception('Unknown message type: $value'),
    };
  }
}
