import 'package:flutter/material.dart';
import 'package:flutter_slicing_three/controllers/login_controller.dart';
import 'package:flutter_slicing_three/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? isChecked = false;
  final LoginController loginController =
      LoginController(); // Inisialisasi di sini

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/login_image1.png'),
                    const SizedBox(height: 45),
                    const Text(
                      'Silahkan masuk dengan nomor \ntelkomsel kamu',
                      style: TextStyle(
                          color: Color(0xff1E272E),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      'Nomor HP',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1E272E)),
                    ),
                    TextField(
                      controller: loginController.phoneController,
                      keyboardType: TextInputType.phone,
                      autocorrect: false,
                      decoration: InputDecoration(
                          hintText: 'Cth. 08129011xxxx',
                          hintStyle: const TextStyle(
                              color: Color(0xffA4B0BE),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide:
                                const BorderSide(color: Color(0xffA4B0BE)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide:
                                const BorderSide(color: Color(0xffA4B0BE)),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3)),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Checkbox(
                            value: isChecked,
                            activeColor: const Color(0xffEC2028),
                            onChanged: (newBool) {
                              setState(() {
                                isChecked = newBool;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 20,
                          child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      color: Color(0xff1E272E), fontSize: 14),
                                  children: <TextSpan>[
                                TextSpan(text: 'Saya menyetujui '),
                                TextSpan(
                                  text: 'syarat, ketentuan, ',
                                  style: TextStyle(
                                    color: Color(0xffEC2028),
                                  ),
                                ),
                                TextSpan(text: 'dan '),
                                TextSpan(
                                  text: 'privasi ',
                                  style: TextStyle(
                                    color: Color(0xffEC2028),
                                  ),
                                ),
                                TextSpan(text: '\nTelkomsel')
                              ])),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: Center(
                        child: Container(
                          height: 42,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: const Color(0xffEC2028),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Center(
                            child: Text(
                              'LANJUT',
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text(
                        'Atau masuk menggunakan',
                        style:
                            TextStyle(color: Color(0xff747D8C), fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 157,
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border:
                                    Border.all(color: const Color(0xff3B5998))),
                            child: Image.asset('assets/icons/facebook.png'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 157,
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border:
                                    Border.all(color: const Color(0xff1DA1F2))),
                            child: Image.asset('assets/icons/twitter.png'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
