import 'dart:convert';


import 'package:bloc_exam/models/exam_model.dart';

import 'package:http/http.dart' as http;

class GamesRepo {
  Future<List<ExamModel>?> getGamesData() async {
    String url = "https://www.gamerpower.com/api/giveaways";
    final result = await http.Client().get(Uri.parse(url));
    if (result.statusCode != 200) {
      return null;
    } else {
      Iterable models = jsonDecode(result.body);
      List<ExamModel> dataModels = [];
      for (var model in models) {
        ExamModel dataModel = ExamModel.fromJson(model);
        dataModels.add(dataModel);
      }
      return dataModels;
    }
  }
}
