
import 'package:flutter/material.dart';
import 'NotificationSetting.dart';
class Body extends StatefulWidget {


  const Body({Key? key}) : super(key: key);

@override
_Body createState() => _Body();
}

class _Body extends State<Body> {
  final allowNotifications = NotificationSetting(title: 'הכל', index: 0);
  final allowNotifications1 = NotificationSetting(title: 'מציל חיים', index: 1);
  final notifications = [
    NotificationSetting(title: 'בעלי חיים', index: 2),
    NotificationSetting(title: 'רכב', index: 3),
  ];
  final notifications1 = [
    NotificationSetting(title: 'רפואי', index: 4),
    NotificationSetting(title: 'גניבות', index: 5),
    NotificationSetting(title: 'אלימות', index: 6),

  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('קטגוריות'),
    ),
    body: ListView(
      children: [
        buildToggleCheckbox(allowNotifications),
        buildToggleCheckbox1(allowNotifications1),
        Divider(),
        ...notifications.map(buildSingleCheckbox).toList(),
        ...notifications1.map(buildSingleCheckbox1).toList(),
      ],
    ),
  );
  Widget buildToggleCheckbox1(NotificationSetting notification) => buildCheckbox(
      notification: notification,
      onClicked: () {
        final newValue = !notification.value;
        print(newValue.toString());
        setState(() {
          allowNotifications1.value = newValue;
          notifications1.forEach((notification) {
            notification.value = newValue;
          });
        });
      });

  Widget buildSingleCheckbox1(NotificationSetting notification) => buildCheckbox(
    notification: notification,
    onClicked: () {
      setState(() {
        final newValue = !notification.value;
        notification.value = newValue;
        print(newValue.toString());
        if (!newValue) {
          notifications1.every((notification) => notification.value);
          allowNotifications1.value =true;
        } else {

          allowNotifications1.value =true;

        }

      });
    },
  );
  Widget buildToggleCheckbox(NotificationSetting notification) => buildCheckbox(
      notification: notification,
      onClicked: () {
        final newValue = !notification.value;

        setState(() {
          allowNotifications.value = newValue;
          allowNotifications1.value = newValue;
          notifications.forEach((notification) {
            notification.value = newValue;

          });
          notifications1.forEach((notification) {
            notification.value = newValue;

          });
        });
      });

  Widget buildSingleCheckbox(NotificationSetting notification) => buildCheckbox(
    notification: notification,
    onClicked: () {
      setState(() {
        final newValue = !notification.value;
        notification.value = newValue;

        if (!newValue) {
          allowNotifications.value = false;
        } else {
          final allow =
          notifications.every((notification) => notification.value);
          allowNotifications.value = allow;
        }
      });
    },
  );

  Widget buildCheckbox({
    required NotificationSetting notification,
    required VoidCallback onClicked,
  }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          value: notification.value,

          onChanged: (value) => onClicked(),
        ),

        title: Text(
          notification.title,

          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
}
