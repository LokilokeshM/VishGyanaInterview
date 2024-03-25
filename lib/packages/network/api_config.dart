const Duration timeout = Duration(milliseconds: 60 * 1000);

const String baseUrl =
    "https://firebasestorage.googleapis.com/v0/b/jill-soap-6a1ac.appspot.com/o/maps.json?alt=media&token=bfd28b0f-06d7-4d25-8d45-e218466c7449";

enum APIFlavor { dev, qa, stage, stageBlue, prod }

String apiFlavorString(APIFlavor value) {
  return value.toString().split('.').last;
}

class ApiConfig {
  static late APIFlavor apiFlavor;

  static void init(APIFlavor flavor) {
    apiFlavor = flavor;
  }

  static String get apiBaseUrl {
    switch (apiFlavor) {
      case APIFlavor.dev:
        return baseUrl;
      default:
        return baseUrl;
    }
  }
}
