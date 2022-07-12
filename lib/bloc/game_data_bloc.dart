import 'package:bloc/bloc.dart';



import 'package:bloc_exam/repo/games_repo.dart';



import 'package:equatable/equatable.dart';

import '../models/exam_model.dart';


part 'game_data_event.dart';
part 'game_data_state.dart';

class GameDataBloc extends Bloc<GameDataEvent, GameDataState> {

  // final RestClient restClient;
  final GamesRepo gamesRepo;
  GameDataBloc(
      this.gamesRepo,
  ) : super(GameDataInitialState()) {
    on<GameDataEvent>((event, emit) async {
      if (event is LoadGameDataEvent) {
        emit(GameDataLoadingState());
        final apiResult = await  gamesRepo.getGamesData();
        print('data keldi');
        if (apiResult == null) {
          emit(GameDataErrorState());
        } else {
          emit(GameDataLoadedState(apiResult: apiResult));
        }
      }
    });
  }
}
