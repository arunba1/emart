import 'package:e_mart/screens/home_screen/home.dart';
import 'package:get/get.dart';

import '../../consts.dart';
import '../../lists.dart';
import '../../widget_common/applogo_widget.dart';
import '../../widget_common/bg_widget.dart';
import '../../widget_common/custom_textfields.dart';
import '../../widget_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool ischeck = false;

  //text Controller
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Log in to $appname"
                    .text
                    .fontFamily(bold)
                    .white
                    .size(18)
                    .make(),
                15.heightBox,
                //       Obx(
                //         () =>
                Column(
                  children: [
                    customTextField(
                      hint: nameHint,
                      title: name,
                    ),

                    customTextField(
                      hint: emailHint,
                      title: email,
                    ),
                    customTextField(
                      hint: passwordHint,
                      title: password,
                    ),
                    customTextField(
                      hint: retypePassword,
                      title: retypePassword,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: redColor,
                          checkColor: whiteColor,
                          value: ischeck,
                          onChanged: (newValue) {
                            setState(() {
                              ischeck = newValue!;
                            });
                          },
                        ),
                        10.widthBox,
                        Expanded(
                          child: RichText(
                              text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: "I agree to the ",
                                  style: TextStyle(
                                      fontFamily: regular, color: fontGrey)),
                              TextSpan(
                                  text: termsAndCond,
                                  style: TextStyle(
                                      fontFamily: regular, color: redColor)),
                              TextSpan(
                                  text: " &",
                                  style: TextStyle(
                                      fontFamily: regular, color: fontGrey)),
                              TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(
                                      fontFamily: regular, color: redColor)),
                            ],
                          )),
                        ),
                      ],
                    ),
                    5.heightBox,
                    ourButton(
                        color: ischeck == true ? redColor : lightGrey,
                        textColor: whiteColor,
                        title: signup,
                        onPress: () {
                          Get.to(() => Home());
                          // if (ischeck != false) {
                          //   controller.isloading(true);
                          //   try {
                          //     await controller
                          //         .signupMethod(
                          //             context: context,
                          //             email: emailController.text,
                          //             password: passwordController.text)
                          //         .then((value) {
                          //       return controller.storeUserData(
                          //         email: emailController.text,
                          //         password: passwordController.text,
                          //         name: nameController.text,
                          //       );
                          //     }).then((value) {
                          //       VxToast.show(context, msg: loggedin);
                          //       Get.offAll(() => const Home());
                          //     });
                          //   } catch (e) {
                          //     auth.signOut();
                          //     VxToast.show(context, msg: e.toString());
                          //     controller.isloading(false);
                          //   }
                          // }
                        }).box.width(context.screenWidth - 50).make(),
                    10.heightBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        alreadyHaveAccount.text.color(fontGrey).make(),
                        login.text.color(redColor).make().onTap(() {
                          Get.back();
                        })
                      ],
                    ),
                    //       //ourButton().box.width(context.screenWidth - 50).make(),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(EdgeInsets.all(16))
                    .width(context.screenWidth - 70)
                    .shadowSm
                    .make(),
              ],
            ))));
  }
}
