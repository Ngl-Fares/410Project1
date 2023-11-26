import 'dart:ffi';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class chatFun extends StatelessWidget {
  bool chat;
  int state;
  List<String> currentText=[

        'press a to chat',

        'Fares: '
          '\n I have 2 days to finish the project,'
          '\n this already took too long to code.',

           'I wonder what to do... '
          '\n There is doctor bassel down there !'
          '\n I should talk to him.',

           '',//null state

          'Fares:'
          '\n I worked really hard on this project'
          '\n please give me a good grade..',

           'Dr Bassel:'
          '\n Bah! you followed a tutorial, anyone can do that'
          '\n Come back when you have an actual code',

         '- No the tutorial only showed part of the required code'
          ' and all the assets for this were behind a pay wall',


        'I had to create custom pixel art and sprites then figure out the right measurments '
            'which weren\'t even in the tutorial so I had to create custom loops for...',

  ' Fares fares fares...'
          '\n this is not my problem,'
          '\n I told you to write your own code. ',


     '- But I did thats what I\'ve been.. '
          '\n -I\'m sorry but there\'s no way to prove you coded this. '
          '\n *Dr. Bassel looks at you with judgment*',


          '-...'
          '\n I can think of a way to prove it'
          '\n really? how so?',

        '*You Punch Dr. Bassel*'

  ];


  String getText(){
    if(state <= 11)
    return currentText.elementAt(state);
    else chat=false;
      return currentText.elementAt(3);
  }

  chatFun({super.key, required this.chat, required this.state,});


  @override
  Widget build(BuildContext context) {


    if (chat && (state !=3 || state <=11)) {
      return Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height / 4,
        margin: const EdgeInsets.only(top: 285),
        padding: const EdgeInsets.all(20),
        color: Colors.white60,
        child:
        AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(getText()),
            TyperAnimatedText(getText()),
            TyperAnimatedText(getText()),
            TyperAnimatedText(getText()),//null state
            TyperAnimatedText(getText()),
            TyperAnimatedText(getText()),
            TyperAnimatedText(getText()),
            TyperAnimatedText(getText()),
            TyperAnimatedText(getText()),
            TyperAnimatedText(getText()),
            TyperAnimatedText(getText()),
            TyperAnimatedText(getText()),
            //TyperAnimatedText(getText()),
            //TyperAnimatedText(getText()),
            //TyperAnimatedText(getText()),
            //TyperAnimatedText(getText()),
           // TyperAnimatedText(getText()),
          ],
          pause: Duration(milliseconds: 100),
          onFinished: getText,
          displayFullTextOnTap: true,
          stopPauseOnTap: false,
          isRepeatingAnimation: true,
          repeatForever: false,
          totalRepeatCount: 1,
        ),

      );
    }
    return Container();
  }
}



