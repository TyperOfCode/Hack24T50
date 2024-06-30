import 'dart:async';
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/domain/models/habit_model/habit_model.dart';
import 'package:step/global_logger.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/presentation/controllers/app/app_controller.dart';
import 'package:step/routes.dart';

class BarChartSample1 extends ConsumerStatefulWidget {
  BarChartSample1({super.key});

  List<Color> get availableColors => const <Color>[
        Color(0xff0293ee),
        Color(0xfff8b250),
        Color(0xff845bef),
        Color(0xff13d38e),
        Color(0xffd0e0eb),
      ];

  final Color barBackgroundColor =
      Color.fromARGB(255, 255, 255, 255).withOpacity(0.3);
  final Color barColor = Color.fromARGB(255, 255, 255, 255);
  final Color touchedBarColor = Color(0xff0293ee);

  @override
  ConsumerState<BarChartSample1> createState() => BarChartSample1State();
}

class BarChartSample1State extends ConsumerState<BarChartSample1> {
  final Duration animDuration = const Duration(milliseconds: 250);
  int touchedIndex = -1;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    var goRouter = ref.watch(goRouterProvider);
    var currentUserNotifier = ref.watch(userStateProvider.notifier);
    var userState = ref.watch(userStateProvider);
    var appState = ref.watch(appStateProvider);

    Habit? selectedHabit =
        currentUserNotifier.getHabit(appState.selectedHabitForStats!.id);

    if (selectedHabit == null) {
      return Container(
        color: AppThemeColors.background500,
      );
    }

    Color habitColor = Color(selectedHabit.hexColor);

    return AspectRatio(
      aspectRatio: 1.5,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // const Text(
                //   'Mingguan',
                //   style: TextStyle(
                //     color: AppColors.contentColorGreen,
                //     fontSize: 24,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // const SizedBox(
                //   height: 4,
                // ),
                // Text(
                //   'Grafik konsumsi kalori',
                //   style: TextStyle(
                //     color: AppColors.contentColorGreen.darken(),
                //     fontSize: 18,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                const SizedBox(
                  height: 0,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: BarChart(
                      isPlaying ? randomData() : mainBarData(),
                      swapAnimationDuration: animDuration,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  color: AppThemeColors.background500,
                ),
                onPressed: () {
                  setState(() {
                    isPlaying = !isPlaying;
                    if (isPlaying) {
                      refreshState();
                    }
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color? barColor,
    double width = 20,
    List<int> showTooltips = const [],
  }) {
    barColor ??= widget.barColor;
    var currentUserNotifier = ref.watch(userStateProvider.notifier);
    var appState = ref.watch(appStateProvider);

    Habit? selectedHabit =
        currentUserNotifier.getHabit(appState.selectedHabitForStats!.id);

    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? widget.touchedBarColor : barColor,
          width: width,
          borderSide: isTouched
              ? BorderSide(color: widget.touchedBarColor.withOpacity(0.5))
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: selectedHabit!.maxValue.toDouble(),
            color: widget.barBackgroundColor,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() {
    var goRouter = ref.watch(goRouterProvider);
    var currentUserNotifier = ref.watch(userStateProvider.notifier);
    var userState = ref.watch(userStateProvider);
    var appState = ref.watch(appStateProvider);

    Habit? selectedHabit =
        currentUserNotifier.getHabit(appState.selectedHabitForStats!.id);

    Color habitColor = Color(selectedHabit!.hexColor);

    return List.generate(selectedHabit.stats.days.length, (i) {
        return makeGroupData(
          i,
          selectedHabit.stats.days[i].value,
          barColor: habitColor,
        );
      });
  }

  BarChartData mainBarData() {
    var currentUserNotifier = ref.watch(userStateProvider.notifier);
    var appState = ref.watch(appStateProvider);

    Habit? selectedHabit =
        currentUserNotifier.getHabit(appState.selectedHabitForStats!.id);

    Color habitColor = Color(selectedHabit!.hexColor);

    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (_) => habitColor,
          tooltipHorizontalAlignment: FLHorizontalAlignment.right,
          tooltipMargin: -10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            String weekDay;
            switch (group.x) {
              case 0:
                weekDay = 'Monday';
                break;
              case 1:
                weekDay = 'Tuesday';
                break;
              case 2:
                weekDay = 'Wednesday';
                break;
              case 3:
                weekDay = 'Thursday';
                break;
              case 4:
                weekDay = 'Friday';
                break;
              case 5:
                weekDay = 'Saturday';
                break;
              case 6:
                weekDay = 'Sunday';
                break;
              default:
                throw Error();
            }
            return BarTooltipItem(
              '$weekDay\n',
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: (rod.toY - 1).toString(),
                  style: const TextStyle(
                    color: Colors.white, //widget.touchedBarColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: const FlGridData(show: false),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    var currentUserNotifier = ref.watch(userStateProvider.notifier);
    var appState = ref.watch(appStateProvider);

    Habit? selectedHabit =
        currentUserNotifier.getHabit(appState.selectedHabitForStats!.id);

    Color habitColor = Color(selectedHabit!.hexColor);
    
    var style = TextStyle(
      color: habitColor,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('M', style: style);
        break;
      case 1:
        text = Text('T', style: style);
        break;
      case 2:
        text = Text('W', style: style);
        break;
      case 3:
        text = Text('T', style: style);
        break;
      case 4:
        text = Text('F', style: style);
        break;
      case 5:
        text = Text('S', style: style);
        break;
      case 6:
        text = Text('S', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(
              0,
              Random().nextInt(15).toDouble() + 6,
              barColor: widget.availableColors[
                  Random().nextInt(widget.availableColors.length)],
            );
          case 1:
            return makeGroupData(
              1,
              Random().nextInt(15).toDouble() + 6,
              barColor: widget.availableColors[
                  Random().nextInt(widget.availableColors.length)],
            );
          case 2:
            return makeGroupData(
              2,
              Random().nextInt(15).toDouble() + 6,
              barColor: widget.availableColors[
                  Random().nextInt(widget.availableColors.length)],
            );
          case 3:
            return makeGroupData(
              3,
              Random().nextInt(15).toDouble() + 6,
              barColor: widget.availableColors[
                  Random().nextInt(widget.availableColors.length)],
            );
          case 4:
            return makeGroupData(
              4,
              Random().nextInt(15).toDouble() + 6,
              barColor: widget.availableColors[
                  Random().nextInt(widget.availableColors.length)],
            );
          case 5:
            return makeGroupData(
              5,
              Random().nextInt(15).toDouble() + 6,
              barColor: widget.availableColors[
                  Random().nextInt(widget.availableColors.length)],
            );
          case 6:
            return makeGroupData(
              6,
              Random().nextInt(15).toDouble() + 6,
              barColor: widget.availableColors[
                  Random().nextInt(widget.availableColors.length)],
            );
          default:
            return throw Error();
        }
      }),
      gridData: const FlGridData(show: false),
    );
  }

  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(
      animDuration + const Duration(milliseconds: 50),
    );
    if (isPlaying) {
      await refreshState();
    }
  }
}