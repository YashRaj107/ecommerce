import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Schedule'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [Text('Current Week'),
                      Icon(Icons.keyboard_arrow_up)],),
                      Column(children: [Text('Total Hrs Assigned-10')],)
                    ],
                  ),
                  Card(child: Container(height: 80,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text('Enter Day'),Text('Monday')],),Column(children: [Icon(Icons.keyboard_arrow_up)],)],
                    ),
                  ),)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
