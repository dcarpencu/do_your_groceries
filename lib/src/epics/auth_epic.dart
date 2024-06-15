import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/auth_api.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AuthEpic {
  AuthEpic(this._authApi);

  final AuthApi _authApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart).call,
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
      TypedEpic<AppState, LogoutStart>(_logoutStart).call,
      TypedEpic<AppState, GetGroceryListsStart>(_getGroceryListsStart).call,
      TypedEpic<AppState, CreateGroceryListStart>(_createGroceryListStart).call,
      _listenForRequests,
      TypedEpic<AppState, GetUsersStart>(_getUsersStart).call,
      TypedEpic<AppState, RemoveGroceryListStart>(_removeGroceryListStart).call,
      TypedEpic<AppState, SendRequestStart>(_sendRequestStart).call,
      TypedEpic<AppState, RemoveRequestStart>(_removeRequestStart).call,
      TypedEpic<AppState, AcceptRequestStart>(_acceptRequestStart).call,
      TypedEpic<AppState, UpdateGroceryListsStart>(_updateGroceryListsStart).call,
      TypedEpic<AppState, EditGroceryListStart>(_editGroceryListStart).call,
      _listenForRequests,
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

  Stream<AppAction> _getGroceryListsStart(Stream<GetGroceryListsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetGroceryListsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getLists())
          .map<GetGroceryLists>(GetGroceryLists.successful)
          .onErrorReturnWith(GetGroceryLists.error);
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

  Stream<AppAction> _sendRequestStart(Stream<SendRequestStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SendRequestStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _authApi.sendRequest(
              receiverId: action.receiverId,
              groceryListId: action.groceryListId,
              senderUsername: action.senderUsername,
              groceryListName: action.groceryListName,
            ),
          )
          .map<SendRequest>(SendRequest.successful)
          .onErrorReturnWith(SendRequest.error);
    });
  }

  Stream<AppAction> _removeRequestStart(Stream<RemoveRequestStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((RemoveRequestStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.removeRequest(requestToRemove: action.requestToRemove))
          .mapTo(const RemoveRequest.successful())
          .onErrorReturnWith(RemoveRequest.error);
    });
  }

  Stream<AppAction> _listenForRequests(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForRequestsStart>().flatMap((ListenForRequestsStart action) {
      return _authApi
          .listenForRequests(
            isNotifications: action.isNotifications,
          )
          .map<ListenForRequests>(ListenForRequests.event)
          .takeUntil<dynamic>(
        actions.where((dynamic event) {
          return event is ListenForRequestsDone && event.isNotifications == action.isNotifications;
        }),
      ).onErrorReturnWith(ListenForRequests.error);
    });
  }

  Stream<AppAction> _getUsersStart(Stream<GetUsersStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetUsersStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getUsers(groceryList: action.groceryList))
          .map<GetUsers>(GetUsers.successful)
          .onErrorReturnWith(GetUsers.error);
    });
  }

  Stream<AppAction> _removeGroceryListStart(Stream<RemoveGroceryListStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((RemoveGroceryListStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _authApi.removeGroceryList(
              groceryList: action.groceryList,
              currentUserId: store.state.user!.uid,
            ),
          )
          .mapTo(const RemoveGroceryList.successful())
          .onErrorReturnWith(RemoveGroceryList.error);
    });
  }

  Stream<AppAction> _acceptRequestStart(Stream<AcceptRequestStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((AcceptRequestStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _authApi.acceptRequest(groceryListId: action.groceryListId, requestToRemove: action.requestToRemove),
          )
          .map<AcceptRequest>(AcceptRequest.successful)
          .onErrorReturnWith(AcceptRequest.error);
    });
  }

  Stream<AppAction> _createGroceryListStart(Stream<CreateGroceryListStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateGroceryListStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _authApi.createGroceryList(
              title: action.title,
              description: action.description,
              selectedIcon: action.selectedIcon,
            ),
          )
          .map<CreateGroceryList>(CreateGroceryList.successful)
          .onErrorReturnWith(CreateGroceryList.error);
    });
  }

  Stream<AppAction> _updateGroceryListsStart(Stream<UpdateGroceryListsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateGroceryListsStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _authApi.updateGroceryLists(store.state.user!.uid, action.groceryListId, remove: action.remove),
          )
          .mapTo(const UpdateGroceryLists.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) {
        return UpdateGroceryLists.error(error, stackTrace, action.groceryListId, remove: action.remove);
      });
    });
  }

  Stream<AppAction> _editGroceryListStart(Stream<EditGroceryListStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((EditGroceryListStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _authApi.updateGroceryList(
              title: action.title,
              description: action.description,
              selectedIcon: action.selectedIcon,
              groceryList: action.groceryList,
            ),
          )
          .map<EditGroceryList>(EditGroceryList.successful)
          .onErrorReturnWith(EditGroceryList.error);
    });
  }
}
