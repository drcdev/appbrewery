import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  final Color inActiveColor;
  final Color activeColor;
  final Widget child;
  final Function onTap;
  final bool active;

  BMICard({
    this.activeColor,
    this.inActiveColor,
    this.child,
    this.onTap,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: (active ? activeColor : inActiveColor) ??
                Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: child,
        ),
      ),
    );
  }
}

class BMIIconTile extends StatelessWidget {
  final IconData icon;
  final String label;

  const BMIIconTile({
    Key key,
    this.icon,
    this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
