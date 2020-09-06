import 'package:flutter/material.dart';

class BookInfoTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String language;

  BookInfoTile({this.imageUrl, this.title, this.language});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 125,
        padding: const EdgeInsets.all(16),
        //color: Colors.grey,
        child: Row(children: [
          Image.asset(
            imageUrl,
            height: 92,
            width: 60,
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),

                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      language,
                      style: TextStyle(
                          fontSize: 13, color: const Color(0xff676A77)),
                    ),
                    const Text(
                      '  -  ',
                      style: TextStyle(
                          fontSize: 13, color: const Color(0xff676A77)),
                    ),
                    Text(
                      'Paperback',
                      style: TextStyle(
                          fontSize: 13, color: const Color(0xff676A77)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                //Table
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PriceAndUnitsRow(
                      type: "New",
                      price: 290,
                      units: 30,
                    ),
                    PriceAndUnitsRow(
                      type: "Used",
                      price: 290,
                      units: 30,
                      condition: 'Average',
                    ),
                    PriceAndUnitsRow(
                      type: "Used",
                      price: 265,
                      units: 30,
                      condition: 'Excellent',
                    ),
                  ],
                )
              ],
            ),
          ),
        ]));
  }
}

class PriceAndUnitsRow extends StatelessWidget {
  final int price;
  final String type;
  final String condition;
  final int units;

  PriceAndUnitsRow({this.price, this.condition, this.type, this.units});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '₹ $price',
          style: TextStyle(
              color: const Color(0xffB12704), fontWeight: FontWeight.bold),
        ),
        const Text(
          '  -  ',
          style: TextStyle(fontSize: 13, color: const Color(0xff676A77)),
        ),
        Text(
          "$type : ${condition ?? ''}",
          style: TextStyle(fontSize: 13, color: const Color(0xff676A77)),
        ),
        const Text(
          '  -  ',
          style: TextStyle(fontSize: 13, color: const Color(0xff676A77)),
        ),
        Text(
          '$units units',
          style: TextStyle(fontSize: 13, color: const Color(0xff676A77)),
        )
      ],
    );
  }
}
