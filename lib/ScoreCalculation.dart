// ignore_for_file: non_constant_identifier_names

class ScoreCalculation {
  List<int> xxx = [];
  List<int> yyy = [];
  List<int> xxxr = [];
  List<int> yyyr = [];

  AddToList(xx, yy) {
    xxx.add(xx);
    yyy.add(yy);
  }

  GetScoreForx() {
    xxxr.add(xxx.fold(0, (p, c) => p + c));
  }

  GetScoreFory() {
    yyyr.add(yyy.fold(0, (p, c) => p + c));
  }

  clearAll() {
    xxx.clear();
    yyy.clear();
    xxxr.clear();
    yyyr.clear();
  }

  Stepback() {
    xxx.removeLast();
    yyy.removeLast();
    xxxr.removeLast();
    yyyr.removeLast();
  }
}
