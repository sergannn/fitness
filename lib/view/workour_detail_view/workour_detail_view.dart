import 'package:fitnessapp/common_widgets/round_gradient_button.dart';
import 'package:fitnessapp/utils/app_colors.dart';
import 'package:fitnessapp/view/workour_detail_view/widgets/exercises_set_section.dart';
import 'package:fitnessapp/view/workour_detail_view/widgets/icon_title_next_row.dart';
import 'package:fitnessapp/view/workout_schedule_view/workout_schedule_view.dart';
import 'package:flutter/material.dart';
import '../../common_widgets/round_button.dart';
import 'exercises_stpe_details.dart';

class WorkoutDetailView extends StatefulWidget {
  final Map dObj;
  const WorkoutDetailView({Key? key, required this.dObj}) : super(key: key);

  @override
  State<WorkoutDetailView> createState() => _WorkoutDetailViewState();
}

class _WorkoutDetailViewState extends State<WorkoutDetailView> {
  List latestArr = [
    {
      "image": "assets/images/Workout1.png",
      "title": "Полное тренировка",
      "time": "Сегодня, 15:00"
    },
    {
      "image": "assets/images/Workout2.png",
      "title": "Верхняя часть тела",
      "time": "Июнь 05, 14:00"
    },
  ];

  List youArr = [
    {"image": "assets/icons/barbell.png", "title": "Гантели"},
    {"image": "assets/icons/skipping_rope.png", "title": "Прыжки"},
    {"image": "assets/icons/bottle.png", "title": "Бутылка 1 литр"},
  ];

  List exercisesArr = [
    {
      "name": "Подход 1",
      "set": [
        {
          "image": "assets/images/img_1.png",
          "title": "Разминка",
          "value": "05:00"
        },
        {
          "image": "assets/images/img_2.png",
          "title": "Прыжки на месте",
          "value": "12x"
        },
        {
          "image": "assets/images/img_2.png",
          "title": "Приседания",
          "value": "20x"
        },
        {
          "image": "assets/images/img_1.png",
          "title": "Подъемы рук",
          "value": "00:53"
        },
        {
          "image": "assets/images/img_2.png",
          "title": "Отдых и вода",
          "value": "02:00"
        }
      ],
    },
    {
      "name": "Подход 2",
      "set": [
        {
          "image": "assets/images/img_1.png",
          "title": "Разминка",
          "value": "05:00"
        },
        {
          "image": "assets/images/img_2.png",
          "title": "Прыжки на месте",
          "value": "12x"
        },
        {
          "image": "assets/images/img_2.png",
          "title": "Приседания",
          "value": "20x"
        },
        {
          "image": "assets/images/img_1.png",
          "title": "Подъемы рук",
          "value": "00:53"
        },
        {
          "image": "assets/images/img_2.png",
          "title": "Отдых и вода",
          "value": "02:00"
        }
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: AppColors.primaryG)),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
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
                      width: 15,
                      height: 15,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leadingWidth: 0,
              leading: Container(),
              expandedHeight: media.width * 0.5,
              flexibleSpace: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/detail_top.png",
                  width: media.width * 0.75,
                  height: media.width * 0.8,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        width: 50,
                        height: 4,
                        decoration: BoxDecoration(
                            color: AppColors.grayColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      SizedBox(height: media.width * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.dObj["title"].toString(),
                                  style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "${widget.dObj["exercises"].toString()} | ${widget.dObj["time"].toString()} | 320 Калорий",
                                  style: TextStyle(
                                      color: AppColors.grayColor, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/icons/fav_icon.png",
                              width: 15,
                              height: 15,
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: media.width * 0.05),
                      IconTitleNextRow(
                        icon: "assets/icons/time_icon.png",
                        title: "Запланировать тренировку",
                        time: "5/27, 09:00",
                        color: AppColors.primaryColor2.withOpacity(0.3),
                        onPressed: () {
                          return;
                          Navigator.pushNamed(
                              context, WorkoutScheduleView.routeName);
                        },
                      ),
                      SizedBox(height: media.width * 0.02),
                      IconTitleNextRow(
                        icon: "assets/icons/difficulity_icon.png",
                        title: "Сложность",
                        time: "Легкая",
                        color: AppColors.secondaryColor2.withOpacity(0.3),
                        onPressed: () {},
                      ),
                      SizedBox(height: media.width * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Вам понадобится",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: media.width * 0.5,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: youArr.length,
                            itemBuilder: (context, index) {
                              var yObj = youArr[index] as Map? ?? {};
                              return Container(
                                margin: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: media.width * 0.35,
                                      width: media.width * 0.35,
                                      decoration: BoxDecoration(
                                          color: AppColors.lightGrayColor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        yObj["image"].toString(),
                                        width: media.width * 0.2,
                                        height: media.width * 0.2,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        yObj["title"].toString(),
                                        style: TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          )),
                      SizedBox(height: media.width * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Упражнения",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "${youArr.length} подхода",
                              style: TextStyle(
                                  color: AppColors.grayColor, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: exercisesArr.length,
                        itemBuilder: (context, index) {
                          var sObj = exercisesArr[index] as Map? ?? {};
                          return ExercisesSetSection(
                            sObj: sObj,
                            onPressed: (obj) {
                              return;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ExercisesStepDetails(eObj: obj),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(height: media.width * 0.1),
                    ],
                  ),
                ),
                SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RoundGradientButton(
                          title: "Начать тренировку", onPressed: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
