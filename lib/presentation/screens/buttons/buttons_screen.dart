import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons Screen')),
      body: _ButtonsView(),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 20),
      child: SizedBox(
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('ElevatedButton icon'),
              icon: Icon(Icons.access_alarm_outlined),
            ),
            FilledButton(onPressed: () {}, child: Text('FilledButton')),
            FilledButton.icon(
              onPressed: () {},
              label: Text('FilledButton icon'),
              icon: Icon(Icons.accessibility_new),
            ),
            OutlinedButton(onPressed: () {}, child: Text('outline')),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text('Ouline icon'),
              icon: Icon(Icons.terminal),
            ),
            TextButton(onPressed: () {}, child: Text('Textbutton')),
            TextButton.icon(
              onPressed: () {},
              label: Text('TextButton icon'),
              icon: Icon(Icons.account_box),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.app_registration)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_outlined),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
                iconColor: MaterialStatePropertyAll(Colors.white),
              ),
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 20),
            child: Text('Aceptar', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
