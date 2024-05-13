import 'package:flutter/material.dart';

class NavbarItemButton extends StatefulWidget {
  final Function() onTap;
  final String text;
  final Widget? icon;
  const NavbarItemButton({super.key, required this.onTap, required this.text, this.icon});

  @override
  State<NavbarItemButton> createState() => _NavbarItemButtonState();
}

class _NavbarItemButtonState extends State<NavbarItemButton> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (val){
        setState(() {
          _isHover = val;
        });
      },
      hoverColor: Theme.of(context).hoverColor,
      borderRadius: BorderRadius.circular(6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        child: widget.icon == null ?
        _buttonText() :
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.icon!,
            const SizedBox(width: 3,),
            _buttonText()
          ],
        ),
      )

    );
  }
  Widget _buttonText(){
    return Text(widget.text, style:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: "Poppins", color: Theme.of(context).textTheme.bodyMedium?.color),);
  }
}
