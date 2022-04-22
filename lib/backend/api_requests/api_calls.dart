import '../../core_components/util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetVegCall {
  static Future<ApiCallResponse> call({
    String ingrediant = '',
  }) {
    final body = '''
{
  "url": "${ingrediant}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getVeg',
      apiUrl: 'https://veg-api-flask.herokuapp.com/url',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'ingrediant': ingrediant,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
