

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class PlantImageAPICall {
  static Future<ApiCallResponse> call({
    String? uploadPlantImage = '',
  }) {
    final body = '''
{
  "data": [
    "data:image/jpeg;base64,$uploadPlantImage"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'plantImageAPI',
      apiUrl: 'https://etahamad-plant-disease-detection.hf.space/run/predict',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

}


class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}


