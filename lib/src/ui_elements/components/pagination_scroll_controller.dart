// import 'package:flutter/material.dart';
//
// class PaginationScrollController {
//   late ScrollController scrollController;
//   bool isLoading = false;
//   bool stopLoading = false;
//   int currentPage = 1;
//   double boundaryOffset = 0.5;
//   late Function loadAction;
//
//   void init({Function? initAction, required Function loadAction}) {
//     if (initAction != null) {
//       initAction();
//     }
//     this.loadAction = loadAction;
//     scrollController = ScrollController()..addListener(scrollListener);
//   }
//
//   void dispose() {
//     scrollController..removeListener(scrollListener)
//     ..dispose();
//   }
//
//   void scrollListener() {
//     if (!stopLoading) {
//       //load more data
//       if (scrollController.offset >=
//           scrollController.position.maxScrollExtent * boundaryOffset &&
//           !isLoading) {
//         isLoading = true;
//         loadAction().then((shouldStop) {
//           isLoading = false;
//           currentPage++;
//           boundaryOffset = 1 - 1 / (currentPage * 2);
//           if (shouldStop == true) {
//             stopLoading = true;
//           }
//         });
//       }
//     }
//   }
// }
//
// Future getNewRequests() async {
//   int lastPage = pagination.lastPage;
//   int currentPage = pagination.currentPage;
//   if (lastPage > currentPage) {
//     // do some data fetching here, e.g.
//     getRequests(currentPage + 1);
//   } else if (lastPage == currentPage) {
//     return true;
//   }
// }
