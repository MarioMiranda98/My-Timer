import 'package:flutter/material.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';

import 'widgets/simple_scaffold.dart';

Widget textStyles() => _TextStylesClass();

class _TextStylesClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SimpleScaffold(
        child: Column(
      children: [_NormalStyle(theme: theme), _ItalicStyle(theme: theme)],
    ));
  }
}

class _NormalStyle extends StatelessWidget {
  const _NormalStyle({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20.0),
          Text('Normal Style', style: theme.textTheme.bodyLarge),
          SizedBox(height: 20.0),
          Text(
            'Extra Light: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style: TextStyleManager.getExtraLightStyle(
                color: theme.primaryColorDark),
          ),
          SizedBox(height: 20.0),
          Text(
            'Light: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style:
                TextStyleManager.getLightStyle(color: theme.primaryColorDark),
          ),
          SizedBox(height: 20.0),
          Text(
            'Regular: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style:
                TextStyleManager.getRegularStyle(color: theme.primaryColorDark),
          ),
          SizedBox(height: 20.0),
          Text(
            'Medium: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style:
                TextStyleManager.getMediumStyle(color: theme.primaryColorDark),
          ),
          SizedBox(height: 20.0),
          Text(
            'Semibold: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style: TextStyleManager.getSemiBoldStyle(color: theme.primaryColor),
          ),
          SizedBox(height: 20.0),
          Text(
            'Bold: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style: TextStyleManager.getBoldStyle(color: theme.primaryColor),
          ),
        ],
      ),
    );
  }
}

class _ItalicStyle extends StatelessWidget {
  const _ItalicStyle({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20.0),
          Text('Italic Style',
              style: theme.textTheme.bodyLarge
                  ?.copyWith(fontStyle: FontStyle.italic)),
          SizedBox(height: 20.0),
          Text(
            'Extra Light: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style: TextStyleManager.getExtraLightStyle(
                color: theme.primaryColorDark, fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 20.0),
          Text(
            'Light: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style: TextStyleManager.getLightStyle(
                color: theme.primaryColorDark, fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 20.0),
          Text(
            'Regular: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style: TextStyleManager.getRegularStyle(
                color: theme.primaryColorDark, fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 20.0),
          Text(
            'Medium: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style: TextStyleManager.getMediumStyle(
                color: theme.primaryColorDark, fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 20.0),
          Text(
            'Semibold: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style: TextStyleManager.getSemiBoldStyle(
                color: theme.primaryColor, fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 20.0),
          Text(
            'Bold: Deserunt fugiat consectetur cillum aute irure minim ullamco excepteur amet in.',
            style: TextStyleManager.getBoldStyle(
                color: theme.primaryColor, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
