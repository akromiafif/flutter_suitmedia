import 'package:get/get.dart';
import 'package:suitmedia_fe/app/data/user.dart';
import 'package:suitmedia_fe/app/providers/services.dart';

class ListUserController extends GetxController {
  var isLoading = true.obs;
  var response = User(
    page: 1,
    perPage: 1,
    total: 1,
    totalPages: 1,
    data: [],
    support: Support(url: '', text: ''),
  ).obs;

  @override
  void onInit() {
    super.onInit();
    getUsers();
  }

  void getUsers() async {
    try {
      isLoading(true);
      var responseUser = await ServiceProvider().getUsers();

      response.value = responseUser;
    } finally {
      isLoading(false);
    }
  }
}
