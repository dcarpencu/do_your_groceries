import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/auchan_api.dart';
import 'package:do_you_groceries/src/data/auth_api.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AppEpic {
  AppEpic(this._authApi, this._auchanApi);

  final AuthApi _authApi;
  final AuchanApi _auchanApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart),
      TypedEpic<AppState, CreateUserStart>(_createUserStart),
      TypedEpic<AppState, LogoutStart>(_logoutStart),
      TypedEpic<AppState, GetProductsStart>(_getProductsStart),
      //TypedEpic<AppState, UpdateUserProductsListStart>(_updateUserProductsListStart),
    ]);
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.login(email: action.email, password: action.password))
          .map<Login>(Login.successful)
          .onErrorReturnWith(Login.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getCurrentUser())
          .map<GetCurrentUser>(GetCurrentUser.successful)
          .onErrorReturnWith(GetCurrentUser.error);
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.create(email: action.email, password: action.password, username: action.username))
          .map<CreateUser>(CreateUser.successful)
          .onErrorReturnWith(CreateUser.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _logoutStart(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.logout())
          .mapTo(const Logout.successful())
          .onErrorReturnWith(Logout.error);
    });
  }

  Stream<AppAction> _getProductsStart(Stream<GetProductsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetProductsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auchanApi.getProducts())
          .map<GetProducts>(GetProducts.successful)
          .onErrorReturnWith(GetProducts.error)
          .doOnData(action.onResult);
    });
  }

  // Stream<AppAction> _getUserProductsStart(Stream<GetUserProducts> actions, EpicStore<AppState> store) {
  //   return actions.flatMap((GetUserProducts action) {
  //     return Stream<void>.value(null)
  //         .asyncMap((_) => _authApi.())
  //         .map<GetUserProducts>(GetUserProducts.successful)
  //         .onErrorReturnWith(GetUserProducts.error);
  //         //.doOnData(action.onRes);
  //   });
  // }

  // Stream<AppAction> _updateUserProductsListStart(Stream<UpdateUserProductsListStart> actions, EpicStore<AppState> store) {
  //   return actions.flatMap((GetUserProducts action) {
  //     return Stream<void>.value(null)
  //         .asyncMap((_) => )
  //   })
  // }
}
