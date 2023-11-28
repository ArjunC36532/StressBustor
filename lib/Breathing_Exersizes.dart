import 'package:flutter/material.dart';

class DiaphragmaticBreathingInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.lightGreenAccent[100],
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is Diaphragmatic Breathing?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Diaphragmatic breathing, also known as abdominal or deep breathing, is a breathing technique that involves engaging the diaphragm to promote a more relaxed and efficient way of breathing. It is often used as a relaxation and stress management tool.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'How to Practice Diaphragmatic Breathing:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '1. Find a comfortable and quiet place to sit or lie down.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '2. Place one hand on your chest and the other on your abdomen, just below your ribcage.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '3. Inhale slowly through your nose, allowing your abdomen to expand. Your chest should move only slightly.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '4. Exhale slowly through your mouth, feeling your abdomen contract.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '5. Repeat this process for several breaths, focusing on the rise and fall of your abdomen.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Benefits of Diaphragmatic Breathing:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '- Promotes relaxation and reduces stress.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Enhances oxygen exchange in the lungs.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Improves focus and concentration.',
              style: TextStyle(fontSize: 16),
            ),
            // You can add more information based on your requirements.
          ],
        ),
      ),
    );
  }
}

class FourSevenEightBreathingInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: Colors.lightGreenAccent[100],
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '4-7-8 Breathing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '4-7-8 Breathing is a calming breathing exercise that involves inhaling for a count of 4, holding the breath for a count of 7, and exhaling for a count of 8. It is known for promoting relaxation and reducing anxiety.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'How to Practice 4-7-8 Breathing:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '1. Find a quiet place to sit or lie down.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '2. Close your eyes and take a deep breath in through your nose for a count of 4.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '3. Hold your breath for a count of 7.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '4. Exhale slowly and completely through your mouth for a count of 8.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '5. Repeat this cycle several times, focusing on the breath counts and maintaining a calm rhythm.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Benefits of 4-7-8 Breathing:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '- Induces relaxation and reduces stress.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Helps improve sleep quality.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Can be used as a quick relaxation technique in stressful situations.',
                style: TextStyle(fontSize: 16),
              ),
              // You can add more information based on your requirements.
            ],
          ),
        ),
      ),
    );
  }
}



class BoxBreathingInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: Colors.lightGreenAccent[100],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Box Breathing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Box Breathing, also known as square breathing, is a breath control technique that involves inhaling, holding the breath, exhaling, and then holding the breath again, each for an equal count. It is used to manage stress and improve focus.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                'How to Practice Box Breathing:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                '1. Find a comfortable and quiet place to sit or stand.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '2. Inhale slowly and deeply through your nose for a count of 4.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '3. Hold your breath for a count of 4.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '4. Exhale slowly and completely through your mouth for a count of 4.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '5. Hold your breath for a count of 4 before beginning the next cycle.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '6. Repeat this process for several cycles, maintaining a steady and controlled pace.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                'Benefits of Box Breathing:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                '- Calms the nervous system and reduces anxiety.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Enhances focus and concentration.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Can be practiced anywhere and anytime for quick relaxation.',
                style: TextStyle(fontSize: 16),
              ),
              // You can add more information based on your requirements.
            ],
          ),
        ),
      ),
    );
  }
}
