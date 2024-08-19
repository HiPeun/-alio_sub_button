import 'package:flutter/material.dart';

class AlioSubButton extends StatefulWidget {
  final double? width;
  final bool isSelected;
  final bool isSelectedColor;
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final String? busyTitle;

  final bool isSelectedIcon;
  final bool isFullWidth;
  final bool isTextButton;
  final bool isSizedBox;
  final bool isFullHeight;
  final Widget? leading;
  final Widget? trailing;
  final Widget? icon;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final Function(bool?)? onTap;
  final bool isChecked;

  const AlioSubButton({
    Key? key,
    this.isSelected = false,
    this.isSelectedColor = false,
    this.borderRadius,
    this.borderColor,
    this.busyTitle,
    this.onTap,
    this.isSelectedIcon = false,
    this.isFullWidth = true,
    this.isSizedBox = false,
    this.isTextButton = false,
    this.isFullHeight = false,
    this.width,
    this.leading,
    this.trailing,
    this.icon,
    this.textStyle,
    this.padding,
    this.isChecked = false,
  }) : super(key: key);

  @override
  State<AlioSubButton> createState() => _AlioSubButtonState();
}

class _AlioSubButtonState extends State<AlioSubButton> {
  bool? isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked!;
        });
        if (widget.onTap != null) {
          widget.onTap!(isChecked);
        }
      },
      child: Container(
        width: widget.width ?? 258,
        height: 48,
        padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
          color: isChecked! ? Color(0xFF8087FF) : Colors.transparent,
          border: widget.borderColor != null
              ? Border.all(color: widget.borderColor!)
              : isChecked!
                  ? null
                  : Border.all(color: Color(0xffC9C9C9)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.leading != null) widget.leading!,
            if (widget.busyTitle != null)
              Expanded(
                child: Text(
                  widget.busyTitle!,
                  style: widget.textStyle ??
                      TextStyle(
                        color:
                            isChecked! ? Color(0xffFFFFFF) : Color(0xff787878),
                        fontSize: 18,
                      ),
                ),
              ),
            SizedBox.shrink(),
            if (widget.trailing != null) widget.trailing!,
            if (widget.icon != null)
              widget.icon!
            else
              Icon(
                isChecked! ? Icons.check_circle_outline_outlined : Icons.add,
                color: isChecked! ? Color(0xffFFFFFF) : Color(0xff787878),
              ),
          ],
        ),
      ),
    );
  }
}
