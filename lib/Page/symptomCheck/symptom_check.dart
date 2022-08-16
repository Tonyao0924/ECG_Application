import 'package:flutter/material.dart';
import 'grid_item.dart';

class SymptomCheck extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SymptomCheckState();
}

class _SymptomCheckState extends State<SymptomCheck> {
  late List<Item> itemList;
  late List<Item> selectedList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
            shrinkWrap: true,
            itemCount: itemList.length,
            padding: EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              //crossAxisSpacing: 15,
              // mainAxisSpacing: 15
            ),
            itemBuilder: (context, index) {
              return GridItem(
                item: itemList[index],
                isSelected: (bool value) {
                  setState(() {
                    if (value) {
                      selectedList.add(itemList[index]);
                    } else {
                      selectedList.remove(itemList[index]);
                    }
                  });
                  print("$index : $value");
                },
              );
            }),
        Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              padding: const EdgeInsets.all(0.0),
              elevation: 5,
            ),
            onPressed: () {},
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF709E94), Color(0xFF9DCEFF)]),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                constraints: const BoxConstraints(minWidth: 150.0),
                child: const Text('確定', textAlign: TextAlign.center),
              ),
            ),
          ),
        ),
      ],
    );

  }

  @override
  void initState() {
    loadList();
    super.initState();
  }

  loadList() {
    itemList = [];
    selectedList = [];
    itemList.add(Item("assets/images/vomit.png", "噁心"));
    itemList.add(Item("assets/images/dizzy.png", "暈眩"));
    itemList.add(Item("assets/images/weakness.png", "盜汗"));
    itemList.add(Item("assets/images/chest_pain.png", "胸痛"));
    itemList.add(Item("assets/images/difficulty_breathing.png", "呼吸困難"));
  }
}

class Item {
  String imageUrl;
  String symptom;

  Item(this.imageUrl, this.symptom);
}
