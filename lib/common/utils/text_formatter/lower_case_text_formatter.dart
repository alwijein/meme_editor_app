part of 'text_formatter.dart';

class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    if (newText.isNotEmpty) {
      String firstLetter = newText[0];

      String formattedValue = firstLetter.toLowerCase();

      newText = formattedValue + newText.substring(1);
    }

    return TextEditingValue(
      text: newText,
      selection: newValue.selection,
    );
  }
}
