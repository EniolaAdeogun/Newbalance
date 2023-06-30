import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key, this.icon , this.onTap
  });

 final IconData? icon;
 final void Function ()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(icon, color: Colors.white,),
      ),
    );
  }
}
