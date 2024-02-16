import 'package:hansin/widget/passcode/configurations/key_pad_button_config.dart';

class KeyPadConfig {
  const KeyPadConfig({
    this.buttonConfig,
    this.actionButtonConfig,
    this.inputStrings = _numbers,
    List<String>? displayStrings,
    this.clearOnLongPressed = false,
  }) : displayStrings = displayStrings ?? inputStrings;


  final KeyPadButtonConfig? buttonConfig;


  final KeyPadButtonConfig? actionButtonConfig;


  final List<String> inputStrings;


  final List<String> displayStrings;

  final bool clearOnLongPressed;

  static const List<String> _numbers = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];

  /// Copies a [KeyPadConfig] with new values.
  KeyPadConfig copyWith({
    KeyPadButtonConfig? buttonConfig,
    List<String>? inputStrings,
    List<String>? displayStrings,
    bool? clearOnLongPressed,
  }) {
    return KeyPadConfig(
      buttonConfig: buttonConfig ?? this.buttonConfig,
      inputStrings: inputStrings ?? this.inputStrings,
      displayStrings: displayStrings ?? this.displayStrings,
      clearOnLongPressed: clearOnLongPressed ?? this.clearOnLongPressed,
    );
  }
}
