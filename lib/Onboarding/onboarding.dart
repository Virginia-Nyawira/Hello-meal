import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:hello_meal/HomeScreen/homeScreen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            providerConfigs: const [
              EmailProviderConfiguration(),
              GoogleProviderConfiguration(
                  clientId: '230651499148-1bikckmj949ge2lb4su5mqahnh1nsj61.apps.googleusercontent.com'),
            ],
            ///headerBuilder argument, you can add whatever widgets you want above the sign-in form.
            // headerBuilder: (context, constraints, shrinkOffset){
            //   return Center(
            //     child: Padding(
            //         padding: EdgeInsets.all(8),
            //       child: AspectRatio(
            //         aspectRatio: 1,
            //         child: Row(
            //           children: [
            //             Icon(Icons.notifications_none_rounded,size: 66,color: Colors.orange,),
            //             Text("Hello Meal",style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               color: Colors.blueGrey
            //             ),)
            //           ],
            //         ),
            //       ),
            //     ),
            //   );
            // },
            ///The subtitleBuilder is slightly
            ///different in that the callback arguments include an action,
            /// which is of type AuthAction. AuthAction is an enum that
            /// you can use to detect if the screen the user is on is
            /// the "sign in" screen or the "register" screen.
         subtitleBuilder: (context, action){
              return Padding(padding: const EdgeInsets.all(10),
                child: action == AuthAction.signIn
                    ? const Text('Welcome to H-Meal, please sign in!')
                    : const Text('Welcome to H-Meal, please sign up!'),
              );
         },
            ///The footerBuilder argument is the same as the subtitleBuilder.
            ///It doesn't expose BoxConstraints or shrinkOffset,
            /// as it's intended for text rather than images.
         footerBuilder: (context, action){
              return const Padding(padding: EdgeInsets.all(10),
              child: Text(
                'By signing in, you agree to our terms and conditions.',
                style: TextStyle(color: Colors.grey),
              ),
              );
         },
          );
        }


        return const HomePagePages();
      },
    );
  }
}

