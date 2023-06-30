import 'package:car_catalogue/app/modules/car_detail/views/car_detail_view.dart';
import 'package:car_catalogue/app/modules/home/views/dummy.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Cars Collection'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Get.toNamed('/car-detail', arguments: {
                  'title': cars[index].title.toString(),
                  'subtitle': cars[index].subtitle.toString(),
                  'description': cars[index].description.toString(),
                  'imageUrl': cars[index].imageUrl.toString(),
                  'model': cars[index].model.toString(),
                  'price': cars[index].price.toString()
                });
              },
              // cars[index].title.toString()','cars[index].title.toString()','cars[index].description.toString()','cars[index].imageUrl.toString()','cars[index].model.toString()'

              child: Card(
                elevation: 10,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        cars[index].imageUrl.toString(),
                        // fit: BoxFit.cover,
                        height: 120,
                        width: 160,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Text(
                            cars[index].title.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(cars[index].subtitle.toString())
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
