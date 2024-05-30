import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/auth_api.dart';
import 'package:do_you_groceries/src/data/camera_api.dart';
import 'package:do_you_groceries/src/data/products_api.dart';
import 'package:do_you_groceries/src/data/supermarkets_api.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AppEpic {
  AppEpic(this._authApi, this._superMarketsApi, this._productsApi, this._cameraApi);

  final AuthApi _authApi;
  final SuperMarketsApi _superMarketsApi;
  final ProductsApi _productsApi;
  final CameraApi _cameraApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart).call,
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
      TypedEpic<AppState, LogoutStart>(_logoutStart).call,
      TypedEpic<AppState, GetGroceryListsStart>(_getGroceryListsStart).call,
      _getSuperMarketProducts,
      TypedEpic<AppState, CreateGroceryListStart>(_createGroceryListStart).call,
      _listenForProducts,
      _listenForRequests,
      TypedEpic<AppState, CreateProductStart>(_createProductStart).call,
      TypedEpic<AppState, AddProductToGroceryListStart>(_addProductToGroceryListStart).call,
      TypedEpic<AppState, GenerateProductsStart>(_generateProductsStart).call,
      TypedEpic<AppState, RequestStoragePermissionStart>(_requestStoragePermissionStart).call,
      TypedEpic<AppState, RequestStoragePermissionStart>(_requestStoragePermissionStart).call,
      TypedEpic<AppState, GetCamerasStart>(_getCamerasStart).call,
      TypedEpic<AppState, InitializeControllerStart>(_initializeControllerStart).call,
      TypedEpic<AppState, TakePictureStart>(_takePictureStart).call,
      TypedEpic<AppState, GetImageLabelsStart>(_getImageLabelsStart).call,
      TypedEpic<AppState, GetProductsStart>(_getProductsStart).call,
      TypedEpic<AppState, GetProductsForCameraStart>(_getProductsForCameraStart).call,
      TypedEpic<AppState, GetUsersStart>(_getUsersStart).call,
      TypedEpic<AppState, RemoveProductFromGroceryListStart>(_removeProductFromGroceryListStart).call,
      TypedEpic<AppState, RemoveGroceryListStart>(_removeGroceryListStart).call,
      TypedEpic<AppState, SendRequestStart>(_sendRequestStart).call,
      TypedEpic<AppState, RemoveRequestStart>(_removeRequestStart).call,
      TypedEpic<AppState, RemoveRequestStart>(_removeRequestStart).call,

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

  Stream<AppAction> _initializeControllerStart(Stream<InitializeControllerStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((InitializeControllerStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _cameraApi.initializeController(controller: action.controller))
          .mapTo(const InitializeController.successful())
          .onErrorReturnWith(InitializeController.error);
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
          .asyncMap((_) => _authApi.sendRequest(receiverId: action.receiverId, groceryListId: action.groceryListId, senderUsername: action.senderUsername, groceryListName: action.groceryListName))
          .mapTo(const SendRequest.successful())
          .onErrorReturnWith(SendRequest.error);
    });
  }

  Stream<AppAction> _removeRequestStart(Stream<RemoveRequestStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((RemoveRequestStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.removeRequest(requestToRemove: action.requestToRemove))
          .map<RemoveRequest>(RemoveRequest.successful)
          .onErrorReturnWith(RemoveRequest.error);
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

  Stream<AppAction> _listenForProducts(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForProductsStart>().flatMap((ListenForProductsStart action) {
      return _productsApi
          .listenForProducts(action.groceryListTitle)
          .map<ListenForProducts>(ListenForProducts.event)
          .takeUntil<dynamic>(
        actions.where((dynamic event) {
          return event is ListenForProductsDone && event.groceryListTitle == action.groceryListTitle;
        }),
      ).onErrorReturnWith(ListenForProducts.error);
    });
  }

  Stream<AppAction> _listenForRequests(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForRequestsStart>().flatMap((ListenForRequestsStart action) {
      return _authApi
          .listenForRequests(isNotifications: action.isNotifications,)
          .map<ListenForRequests>(ListenForRequests.event)
          .takeUntil<dynamic>(
        actions.where((dynamic event) {
          return event is ListenForRequestsDone && event.isNotifications == action.isNotifications;
        }),
      ).onErrorReturnWith(ListenForRequests.error);
    });
  }

  Stream<AppAction> _createProductStart(Stream<CreateProductStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateProductStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _productsApi.createProduct(
              groceryListId: store.state.selectedGroceryList!,
              name: action.name,
              price: action.price,
              uid: store.state.user!.uid,
            ),
          )
          .mapTo(const CreateProduct.successful())
          .onErrorReturnWith(CreateProduct.error);
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

  Stream<AppAction> _getSuperMarketProducts(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions
        .where((dynamic action) => action is GetSuperMarketProductsStart || action is GetSuperMarketProductsMore)
        .flatMap((dynamic action) {
      String pendingId = '';
      String superMarketName = '';
      String category = '';
      ActionResult onResult = (_) {};
      if (action is GetSuperMarketProductsStart) {
        pendingId = action.pendingId;
        onResult = action.onResult;
        superMarketName = action.supermarketName;
        category = action.category;
      } else if (action is GetSuperMarketProductsMore) {
        pendingId = action.pendingId;
        onResult = action.onResult;
        superMarketName = action.supermarketName;
        category = action.category;
      }

      return Stream<void>.value(null)
          .asyncMap(
            (_) => _superMarketsApi.getSuperMarketProducts(
              supermarketName: superMarketName,
              category: category,
              pageNumber: store.state.pageNumber,
            ),
          )
          .map<GetSuperMarketProducts>((List<Product> products) {
            return GetSuperMarketProducts.successful(products, pendingId);
          })
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => GetSuperMarketProducts.error(error, stackTrace, pendingId),
          )
          .doOnData(onResult);
    });
  }

  Stream<AppAction> _generateProductsStart(Stream<GenerateProductsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GenerateProductsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _superMarketsApi.generateProducts())
          .mapTo(const GenerateProducts.successful())
          .onErrorReturnWith(GenerateProducts.error);
    });
  }

  Stream<AppAction> _addProductToGroceryListStart(
    Stream<AddProductToGroceryListStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((AddProductToGroceryListStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _productsApi.addProductToGroceryList(
              action.product,
              action.groceryListId,
              marketName: action.marketName,
              category: action.category,
              action.page,
            ),
          )
          .mapTo(const AddProductToGroceryList.successful())
          .onErrorReturnWith(AddProductToGroceryList.error);
    });
  }

  Stream<AppAction> _requestStoragePermissionStart(
    Stream<RequestStoragePermissionStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((RequestStoragePermissionStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _cameraApi.requestStoragePermission(),
          )
          .mapTo(const RequestStoragePermission.successful())
          .onErrorReturnWith(RequestStoragePermission.error);
    });
  }

  Stream<AppAction> _getCamerasStart(Stream<GetCamerasStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCamerasStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _cameraApi.getCameras(),
          )
          .map<GetCameras>(GetCameras.successful)
          .onErrorReturnWith(GetCameras.error);
    });
  }

  Stream<AppAction> _takePictureStart(Stream<TakePictureStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((TakePictureStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _cameraApi.takePicture(
              controller: action.controller,
            ),
          )
          .map<TakePicture>(TakePicture.successful)
          .onErrorReturnWith(TakePicture.error);
    });
  }

  Stream<AppAction> _getImageLabelsStart(Stream<GetImageLabelsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetImageLabelsStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _cameraApi.getImageLabels(
              imagePath: action.imagePath,
            ),
          )
          .map<GetImageLabels>(GetImageLabels.successful)
          .onErrorReturnWith(GetImageLabels.error);
    });
  }

  Stream<AppAction> _getProductsStart(Stream<GetProductsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetProductsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _productsApi.getProducts(product: action.product))
          .map<GetProducts>(GetProducts.successful)
          .onErrorReturnWith(GetProducts.error);
    });
  }

  Stream<AppAction> _getProductsForCameraStart(Stream<GetProductsForCameraStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetProductsForCameraStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _productsApi.getProductsForCamera(category: action.category, tag: action.tag))
          .map<GetProductsForCamera>(GetProductsForCamera.successful)
          .onErrorReturnWith(GetProductsForCamera.error);
    });
  }

  Stream<AppAction> _getUsersStart(Stream<GetUsersStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetUsersStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getUsers())
          .map<GetUsers>(GetUsers.successful)
          .onErrorReturnWith(GetUsers.error);
    });
  }

  Stream<AppAction> _removeProductFromGroceryListStart(Stream<RemoveProductFromGroceryListStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((RemoveProductFromGroceryListStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _productsApi.removeProductFromGroceryList(groceryListId: action.groceryListId, product: action.product, ))
          .map<RemoveProductFromGroceryList>( RemoveProductFromGroceryList.successful)
          .onErrorReturnWith(RemoveProductFromGroceryList.error);
    });
  }

  Stream<AppAction> _removeGroceryListStart(Stream<RemoveGroceryListStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((RemoveGroceryListStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.removeGroceryList(groceryList: action.groceryList, ))
          .map<RemoveGroceryList>( RemoveGroceryList.successful)
          .onErrorReturnWith(RemoveGroceryList.error);
    });
  }
}
