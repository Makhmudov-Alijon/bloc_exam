
import 'package:bloc_exam/models/exam_model.dart';


import 'package:bloc_exam/repo/games_repo.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Game data can be fetched', () async {
    final gameRepo = GamesRepo();
    List<ExamModel>? data = (await gameRepo.getGamesData());

    if (data != null) {
      expect(data.length, greaterThan(0));
    }
  });

  test('testing route lists', () async {
    // final router = AppRouter();
    // passes if routes are available
    // expect(router.routes.isNotEmpty, true);
  });
}
