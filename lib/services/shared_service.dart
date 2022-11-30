import 'dart:convert';

import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:api_cache_manager/utils/cache_manager.dart';
import 'package:pbyj_app/models/login_response.dart';

class SharedService {
  static Future<bool> isLoggedIn() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("login_details");

    return isKeyExist;
  }

  static Future<login_response?> loginDetails() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("login_details");

    if (isKeyExist) {
      var cacheData = await APICacheManager().getCacheData("login_details");

      return loginResponseJSON(cacheData.syncData);
    }
  }

  static Future<void> setLoginDetails(login_response model) async {
    APICacheDBModel cacheDBmodel = APICacheDBModel(
      key: "login_details",
      syncData: jsonEncode(model.toJson()),
    );
    await APICacheManager().addCacheData(cacheDBmodel);
  }
}
