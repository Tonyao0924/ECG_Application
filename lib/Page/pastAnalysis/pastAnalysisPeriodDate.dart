import 'package:flutter/material.dart';

class PeriodDate extends StatefulWidget {
  const PeriodDate({Key? key}) : super(key: key);

  @override
  State<PeriodDate> createState() => _PeriodDateState();
}

class _PeriodDateState extends State<PeriodDate> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ChangeDateButton(
              type: _ChangeDateButtonType.prev,
              onPressed: () => null,
            ),
            const Text(
              "7/15~8/17",
              style: TextStyle(
                color: Color(0xFFADA4A5),
                fontSize: 16,
              ),
            ),
            _ChangeDateButton(
              type: _ChangeDateButtonType.next,
              onPressed: () => null,
            ),
          ],
        ),
        Positioned(
          right: 50,
          child: IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            icon: const Icon(
              Icons.calendar_month,
              color: Color(0xFF6C9A8B),
              size: 30,
            ),
            onPressed: () => null,
          ),
        )
      ],
    );
  }
}

enum _ChangeDateButtonType { prev, next }

class _ChangeDateButton extends StatelessWidget {
  final _ChangeDateButtonType type;
  final VoidCallback? onPressed;

  const _ChangeDateButton({
    Key? key,
    this.onPressed,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: IconButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        padding: const EdgeInsets.all(0.0),
        icon: Icon(
          type == _ChangeDateButtonType.prev
              ? Icons.chevron_left
              : Icons.chevron_right,
          color: const Color(0xFFADA4A5),
          size: 30,
        ),
        onPressed: () {
          if (onPressed != null) onPressed!();
        },
      ),
    );
  }
}
