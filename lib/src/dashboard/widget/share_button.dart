import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({super.key});

  @override
  State<ShareButton> createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Align(
        alignment: const Alignment(0.1, -1.2),
        child: Container(
          transform: Matrix4.translationValues(0.0, -30, 0.0),
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            child: Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Container(
        height: height / 1,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Share",
                    style: TextStyle(
                      fontFamily: "Manrope_bold",
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: height / 40),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: share.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                      itemBuilder: (context, index) {
                        ShareModel data = share[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              SizedBox(
                                width: width / 5.5,
                                child: Image.asset(data.image, fit: BoxFit.cover),
                              ),
                              SizedBox(height: height / 120),
                              Text(
                                data.firstName,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Manrope_bold",
                                  letterSpacing: 0.2,
                                ),
                              ),
                              Text(
                                data.lastName,
                                style: TextStyle(
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
                                width: width / 5.5,
                                height: height / 9,
                                decoration: const BoxDecoration(
                                  color: Color(0xffEDF5FF),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  data.icon,
                                  height: height / 15,
                                  width: width / 15,
                                ),
                              ),
                              SizedBox(height: height / 100),
                              Text(
                                data.text,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Manrope_bold",
                                  letterSpacing: 0.2,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: height / 55),
                  Container(
                    padding: const EdgeInsets.all(2),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.9,
                      ),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: 'Manrope_bold',
                        letterSpacing: 0.3,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.copy,
                            color: Colors.black,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Copy",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: 'Manrope_bold',
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ShareModel {
  String image;
  String firstName;
  String lastName;
  String icon;
  String text;

  ShareModel({
    required this.image,
    required this.firstName,
    required this.lastName,
    required this.icon,
    required this.text,
  });
}

List<ShareModel> share = [
  ShareModel(
    image: "assets/images/share_1.png",
    firstName: "Makenna",
    lastName: "Mango",
    icon: "assets/images/message_share_1.png",
    text: "Message",
  ),
  ShareModel(
    image: "assets/images/share_2.png",
    firstName: "Skylar",
    lastName: "Septimus",
    icon: "assets/images/mail_share_2.png",
    text: "Mail",
  ),
  ShareModel(
    image: "assets/images/share_3.png",
    firstName: "Cooper",
    lastName: "Philips",
    icon: "assets/images/whatsapp_share_3.png",
    text: "Whatsapp",
  ),
  ShareModel(
    image: "assets/images/share_4.png",
    firstName: "Carter",
    lastName: "Vetrovs",
    icon: "assets/images/instagram_share_4.png",
    text: "Instagram",
  ),
  ShareModel(
    image: "assets/images/share_1.png",
    firstName: "Makenna",
    lastName: "Mango",
    icon: "assets/images/message_share_1.png",
    text: "Message",
  ),
  ShareModel(
    image: "assets/images/share_3.png",
    firstName: "Cooper",
    lastName: "Philips",
    icon: "assets/images/whatsapp_share_3.png",
    text: "Whatsapp",
  ),
];
