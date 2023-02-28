import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_bottom_sheet/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({
    super.key,
  });
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Expandable bottom')),
        body: Obx(
          () => controller.isLoading.isTrue
              ? Center(child: CircularProgressIndicator())
              : Container(
                  height: 150,
                  child: ExpandableBottomSheet(
                    key: controller.key,
                    enableToggle: true,
                    expandableContent: Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 193, 193),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Image.network(
                          //   controller.newsList[index].urlToImage,
                          //   fit: BoxFit.cover,
                          // ),
                          Text(
                            controller.newsList[1].title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            controller.newsList[1].publishedAt,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    background: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 193, 193),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(child: Text('background')),
                    ),
                    persistentFooter: Container(
                      color: Colors.amber,
                      height: 40,
                      child: IconButton(
                          onPressed: () {
                            controller.key.currentState!.expand();
                          },
                          icon: Icon(
                            Icons.arrow_downward_rounded,
                            color: Colors.red,
                          )),
                    ),
                  ),
                ),
        ));
  }
}


// ExpandableBottomSheet(
//             key: controller.key,
//             enableToggle: true,
//             persistentFooter: Container(
//               height: 60,
//               color: Colors.red,
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     IconButton(
//                         onPressed: () {
//                           controller.key.currentState!.expand();
//                         },
//                         icon: Icon(
//                           Icons.arrow_upward,
//                           color: Colors.white,
//                         )),
//                     IconButton(
//                         onPressed: () {
//                           controller.expansionStatus.value =
//                               controller.key.currentState!.expansionStatus;
//                         },
//                         icon: Icon(
//                           Icons.cloud,
//                           color: Colors.white,
//                         )),
//                     IconButton(
//                         onPressed: () {
//                           controller.key.currentState!.contract();
//                         },
//                         icon: Icon(
//                           Icons.arrow_downward,
//                           color: Colors.white,
//                         ))
//                   ]),
//             ),
//             expandableContent: Container(
//               height: 200,
//               color: Color.fromARGB(255, 253, 253, 253),
//               child: Center(
//                   child: Container(
//                 child: Column(children: [
//                   Text("news"),
//                   Image.network(
//                     controller.newsList[index].urlToImage,
//                     fit: BoxFit.cover,
//                   ),
//                 ]),
//               )),
//             ),
//             background: Container(
//               color: Color.fromARGB(255, 215, 215, 215),
//               child: Center(child: Text('background')),
//             )),




// Container(
//                       padding: EdgeInsets.all(20),
//                       margin: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                           color: Color.fromARGB(255, 193, 193, 193),
//                           borderRadius: BorderRadius.all(Radius.circular(10))),
//                       //height: 150,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           // Image.network(
//                           //   controller.newsList[index].urlToImage,
//                           //   fit: BoxFit.cover,
//                           // ),
//                           Text(
//                             controller.newsList[index].title,
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             controller.newsList[index].publishedAt,
//                             style: TextStyle(
//                                 fontSize: 14, fontWeight: FontWeight.normal),
//                           ),
//                         ],
//                       ),
//                     )