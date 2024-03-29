import 'package:flutter/material.dart';

//Build Individual Category Widget
class CategoryWidget extends StatefulWidget {
  final String? category;
  final Color? color;
  final Function? onPressed;
  final String? image;
  // final String?  title;

  const CategoryWidget({
    Key? key,
    this.category,
    this.color,
    this.onPressed,
    this.image,
  });

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 100,
            width: 100,
            // padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              //image: Image(image: AssetImage(image)),
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Text("${widget.category}")
        ],
      ),
    );
  }
}

