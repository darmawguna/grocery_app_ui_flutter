import 'package:flutter/material.dart';
import 'package:grocery_app_v2/models/items_model.dart';
import 'package:grocery_app_v2/screens/item_detail.dart';
import 'package:grocery_app_v2/utils/color.dart';

class ItemDisplay extends StatefulWidget {
  const ItemDisplay({super.key});

  @override
  State<ItemDisplay> createState() => _ItemDisplayState();
}

class _ItemDisplayState extends State<ItemDisplay> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: foodsItems.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 265,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8),
        itemBuilder: (context, index) {
          FoodDetail food = foodsItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            food: food,
                          )));
            },
            child: Container(
              height: 265,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(125),
                          child: Image.network(
                            food.image,
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          food.name,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text(
                              food.cookingTime,
                              style: const TextStyle(color: Colors.black38),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              food.rate.toString(),
                              style: const TextStyle(color: Colors.black38),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "\$ ${food.price}.00",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 150, top: 10),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black45,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Material(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: InkWell(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
