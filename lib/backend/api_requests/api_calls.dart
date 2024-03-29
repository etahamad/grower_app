import 'dart:convert';
import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
export 'api_manager.dart' show ApiCallResponse;
const _kPrivateApiFunctionName = 'ffPrivateApiCall';

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
      apiUrl:
          'https://etahamad-new-plant-disease-detection.hf.space/run/predict',
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

class ListPlantInfoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'list plant info',
      apiUrl: 'https://etahamadtemp.pythonanywhere.com/api/list-plants-info',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic listplantinfoRequestID(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  static dynamic listplantinfoMoisture(dynamic response) => getJsonField(
        response,
        r'''$[:].moisture''',
        true,
      );
  static dynamic listplantinfoHumidity(dynamic response) => getJsonField(
        response,
        r'''$[:].humidity''',
        true,
      );
  static dynamic listplantinfoTemp(dynamic response) => getJsonField(
        response,
        r'''$[:].temperature''',
        true,
      );
  static dynamic listplantinfoDateTime(dynamic response) => getJsonField(
        response,
        r'''$[:].dateTime''',
        true,
      );
}

class ArduinoAICall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'arduinoAI',
      apiUrl: 'https://etahamad-flask.hf.space/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic arduinoAIRes(dynamic response) => getJsonField(
        response,
        r'''$.data[0]''',
      );
  static dynamic arduinoAIImage(dynamic response) => getJsonField(
        response,
        r'''$.data[2]''',
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
