import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/main_localizations.dart';
import '/data.dart';

// var renderBox;
// var translateButtonWidgetSize;

class GoogleCancelTranslationButton extends StatelessWidget {
  final setStateParent;

  const GoogleCancelTranslationButton({
    Key? key,
    required this.setStateParent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: googleTranslationInputController.text == ''
          ? null
          : googleTranslationInputController.text.length <= 5000
              ? () async {
                  setStateParent(() {
                    loading = false;
                    isTranslationCanceled = true;
                  });
                }
              : null,
      child: Text(
        AppLocalizations.of(context)!.cancel,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
