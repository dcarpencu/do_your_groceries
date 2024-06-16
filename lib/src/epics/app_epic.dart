import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/ai_generated_api.dart';
import 'package:do_you_groceries/src/data/auth_api.dart';
import 'package:do_you_groceries/src/data/camera_api.dart';
import 'package:do_you_groceries/src/data/products_api.dart';
import 'package:do_you_groceries/src/data/supermarkets_api.dart';
import 'package:do_you_groceries/src/epics/auth_epic.dart';
import 'package:do_you_groceries/src/epics/camera_epic.dart';
import 'package:do_you_groceries/src/epics/product_epic.dart';
import 'package:do_you_groceries/src/epics/supermarket_epic.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AppEpic {
  AppEpic(this._authApi, this._superMarketsApi, this._productsApi, this._cameraApi, this._aiGeneratedApi);

  final AuthApi _authApi;
  final SuperMarketsApi _superMarketsApi;
  final ProductsApi _productsApi;
  final CameraApi _cameraApi;
  final AiGeneratedApi _aiGeneratedApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      AuthEpic(_authApi).getEpics(),
      SupermarketEpic(_superMarketsApi).getEpics(),
      ProductEpic(_productsApi).getEpics(),
      CameraEpic(_cameraApi).getEpics(),
      TypedEpic<AppState, GenerateRecipeResponseStart>(_generateRecipeResponseStart).call,
    ]);
  }

  Stream<AppAction> _generateRecipeResponseStart(Stream<GenerateRecipeResponseStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GenerateRecipeResponseStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _aiGeneratedApi.generateRecipeResponse(action.model, action.prompt))
          .mapTo(const GenerateRecipeResponse.successful())
          .onErrorReturnWith(GenerateRecipeResponse.error);
    });
  }
}
