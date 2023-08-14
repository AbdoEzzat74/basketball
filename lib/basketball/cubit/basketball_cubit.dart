import 'package:bloc/bloc.dart';
import 'package:tbloc/basketball/cubit/basketball_state.dart';

class BasketBallCubit extends Cubit<IncrementState>{
  int teamAPoints = 0;
  int teamBPoints = 0;

  BasketBallCubit():super(InitialState());

  void incrementPoints({required String team ,required int points })
  {
    if(team=="A"){
      teamAPoints += points;
      emit(IncrementTeamState());
    } else{
      teamBPoints += points;
      emit(IncrementTeamState());
    }
  }
  void reset (){
    teamAPoints = 0;
    teamBPoints = 0;
    emit(ResetState());
  }

}