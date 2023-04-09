import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ticket_storage_controller.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widgets/list_item.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widgets/ticket_bottom_sheet.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends GetView<TicketStorageController> {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Хранение билетов'),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) =>
              ListItem(title: 'title', url: 'url')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => controller.fabPressed(
          TicketBottomSheet(
            textController: controller.textController,
          ),
        ),
        label: const Text('Добавить'),
      ),
    );
  }
}
