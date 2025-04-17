import 'package:fitnessapp/utils/app_colors.dart';
import 'package:fitnessapp/view/notification/widgets/notification_row.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  static String routeName = "/NotificationScreen";

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List notificationArr = [
    {
      "image": "assets/images/Workout1.png",
      "title": "Эй, пора обедать",
      "time": "Примерно 1 минуту назад"
    },
    {
      "image": "assets/images/Workout2.png",
      "title": "Не пропустите тренировку нижней части тела",
      "time": "Примерно 3 часа назад"
    },
    {
      "image": "assets/images/Workout3.png",
      "title": "Эй, давайте добавим несколько приемов пищи для вашего б",
      "time": "Примерно 3 часа назад"
    },
    {
      "image": "assets/images/Workout1.png",
      "title": "Поздравляем, вы завершили А..",
      "time": "29 мая"
    },
    {
      "image": "assets/images/Workout2.png",
      "title": "Эй, пора обедать",
      "time": "8 апреля"
    },
    {
      "image": "assets/images/Workout3.png",
      "title": "Ой, вы пропустили тренировку нижней части тела...",
      "time": "8 апреля"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          centerTitle: true,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.lightGrayColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "assets/icons/back_icon.png",
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: const Text(
            "Уведомления",
            style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.lightGrayColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "assets/icons/more_icon.png",
                  width: 12,
                  height: 12,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
        body: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            itemBuilder: ((context, index) {
              var nObj = notificationArr[index] as Map? ?? {};
              return NotificationRow(nObj: nObj);
            }),
            separatorBuilder: (context, index) {
              return Divider(
                color: AppColors.grayColor.withOpacity(0.5),
                height: 1,
              );
            },
            itemCount: notificationArr.length));
  }
}
