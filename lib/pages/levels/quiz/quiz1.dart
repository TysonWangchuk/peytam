import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz1 extends StatefulWidget {
  const Quiz1({Key? key}) : super(key: key);

  @override
  _Quiz1State createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  int _currentIndex = 0;
  int _score = 0;
  int _timeRemaining = 600; // 10 minutes in seconds
  Timer? _timer;

  final List<Map<String, Object>> _questions = [
    {
      'question': 'What is the capital of France?',
      'options': ['London', 'Paris', 'Berlin', 'Rome'],
      'answer': 1,
    },
    {
      'question': 'What is the highest mountain in the world?',
      'options': ['Everest', 'K2', 'Kilimanjaro', 'Denali'],
      'answer': 0,
    },
    {
      'question': 'What is the largest ocean in the world?',
      'options': ['Atlantic', 'Arctic', 'Indian', 'Pacific'],
      'answer': 3,
    },
    // Add more questions here
  ];

  List<Map<String, Object>> _quizQuestions = [];

  void _generateQuizQuestions() {
    _quizQuestions.clear();
    final random = Random();
    for (var i = 0; i < 10; i++) {
      final index = random.nextInt(_questions.length);
      _quizQuestions.add(_questions[index]);
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeRemaining > 0) {
          _timeRemaining--;
        } else {
          _timer!.cancel();
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _generateQuizQuestions();
    _startTimer();
  }

  void _submitAnswer(int answer) {
    if (answer == _quizQuestions[_currentIndex]['answer']) {
      setState(() {
        _score++;
      });
    }

    setState(() {
      _currentIndex++;
      if (_currentIndex >= _quizQuestions.length) {
        _timer?.cancel();
      }
    });
  }

  void _restartQuiz() {
    setState(() {
      _currentIndex = 0;
      _score = 0;
      _timeRemaining = 600;
      _generateQuizQuestions();
      _startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          'Level 1 - Quiz',
          style: GoogleFonts.kleeOne(
            textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        ),
      ),
      body: _currentIndex < _quizQuestions.length
          ? Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/coin.png',
                                height: 32,
                              ),
                              Text(
                                '0',
                                style: GoogleFonts.oswald(
                                    textStyle: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/point.png',
                                height: 32,
                              ),
                              Text(
                                '0',
                                style: GoogleFonts.oswald(
                                    textStyle: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text(
                        _quizQuestions[_currentIndex]['question'].toString(),
                        style: TextStyle(fontSize: 24), textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      ...(_quizQuestions[_currentIndex]['options'] as List<String>)
                          .asMap()
                          .map((index, option) => MapEntry(
                              index,
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFFFCC33),
                                  fixedSize: Size(100, 30)
                                ),
                                onPressed: _timeRemaining > 0
                                    ? () {
                                  _submitAnswer((_quizQuestions[_currentIndex]['options'] as List<String>).indexOf(option));
                                }
                                    : null,

                                child: Text(option),
                              )))
                          .values
                          .toList(),
                      SizedBox(height: 20),
                      Text(
                        'Time remaining: ${_timeRemaining ~/ 60}:${(_timeRemaining % 60).toString().padLeft(2, '0')}',
                        style: GoogleFonts.kleeOne(
                          textStyle: TextStyle(fontSize: 18),),
                      ),
                      SizedBox(height: 10),
                      Row(
                        // Add the code to display the current score and a button to restart the quiz
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Score: $_score', style: GoogleFonts.kleeOne(
                            textStyle: TextStyle(),),),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFFFCC33),
                                fixedSize: Size(100, 30)
                            ),
                            onPressed: () {
                              _restartQuiz();
                            },
                            child: Text('Restart Quiz',style: GoogleFonts.kleeOne(
                              textStyle: TextStyle(),),),
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
            ),
          )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Quiz completed!',
                    style: GoogleFonts.kleeOne(
                      textStyle: TextStyle(fontSize: 24),),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Your score is $_score/${_quizQuestions.length}',
                    style: GoogleFonts.kleeOne(
                      textStyle: TextStyle(),),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFCC33),
                        fixedSize: Size(100, 30)
                    ),
                    onPressed: () {
                      _restartQuiz();
                    },
                    child: Text('Restart Quiz'),
                  ),
                ],
              ),
            ),
    );
  }
}
