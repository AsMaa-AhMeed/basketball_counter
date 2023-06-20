import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  int teamAPoints = 0, teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is IncrementACounter) {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        } else {
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Points Counter',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: const Color(0xFFAD91B2),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                              //color: Color(0xFF5797BA),
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: const TextStyle(
                              //color: Color(0xFF5797BA),
                              color: Colors.black,
                              fontSize: 170,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFAD91B2),
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonNumber: 1);
                            },
                            child: const Text(
                              'Add 1 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFAD91B2),
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonNumber: 2);
                            },
                            child: const Text(
                              'Add 2 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFAD91B2),
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonNumber: 3);
                            },
                            child: const Text(
                              'Add 3 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const Spacer(flex: 12),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        color: Colors.grey.shade300,
                        thickness: 3,
                        width: 20,
                        indent: 60,
                        endIndent: 65,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              //color: Color(0xFF5797BA),
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: const TextStyle(
                              //color: Color(0xFF5797BA),
                              color: Colors.black,
                              fontSize: 170,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFAD91B2),
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'B', buttonNumber: 1);
                            },
                            child: const Text(
                              'Add 1 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFAD91B2),
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'B', buttonNumber: 2);
                            },
                            child: const Text(
                              'Add 2 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFAD91B2),
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'B', buttonNumber: 2);
                            },
                            child: const Text(
                              'Add 3 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const Spacer(flex: 12),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFAD91B2),
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context)
                        .teamIncrement(team: 'R', buttonNumber: 0);
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
