import 'package:flutter/material.dart';
import 'package:flutter_epam_kazakh/src/dashboard/helper/category_model.dart';
import 'package:flutter_epam_kazakh/src/dashboard/helper/mentors.dart';
import 'package:flutter_epam_kazakh/src/dashboard/widget/share_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  static const String routeName = '/dashboard';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  double sliderValue = 00;
  double sliderValueGrid = 0;
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          leadingWidth: 80.w,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Image.asset(
              'assets/images/default-profile-picture.png',
              height: 50,
            ),
          ),
          title: const Text(
            'Салам, Нұр туған',
            style: TextStyle(
              color: Color(0xff0F172A),
              fontWeight: FontWeight.w700,
              fontFamily: 'Manrope_bold',
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Text(
                "Let's learn something new today!",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff0F172A),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Manrope_bold",
                ),
              ),
              const SizedBox(height: 20),
              container(),
              const SizedBox(height: 20),
              SizedBox(
                height: height / 3.2,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: category.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    CategoryModel data = category[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("course");
                        },
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: width / 6,
                              height: height / 10,
                              decoration: const BoxDecoration(
                                color: Color(0xffEDF5FF),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                data.image_1,
                                height: height / 15,
                                width: width / 15,
                              ),
                            ),
                            SizedBox(height: height / 120),
                            Text(
                              data.name_1,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Manrope_bold",
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(height: height / 35),
                            Container(
                              alignment: Alignment.center,
                              width: width / 6,
                              height: height / 10,
                              decoration: const BoxDecoration(
                                color: Color(0xffEDF5FF),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                data.image_2,
                                height: height / 15,
                                width: width / 15,
                              ),
                            ),
                            SizedBox(height: height / 100),
                            Text(
                              data.name_2,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Manrope_bold",
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: height / 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Latest Course",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: "Manrope_bold",
                      letterSpacing: 0.2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("latest_see_all");
                    },
                    child: const Text(
                      "SEE ALL",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff0056D2),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Manrope_bold",
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height / 35),
              SizedBox(
                width: width,
                height: height / 3.5,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: mentors.length,
                  itemBuilder: (context, index) {
                    Mentors mentor = mentors[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        width: width / 2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/mentor.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: width / 2.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/mentor_image_overlay.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25, top: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(25),
                                          ),
                                        ),
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const ShareButton();
                                        },
                                      );
                                    },
                                    child: Image.asset(
                                      "assets/icons/mentor_backarrow.png",
                                      height: height / 32,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15, top: 45, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: height / 30),
                                  Text(
                                    mentor.name,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Manrope_bold",
                                      color: Colors.white,
                                      letterSpacing: 0.3,
                                    ),
                                  ),
                                  SizedBox(height: height / 150),
                                  Text(
                                    mentor.course,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Manrope_bold",
                                      color: Colors.white,
                                      letterSpacing: 0.2,
                                    ),
                                  ),
                                  SizedBox(height: height / 60),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Color(0xffF9AA00),
                                      ),
                                      Text(
                                        mentor.rate,
                                        style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Manrope_bold",
                                          color: Colors.white,
                                          letterSpacing: 0.2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  buttonMentor(
                                    text: "Follow",
                                    color: const Color(0xff0056D2),
                                    onPress: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget container() {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xff2472E3),
            Color(0xff0550BB),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/images/avatar.png",
                      scale: 5,
                    ),
                  ),
                  Positioned(
                    left: 1,
                    child: Image.asset(
                      "assets/images/badge.png",
                      scale: 3,
                    ),
                  ),
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width / 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Elon Musk",
                    style: TextStyle(
                      fontFamily: "Manrope_bold",
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 0.2,
                    ),
                  ),
                  Text(
                    "Congrats you have reach Platinum",
                    style: TextStyle(
                      fontFamily: "Manrope_bold",
                      fontWeight: FontWeight.w400,
                      color: Color(0xff96CBFA),
                      fontSize: 12,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Conqueror",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Manrope_bold",
                  letterSpacing: 0.2,
                ),
              ),
              const Spacer(),
              Text(
                "${sliderValue.toInt()}/1000",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Manrope_bold",
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: const Color(0xffF9AA00),
              inactiveTrackColor: Colors.white,
              trackHeight: 6,
              thumbShape: const RoundSliderOverlayShape(),
              trackShape: CustomTrackShape(),
            ),
            child: Slider(
              min: 00,
              max: 1000,
              value: sliderValue,
              onChanged: (double val) {
                setState(() {
                  sliderValue = val;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("my_learning");
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 66,
                  width: 93,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Home.png",
                        scale: 3,
                      ),
                      const Text(
                        "53 Course",
                        style: TextStyle(
                          fontFamily: "Manrope_bold",
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 10,
                          letterSpacing: 0.2,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 66,
                width: 93,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/Home_2.png",
                      scale: 3,
                    ),
                    const Text(
                      "20 Hours",
                      style: TextStyle(
                        fontFamily: "Manrope_bold",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 10,
                        letterSpacing: 0.2,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 66,
                width: 93,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/Home_3.png",
                      scale: 3,
                    ),
                    const Text(
                      "120 Modules",
                      style: TextStyle(
                        fontFamily: "Manrope_bold",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 10,
                        letterSpacing: 0.2,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(2),
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Manrope_bold',
                color: Colors.black,
                letterSpacing: 0.3,
              ),
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("search");
                  },
                  child: Image.asset(
                    "assets/icons/Search.png",
                    scale: 2.7,
                    color: const Color(0xff0F172A),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search course/mentor",
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Manrope_semibold',
                  color: Color(0xff64748B),
                  letterSpacing: 0.3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonMentor({required String text, required Color color, void Function()? onPress}) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 2.5,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        onPressed: onPress,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            fontFamily: 'Manrope_bold',
            color: Colors.white,
            letterSpacing: 0.2,
          ),
        ),
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
