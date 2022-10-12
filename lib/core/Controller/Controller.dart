import 'package:carousel_slider/carousel_controller.dart';
import 'package:akl/core/Data/Service/Service.dart';
import 'package:get/get.dart';

import '../Data/Module/Modules.dart';

class PageViewController extends GetxController {
  var theCarosurController = CarouselController(); // Carosur Controller..

  int itemCount = 5; // Items in my pageview number
  var indexNumber = 0.obs; //Current position in the pageview..
  var pageScrollingValue = 0.0.obs; //Value of scrolling in pageview..

  void pagePosition(var change) {
    // Getting the position of the page!
    indexNumber.value = change;
    update();
  }

  void pageValueDetector(var index) {
    // Getting the value of the page!.
    pageScrollingValue.value = index;
    update();
  }
}

class ApiController extends GetxController {
  var isLoading = true.obs;
  late List<Modules> response;
  void FetchProduct() async {
    try {
      isLoading.value = true;
      response = await Service.FetchProducts();
      print(Response);

      // Fetch Product out of service.
    } finally {
      isLoading.value = false;
    }
  }
}
class  ahmed {
  int ?num;
}
// class ExpandableText extends GetxController {
//   String FirstHalf = "";
//   String SecondHalf = "";
//   var NetworkInjection = Get.put(Apicontroller());
//   bool HiddenText = true;
//   var theText;
//   GetExpandableText(int index) {
//     print("I'm intialized");

//     theText = NetworkInjection.Response[index].description;
//     if (theText.length >= 160) {
//       FirstHalf = theText.substring(0, 80); // ab2a a2sm automatically..
//       SecondHalf = theText.substring(81, theText.length);
//     } else {
//       FirstHalf = theText;
//       SecondHalf = "";
//     }
    
//   }
//}
