import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  TicketStoragePage({Key? key}) : super(key: key);
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Хранение билетов'),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => ListTile(
          leading: SizedBox(
            height: double.infinity,
            child: Icon(
              Icons.picture_as_pdf,
            ),
          ),
          title: Text('Ticket 1'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              LinearProgressIndicator(
                value: 0,
              ),
              Text('Ожидает начала загрузки'),
            ],
          ),
          trailing: SizedBox(
            height: double.infinity,
            child: Icon(
              Icons.pause_circle_outline,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final cdata = await Clipboard.getData(Clipboard.kTextPlain);
          final text = cdata?.text ?? '';
          if (!context.mounted) return;

          textController.value = TextEditingValue(
            text: text,
            selection: TextSelection.collapsed(
              offset: text.length,
            ),
          );
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SizedBox(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 45,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                      child: TextField(
                        autofocus: true,
                        controller: textController,
                        decoration: InputDecoration(
                          labelText: 'Введите url',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 5,
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Colors.grey.shade600),
                        foregroundColor:
                            const MaterialStatePropertyAll<Color>(Colors.white),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Добавить'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        label: const Text('Добавить'),
      ),
    );
  }
}
