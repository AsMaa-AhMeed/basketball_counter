import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamAPoints = 0, teamBPoints = 0;

  CounterCubit() : super(IncrementBCounter());

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(IncrementACounter());
    } else if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(IncrementBCounter());
    } else if (team == 'R') {
      teamAPoints = buttonNumber;
      teamBPoints = buttonNumber;
      emit(IncrementBCounter());
    }
  }
}
