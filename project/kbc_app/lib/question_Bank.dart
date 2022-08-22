import 'package:flutter/material.dart';

import 'global.dart';

TextStyle textStyle = const TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.w700,
  color: Colors.black,
);

List<QuestionBank> question = <QuestionBank>[
  QuestionBank(
    id: 1,
    money: 1000,
    que: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("""1. In the Film "OMG Oh My God" Kanji
          Bhai field a case against whom for the
          damage of his shop due to an
          "earthquake ?""", style: textStyle),
        ],
      ),
    ),
    a: 'Bharat Mata',
    b: 'Parliament',
    c: 'Mumbai City',
    d: 'Bhagwan',
  ),
  QuestionBank(
    id: 2,
    money: 2000,
    que: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("""2. What is the new name of the
          "Hyderabad franchise that would replace
          "Deccan Charges in IPL6?""", style: textStyle),
        ],
      ),
    ),
    a: 'Sun Charges',
    b: 'Nizam Jyoti',
    c: 'Andhra Aces',
    d: """Sun risers 
    Hyderabad""",
  ),
  QuestionBank(
    id: 3,
    money: 3000,
    que: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("""3. In india,under which Union Ministry
          "does the 'Rajbhasha Vibhag' function?""", style: textStyle),
        ],
      ),
    ),
    a: 'Home Affairs',
    b: 'HRD',
    c: 'Culture',
    d: 'Law & Justice',
  ),
  QuestionBank(
    id: 4,
    money: 5000,
    que: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("""4. According to a proverb, what is said to
          "be 'the mother of invention?""", style: textStyle),
        ],
      ),
    ),
    a: 'Society',
    b: 'Problem',
    c: 'Science',
    d: 'Necessity',
  ),
  QuestionBank(
    id: 5,
    money: 10000,
    que: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("""5. Which actress got married to
          "Siddharth Roy Kapur in 2012?""", style: textStyle),
        ],
      ),
    ),
    a: 'Prachi Desai',
    b: 'Lisa Ray',
    c: 'P c Royn',
    d: 'Jagdish \n Chandra Bose',
  ),
  QuestionBank(
    id: 6,
    money: 20000,
    que: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("""6. To whom did Ravindranath Tagore
          "dedicate his book 'visva parichay' written
          "on science""", style: textStyle),
        ],
      ),
    ),
    a: 'C v raman',
    b: 'Satyendra \n nath Bose',
    c: 'P c Royn',
    d: 'Jagdish \n Chandra Bose',
  ),
  QuestionBank(
    id: 7,
    money: 40000,
    que: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("""7. Which of these is a chemical element
          "present in the periodic table?""", style: textStyle),
        ],
      ),
    ),
    a: 'Eurocium',
    b: 'Asiacium',
    c: 'Americium',
    d: 'Africium',
  ),
  QuestionBank(
    id: 8,
    money: 80000,
    que: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("""8. Which of this is not a work of
          "Kalidas??""", style: textStyle),
        ],
      ),
    ),
    a: 'Raghuvamsham',
    b: 'Kadambari',
    c: 'Vikramorvasiyam',
    d: 'Meghadutam',
  ),
  QuestionBank(
    id: 9,
    money: 160000,
    que: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("""9. According to the Devi,Bhagavata
          "from the tears of which god is the
          "rudraksha tree believed to have been
          created?""", style: textStyle),
        ],
      ),
    ),
    a: 'Vishnu',
    b: 'Shiva',
    c: 'Krishna',
    d: 'Kamadeva',
  ),
  QuestionBank(
    id: 10,
    money: 320000,
    que: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(""""10. Which is the name means 'gold-
          "like?""", style: textStyle),
        ],
      ),
    ),
    a: 'Sonakshi',
    b: 'Deepika',
    c: 'Sonam',
    d: 'Katrina',
  ),
];
