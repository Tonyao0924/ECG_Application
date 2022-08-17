import 'package:flutter/material.dart';
import 'symptomCheckPage.dart';

class GridItem extends StatefulWidget {
  final Item item;
  final ValueChanged<bool> isSelected;

  GridItem({required this.item, required this.isSelected});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.isSelected(isSelected);
        });
      },
      child: Stack(
        children: <Widget>[
          Column(
            children: [
              Container(
                //color: Colors.lightBlue,
                padding: const EdgeInsets.fromLTRB(17.5,  15, 17.5, 0),
                decoration: BoxDecoration(
                    color: const Color(0xFF6C9A8B),
                    borderRadius: BorderRadius.circular(30),
                ),
                child:Image.asset(
                  widget.item.imageUrl,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Text(
                    widget.item.symptom,
                  ),
                ),
              )
            ],
          ),

          isSelected
              ? const Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    ),
                  ),
          )
              : Container()
        ],
      ),
    );
  }
}