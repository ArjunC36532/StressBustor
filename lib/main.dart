import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:format/format.dart';
import 'package:intl/intl.dart';
import 'Breathing_Exersizes.dart';

void main() => runApp(MaterialApp(
      home: LoadingScreen(),
    ));

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });

    return Scaffold(
      appBar: null,
      backgroundColor: Colors.lightGreenAccent[100],
      body: Center(
        child: Column(
          children: [
            Image.asset('lib/stress-bustor-high-resolution-logo.jpeg'),
            SizedBox(height: 100),
            LoadingAnimationWidget.threeRotatingDots(color: Colors.green, size: 100,)

          ],
        ),
      ),
    );



  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[100],
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StressTest()),
                );
              },
              child: const Text(
                'Calculate your Stress',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StressBustors()));
              },
              child: const Text(
                'Stress Busters',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class StressTest extends StatefulWidget {
  StressTest({super.key});

  @override
  State<StressTest> createState() => _StressTestState();
}

class _StressTestState extends State<StressTest> {
  var questions = [
    'On a scale of 1 to 5, how frequently do you experience difficulty falling asleep due to stress?',
    'How would you rate your ability to concentrate when feeling stressed?',
    'To what extent do you feel overwhelmed by daily tasks and responsibilities?',
    'On a scale of 1 to 5, how often do you experience physical symptoms of stress (e.g., headaches, muscle tension)?',
    'How well do you cope with unexpected changes or challenges?',
    'Rate your overall stress level during the past week.',
    'On a scale of 1 to 5, how satisfied are you with your work-life balance?',
    'How often do you engage in activities or hobbies that help you relax?',
    'To what extent do you feel in control of your life?',
    'Rate your ability to manage and cope with stress overall.',
  ];

  var answer_options = [
    ["Never", "Rarely", "Occasionally", "Frequently", "Always"],
    ["Excellent", "Good", "Average", "Poor", "Very Poor"],
    ["Not at all", "Slightly", "Moderately", "Very", "Extremely"],
    ["Rarely or never", "Occasionally", "Sometimes", "Often", "Constantly"],
    ["Extremely well", "Well", "Neutral", "Poorly", "Very poorly"],
    ["Very low", "Low", "Moderate", "High", "Very high"],
    [
      "Very satisfied",
      "Satisfied",
      "Neutral",
      "Dissatisfied",
      "Very dissatisfied"
    ],
    ["Daily", "Several times a week", "Once a week", "Rarely", "Never"],
    [
      "Completely in control",
      "Mostly in control",
      "Neutral",
      "Somewhat out of control",
      "Completely out of control"
    ],
    ["Excellent", "Good", "Average", "Poor", "Very poor"]
  ];
  int index = 0;
  int answer_index = 0;
  double sliderValue = 1;
  bool started = true;
  int score = 0;

  String generateQuestion() {
    return format('{}. {}', (index + 1).toString(), questions[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[100],
      appBar: null,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            const Align(
              alignment: Alignment.center,
              child: Text(
                  'Please answer the following questions to measure your stress'),
            ),
            const SizedBox(height: 150),
            Text(generateQuestion()),
            const SizedBox(height: 20),
            Text(answer_options[index][answer_index]),
            Slider(
              value: sliderValue,
              label: sliderValue.toString(),
              onChanged: (newRating) {
                setState(() {
                  sliderValue = newRating;
                  answer_index = sliderValue.round() - 1;
                });
              },
              min: 1,
              max: 5,
              divisions: 4,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    // Update score before moving to the next question
                    score += sliderValue.round();

                    if (index < 9) {
                      // Move to the next question
                      index += 1;
                    } else if (index == 9) {
                      // Navigate to the Results screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Results(score)),
                      );
                    }
                  });
                },
                child: const Text("Next Question")
            )

          ],
        ),
      ),
    );
  }
}

class Results extends StatefulWidget {
  final int score;
  late String level;
  late String rec;

  Results(this.score) {
    if (score >=10 && score <=20){
      level = "low";
      rec = "Diaphragmatic Breathing";
    }
    else if (score >=21 && score <=35){
      level = "moderate";
      rec = "4-7-8 Breathing";
    }
    else{
      level = "high";
      rec = "Box Breathing";
    }
  }

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[100],
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(format("You have {} stress", widget.level)),
            const SizedBox(height: 50),
            SfRadialGauge(
              title: GaugeTitle(text: 'Stress Meter'),
                axes: <RadialAxis>[
                  RadialAxis(minimum: 10,maximum: 50,
                      pointers: [NeedlePointer(value: widget.score.toDouble(),)],
                      ranges: <GaugeRange>[
                        GaugeRange(startValue: 10,endValue: 20,color: Colors.green,startWidth: 10,endWidth:10),
                        GaugeRange(startValue: 20,endValue: 35,color: Colors.orange,startWidth: 10,endWidth: 10),
                        GaugeRange(startValue: 35,endValue: 50,color: Colors.red,startWidth: 10,endWidth: 10),]
                  )

                ]

            ),
            const SizedBox(height: 50),

            GestureDetector(
              onTap: () {

              },
                child: Text(format("I recommend {}",
                    widget.rec)),
            ),



          ],
        ),
      )
    );
  }
}

class StressBustors extends StatefulWidget {
  const StressBustors({Key? key}) : super(key: key);

  @override
  State<StressBustors> createState() => _StressBustorsState();
}

class _StressBustorsState extends State<StressBustors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[100],
      appBar: null,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DiaphragmaticBreathingInfoPage()));

            }, child: Text("Diaphragmatic Breathing")),
            SizedBox(height: 100),
            TextButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FourSevenEightBreathingInfoPage()),
              );
            }, child: Text("4-7-8 Breathing")),
            SizedBox(height: 100),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BoxBreathingInfoPage()));
            }, child: Text("Box Breathing")),
            SizedBox(height: 100),

          ],
        ),
      ),


    );
  }
}

