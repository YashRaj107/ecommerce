import 'dart:convert';

import 'package:ecommerce/Controllers/StoreModel.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:ecommerce/http_request_helper.dart';

const storeApiUrl =
    'https://technorizen.com/scheduler/webservice/get_store?user_id=18';

class Controller extends GetxController {
  RxList StoreList = [].obs;
  RxString id = ''.obs;
  RxString user_id = ''.obs;
  RxString hours = ''.obs;
  RxString date_time = ''.obs;
  RxString open_time = ''.obs;
  RxString close_time = ''.obs;
  RxString store_name = ''.obs;
  RxString store_address = ''.obs;
  RxString day = ''.obs;

  @override
  void onInit() async {
    super.onInit();
    getStoresList();
  }

  @override
  void onClose() async {}

  Future<dynamic> getStoresList() async {
    NetworkData networkHelper = NetworkData(storeApiUrl);
    var StoreData = await networkHelper.getData();
    print('Store Data: $StoreData');

    for (int i = 0; i < 6; i++) {
      id.value = StoreData["result"][i]["id"];
      user_id.value = StoreData["result"][i]["user_id"];
      store_name.value = StoreData["result"][i]["store_name"];
      store_address.value = StoreData["result"][i]["store_address"];
      day.value = StoreData["result"][i]["day"];
      hours.value = StoreData["result"][i]["hours"];
      date_time.value = StoreData["result"][i]["date_time"];
      open_time.value = StoreData["result"][i]["open_time"];
      close_time.value = StoreData["result"][i]["close_time"];

      StoreList.add([
        id.value,
        user_id.value,
        store_name.value,
        store_address.value,
        day.value,
        hours.value,
        date_time.value,
        open_time.value,
        close_time.value,
      ]);
      print(StoreList);
    }
  }
}
