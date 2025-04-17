import 'package:fitnessapp/common_widgets/round_button.dart';
import 'package:fitnessapp/common_widgets/round_gradient_button.dart';
import 'package:fitnessapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  List photoArr = [
    {
      "time": [
        "Лавандовый \n торт",
        "Малиновый \n пирог",
        "С семенами \nчиа",
        "Фисташковый \n чизкейк"
      ],
      "photo": [
        "assets/images/photo1.jpg",
        "assets/images/photo2.jpg",
        "assets/images/photo3.jpg",
        "assets/images/photo4.jpg",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        elevation: 0,
        leadingWidth: 0,
        leading: const SizedBox(),
        title: Text(
          "Дневник",
          style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFE5E5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(30)),
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/icons/date_notifi.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                         Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Reminder!",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Next Photos Fall On July 08",
                                  style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ]),
                        ),
                        Container(
                            height: 60,
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.close,
                                  color: AppColors.grayColor,
                                  size: 15,
                                )))
                      ],
                    ),
                  ),
                ),*/
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(20),
                    height: media.width * 0.4,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          AppColors.primaryColor2.withOpacity(0.4),
                          AppColors.primaryColor1.withOpacity(0.4)
                        ]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      "assets/images/progress_each_photo.png",
                      height: media.width * 0.2,
                    ),
                    // const Spacer(),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Правильное питание и регулярные занятия физкультурой - это ключ к здоровью и энергии. Вот основные принципы здорового образа жизни:',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Правильное питание:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '• Ешьте 3-4 раза в день в одно и то же время\n'
                          '• Пейте достаточно воды\n'
                          '• Включайте в рацион фрукты, овощи и цельнозерновые продукты\n'
                          '• Избегайте вредных перекусов и фастфуда',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Физическая активность:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '• Занимайтесь спортом регулярно\n'
                          '• Начинайте с небольших нагрузок\n'
                          '• Слушайте свое тело\n'
                          '• Делайте перерывы между тренировками',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Помните: здоровый образ жизни - это не диета или изнурительные тренировки, а привычка заботиться о себе. Начните с малого и постепенно наращивайте нагрузку. Главное - делать всё регулярно и с удовольствием!',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Рецепты полезных сладостей",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: photoArr.length,
                    itemBuilder: ((context, index) {
                      var pObj = photoArr[index] as Map? ?? {};
                      var imaArr = pObj["photo"] as List? ?? [];

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.zero,
                              itemCount: imaArr.length,
                              itemBuilder: ((context, indexRow) {
                                return Column(children: [
                                  Text(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 10),
                                    pObj["time"][indexRow].toString(),
                                    maxLines: 3,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGrayColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        imaArr[indexRow] as String? ?? "",
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                ]);
                              }),
                            ),
                          ),
                        ],
                      );
                    }))
              ],
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
