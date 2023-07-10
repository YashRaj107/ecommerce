import 'package:ecommerce/Controllers/Stores_List_Controller.dart';
import 'package:ecommerce/Screens/SchedulePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreDetails extends StatelessWidget {
  StoreDetails({Key? key, required this.storename, required this.storeadd}) : super(key: key);
  final String storename;
  final String storeadd;
  @override
  Widget build(BuildContext context) {
    Controller _controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text(storename,),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:13 ,horizontal: 14),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(elevation: 1,
                    child: Container(height: 60,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Store Name'),
                        Text(storename),
                      ],
                  ),
                    ),),
                  Card(elevation: 1,
                    child: Container(height: 60,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Store Address'),
                        Text(storeadd),
                      ],
                  ),
                    ),),
                  ElevatedButton(onPressed: (){Get.to(()=>SchedulePage());}, child: Text('Create Schedule')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
