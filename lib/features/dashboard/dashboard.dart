import 'package:flutter/material.dart';

import '../../commons/feedback.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BabelFeedback()));
        },
        icon: Icon(Icons.face_retouching_natural),
        label: Text('Help Babel !'),
        backgroundColor: Colors.deepPurple[300],
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Student Dashboard: Coming Soon!!!',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 300,
                child: Image.asset('assets/images/Dashboard2.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Expanded(
                      child: Text(
                        'What our student dashboard will have?',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Expanded(
                      child: Text(
                        '- Carefully selected resources(rich with options & study formats), chosen personally to suit your goals. ',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Expanded(
                      child: Text(
                        'Detailed analysis of your self-study habits, progress & patterns.',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Expanded(
                      child: Text(
                        "Collaborative study & quality resource sharing on your finger's touch",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Expanded(
                      child: Text(
                        '- Cloud notebooks & generative notemaking tools.',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Expanded(
                      child: Text(
                        'Help Babel to help you in bettering your self-study experience by giving us your valuable feedback.',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Expanded(
                      child: Text(''),
                    )),
              ),
              SizedBox(
                height: 300,
                child: Image.asset('assets/images/Dashboard.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
