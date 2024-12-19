import 'dart:developer';

import '../constant/type_def.dart';

class ApiVariables {
  //////////////
  ///General///
  /////////////
  static const scheme = 'https';
  static const host = "api.google.com";
  static const mainHost = "https://api.google/storage/";

  static Uri _mainUri({
    required String path,
    QueryParams? queryParameters,
  }) {
    final uri = Uri(
      scheme: scheme,
      host: host,
      path: "customer_api/$path",
      queryParameters: queryParameters,
    );
    log(uri.toString());
    return uri;
  }
}
