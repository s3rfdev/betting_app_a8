import 'package:flutter/material.dart';

import '../../models/dummy_data.dart';
import '../../res/styles.dart';

class FavoritesContaner extends StatelessWidget {
  FavoritesContaner({super.key, required this.id});
  int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: darkBlue1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      child: Text(
                        factorList.list[id].name1,
                        style: h15w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      width: 24,
                      height: 24,
                      child: ClipRRect(
                          child: Image.network(
                        factorList.list[id].img1,
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dec 14',
                      style: h10w400,
                    ),
                    Text('3 : 2', style: h24w700),
                  ],
                ),
              ),
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      child: ClipRRect(
                          child: Image.network(
                        factorList.list[id].img2,
                      )),
                    ),
                    SizedBox(width: 4),
                    Container(
                      width: 70,
                      child: Text(
                        factorList.list[id].name2,
                        style: h15w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.star,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
