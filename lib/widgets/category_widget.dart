import 'package:flutter/material.dart';

//Build Individual Category Widget
class CategoryWidget extends StatefulWidget {
  final String? category;
  final Color? color;
  final Function? onPressed;

  const CategoryWidget({
    Key? key,
    this.category,
    this.color,
    this.onPressed,
  });

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 10),
                blurRadius: 10,
              ),
            ],
          ),
          child: const FlutterLogo(size: 40),
        ),
      ),
    );
  }
}
