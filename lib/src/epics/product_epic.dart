import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/products_api.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class ProductEpic {
  ProductEpic(this._productsApi);

  final ProductsApi _productsApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, AddProductToGroceryListStart>(_addProductToGroceryListStart).call,
      TypedEpic<AppState, GetProductsStart>(_getProductsStart).call,
      TypedEpic<AppState, GetProductsForCameraStart>(_getProductsForCameraStart).call,
      TypedEpic<AppState, RemoveProductFromGroceryListStart>(_removeProductFromGroceryListStart).call,
      TypedEpic<AppState, GetProductsAfterEditStart>(_getProductsAfterEditStart).call,
      TypedEpic<AppState, SwitchProductStart>(_switchProductStart).call,
      TypedEpic<AppState, SmartUpdateListStart>(_smartUpdateListStart).call,
      TypedEpic<AppState, EditProductStart>(_editProductStart).call,
      TypedEpic<AppState, CreateProductStart>(_createProductStart).call,
      _listenForProducts,
    ]);
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
            ),
          )
          .mapTo(const AddProductToGroceryList.successful())
          .onErrorReturnWith(AddProductToGroceryList.error);
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

  Stream<AppAction> _editProductStart(Stream<EditProductStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((EditProductStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _productsApi.updateProduct(
              name: action.name,
              price: action.price,
              image: action.image,
              product: action.product,
            ),
          )
          .mapTo(const EditProduct.successful())
          .onErrorReturnWith(EditProduct.error);
    });
  }

  Stream<AppAction> _removeProductFromGroceryListStart(
    Stream<RemoveProductFromGroceryListStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((RemoveProductFromGroceryListStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _productsApi.removeProductFromGroceryList(
              groceryListId: action.groceryListId,
              product: action.product,
            ),
          )
          .mapTo(const RemoveProductFromGroceryList.successful())
          .onErrorReturnWith(RemoveProductFromGroceryList.error);
    });
  }

  Stream<AppAction> _getProductsAfterEditStart(Stream<GetProductsAfterEditStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetProductsAfterEditStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _productsApi.getProductsAfterEdit(groceryListId: action.groceryListId),
          )
          .map<GetProductsAfterEdit>(GetProductsAfterEdit.successful)
          .onErrorReturnWith(GetProductsAfterEdit.error);
    });
  }

  Stream<AppAction> _switchProductStart(Stream<SwitchProductStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SwitchProductStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _productsApi.switchProduct(
              selectedProduct: action.selectedProduct,
              oldProduct: action.oldProduct,
              groceryList: store.state.selectedGroceryList!,
            ),
          )
          .map<SwitchProduct>(SwitchProduct.successful)
          .onErrorReturnWith(SwitchProduct.error);
    });
  }

  Stream<AppAction> _smartUpdateListStart(Stream<SmartUpdateListStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SmartUpdateListStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _productsApi.smartUpdateList(
              groceryListProducts: store.state.productsGroceryList,
              groceryList: store.state.selectedGroceryList!,
            ),
          )
          .mapTo(const SmartUpdateList.successful())
          .onErrorReturnWith(SmartUpdateList.error);
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

  Stream<AppAction> _createProductStart(Stream<CreateProductStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateProductStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _productsApi.createProduct(
              groceryListId: store.state.selectedGroceryList!.groceryListId,
              name: action.name,
              image: action.image,
              price: action.price,
              uid: store.state.user!.uid,
              createdByUser: action.createdByUser,
            ),
          )
          .mapTo(const CreateProduct.successful())
          .onErrorReturnWith(CreateProduct.error);
    });
  }
}
