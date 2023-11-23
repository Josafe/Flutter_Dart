import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/dashboard.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(),
        Expanded(child: SearchField()),
        TarjetaPerfil()
      ],
    );
  }
}

