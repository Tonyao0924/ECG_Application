import 'package:flutter/material.dart';

class PeriodTab extends StatelessWidget {
  const PeriodTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, left: 13, right: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          gradient: const LinearGradient(
            begin: Alignment(-2.0, -2.0),
            end: Alignment(2.0, 3.0),
            colors: <Color>[
              Color(0xFF9DCEFF),
              Color(0xFF6C9A8B),
            ],
          ),
        ),
        child: SizedBox(
          height: 33,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _TabButton(
                onPressed: () => null,
                text: "天",
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
              ),
              _TabDivider(),
              _TabButton(
                onPressed: () => null,
                text: "週",
              ),
              _TabDivider(),
              _TabButton(
                onPressed: () => null,
                text: "月",
              ),
              _TabDivider(),
              _TabButton(
                onPressed: () => null,
                text: "6個月",
              ),
              _TabDivider(),
              _TabButton(
                onPressed: () => null,
                text: "年",
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              )
            ],
          ),
        ));
  }
}

class _TabButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final BorderRadiusGeometry borderRadius;
  const _TabButton(
      {Key? key,
        required this.text,
        this.onPressed,
        this.borderRadius = BorderRadius.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        child: TextButton(
          onPressed: () {
            if (onPressed != null) onPressed!();
          },
          style: TextButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            primary: Colors.white,
          ),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
            strutStyle: const StrutStyle(
              forceStrutHeight: true,
            ),
          ),
        ));
  }
}

class _TabDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 1.5,
      height: 15.0,
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
