import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitleBar extends StatelessWidget {
  final String title;
  const TitleBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const _BackButton(size: 38),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
        const _MoreButton(size: 38)
      ],
    );
  }
}

class _BackButton extends StatelessWidget {
  final double size;
  const _BackButton({Key? key, this.size = 32}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _SquareIconButton(
        size: size, icon: FontAwesomeIcons.angleLeft, onPressed: () => null);
  }
}

class _MoreButton extends StatelessWidget {
  final double size;
  const _MoreButton({Key? key, this.size = 32}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _SquareIconButton(
      size: size,
      icon: FontAwesomeIcons.ellipsis,
      onPressed: () => null,
    );
  }
}

class _SquareIconButton extends StatelessWidget {
  final double size;
  final IconData? icon;
  final VoidCallback? onPressed;
  const _SquareIconButton({Key? key, this.size = 32, this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFF3F3F3),
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          if (onPressed != null) onPressed!();
        },
        child: FaIcon(
          icon,
          color: const Color(0xFF1D1617),
          size: size / 2,
        ),
      ),
    );
  }
}
