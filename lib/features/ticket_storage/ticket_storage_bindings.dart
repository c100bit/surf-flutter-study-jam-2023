import 'package:get/get.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ticket_storage_controller.dart';

class TicketStorageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TicketStorageController(), permanent: true);
  }
}
