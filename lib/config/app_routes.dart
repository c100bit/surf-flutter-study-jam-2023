import 'package:get/get.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ticket_storage_bindings.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ticket_storage_page.dart';

abstract class AppRoutes {
  static const loading = '/';
  static const home = '/home';
  static const event = '/event';
  static const eventMap = '/eventMap';
  static const eventImage = '/eventImage';

  static const initial = home;

  static final pages = [
    GetPage(
      name: home,
      page: () => const TicketStoragePage(),
      binding: TicketStorageBindings(),
    ),
  ];
}
