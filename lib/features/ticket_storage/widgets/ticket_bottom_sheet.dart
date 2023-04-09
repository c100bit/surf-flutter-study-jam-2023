import 'package:flutter/material.dart';

class TicketBottomSheet extends StatelessWidget {
  final TextEditingController textController;

  const TicketBottomSheet({
    super.key,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  errorText: 'sdf',
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
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.grey.shade600),
                foregroundColor:
                    const MaterialStatePropertyAll<Color>(Colors.white),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text('Добавить'),
            ),
          ],
        ),
      ),
    );
  }
}
