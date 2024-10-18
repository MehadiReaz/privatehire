import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/rrr.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFF18675F),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: SvgPicture.asset(
                        'assets/svgs/aaa.svg',
                        // color: Colors.black,
                        height: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              // Name
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Nazmul Hoque Shawon',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset('assets/svgs/Icons.svg')
                ],
              ),

              const SizedBox(height: 20),
              // Grid with Stats
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 2,
                children: [
                  const StatCard(
                      title: "MOCK TEST TAKEN",
                      value: "18",
                      backgroundColor: Color(0xFF007465)),
                  const StatCard(
                      title: "LEFT MOCK TEST",
                      value: "5",
                      backgroundColor: Color(0xFF007465)),
                  StatCard1(
                      title: "QUIZ COMPLETED",
                      value: "28%",
                      backgroundColor: Colors.grey[200]),
                  StatCard1(
                      title: "QUESTION ANSWERED",
                      value: "90%",
                      backgroundColor: Colors.grey[200]),
                  StatCard1(
                      title: "CORRECT ANSWER",
                      value: "68%",
                      backgroundColor: Colors.grey[200]),
                  StatCard1(
                      title: "WRONG ANSWER",
                      value: "22%",
                      backgroundColor: Colors.grey[200]),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFD9EAE8)),
                child: const Row(
                  children: [
                    Column(
                      children: [],
                    ),
                    PieChartSample2(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color? backgroundColor;

  const StatCard(
      {super.key,
      required this.title,
      required this.value,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class StatCard1 extends StatelessWidget {
  final String title;
  final String value;
  final Color? backgroundColor;

  const StatCard1(
      {super.key,
      required this.title,
      required this.value,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD9EAE8),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<PieChartSample2> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          _buildLegend(),
          const SizedBox(width: 20),
          SizedBox(
            height: 150,
            width: 150,
            child: PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 40,
                // Increase this to make the inner circle bigger
                sections: _showingSections(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _showingSections() {
    final List<Color> sectionColors = [
      const Color(0xFF007465), // Correct Answer
      const Color(0xFFE2425C), // Wrong Answer
      const Color(0xFFFB9F2E), // Not Answered
    ];
    final List<double> sectionValues = [60, 25, 15];

    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final radius = isTouched
          ? 45.0
          : 35.0; // Decrease this to reduce the width of the pie sections
      return PieChartSectionData(
        color: sectionColors[i],
        value: sectionValues[i],
        radius: radius,
        // Remove 'title' and 'titleStyle' to hide text in the pie sections
      );
    });
  }

  Widget _buildLegend() {
    final List<String> titles = [
      'CORRECT ANSWER',
      'WRONG ANSWER',
      'NOT ANSWERED',
    ];
    final List<Color> colors = [
      const Color(0xFF007465),
      const Color(0xFFE2425C),
      const Color(0xFFFB9F2E),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(titles.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              Container(
                width: 12,
                height: 12,
                color: colors[index],
              ),
              const SizedBox(width: 8),
              Text(
                titles[index],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

// class DonutChartWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Example donut chart (replace with actual chart implementation)
//     return Container(
//       height: 150,
//       width: double.infinity,
//       child: Center(
//         child: Column(
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               child: CircularProgressIndicator(
//                 strokeWidth: 8,
//                 value: 0.7, // Example value for chart
//                 backgroundColor: Colors.orangeAccent,
//                 valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
//               ),
//             ),
//             const SizedBox(height: 16),
//             // Legend for the chart
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 LegendItem(color: Colors.green, label: "CORRECT ANSWER"),
//                 LegendItem(color: Colors.red, label: "WRONG ANSWER"),
//                 LegendItem(color: Colors.orangeAccent, label: "NOT ANSWERED"),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class LegendItem extends StatelessWidget {
//   final Color color;
//   final String label;
//
//   LegendItem({required this.color, required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           width: 12,
//           height: 12,
//           decoration: BoxDecoration(
//             color: color,
//             borderRadius: BorderRadius.circular(2),
//           ),
//         ),
//         const SizedBox(width: 4),
//         Text(label, style: const TextStyle(fontSize: 12)),
//         const SizedBox(width: 16),
//       ],
//     );
//   }
// }
