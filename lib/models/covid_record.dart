// To parse this JSON data, do
//
//     final covidRecord = covidRecordFromJson(jsonString);

import 'dart:convert';

CovidRecord covidRecordFromJson(String str) => CovidRecord.fromJson(json.decode(str));

String covidRecordToJson(CovidRecord data) => json.encode(data.toJson());

class CovidRecord {
    CovidRecord({
        this.date,
        this.state,
        this.positive,
        this.probableCases,
        this.negative,
        this.pending,
        this.totalTestResultsSource,
        this.totalTestResults,
        this.hospitalizedCurrently,
        this.hospitalizedCumulative,
        this.inIcuCurrently,
        this.inIcuCumulative,
        this.onVentilatorCurrently,
        this.onVentilatorCumulative,
        this.recovered,
        this.dataQualityGrade,
        this.lastUpdateEt,
        this.dateModified,
        this.checkTimeEt,
        this.death,
        this.hospitalized,
        this.dateChecked,
        this.totalTestsViral,
        this.positiveTestsViral,
        this.negativeTestsViral,
        this.positiveCasesViral,
        this.deathConfirmed,
        this.deathProbable,
        this.totalTestEncountersViral,
        this.totalTestsPeopleViral,
        this.totalTestsAntibody,
        this.positiveTestsAntibody,
        this.negativeTestsAntibody,
        this.totalTestsPeopleAntibody,
        this.positiveTestsPeopleAntibody,
        this.negativeTestsPeopleAntibody,
        this.totalTestsPeopleAntigen,
        this.positiveTestsPeopleAntigen,
        this.totalTestsAntigen,
        this.positiveTestsAntigen,
        this.fips,
        this.positiveIncrease,
        this.negativeIncrease,
        this.total,
        this.totalTestResultsIncrease,
        this.posNeg,
        this.deathIncrease,
        this.hospitalizedIncrease,
        this.hash,
        this.commercialScore,
        this.negativeRegularScore,
        this.negativeScore,
        this.positiveScore,
        this.score,
        this.grade,
    });

    int date;
    String state;
    int positive;
    dynamic probableCases;
    int negative;
    dynamic pending;
    String totalTestResultsSource;
    int totalTestResults;
    int hospitalizedCurrently;
    dynamic hospitalizedCumulative;
    int inIcuCurrently;
    dynamic inIcuCumulative;
    dynamic onVentilatorCurrently;
    dynamic onVentilatorCumulative;
    dynamic recovered;
    String dataQualityGrade;
    String lastUpdateEt;
    DateTime dateModified;
    String checkTimeEt;
    int death;
    dynamic hospitalized;
    DateTime dateChecked;
    int totalTestsViral;
    dynamic positiveTestsViral;
    dynamic negativeTestsViral;
    int positiveCasesViral;
    dynamic deathConfirmed;
    dynamic deathProbable;
    dynamic totalTestEncountersViral;
    dynamic totalTestsPeopleViral;
    dynamic totalTestsAntibody;
    dynamic positiveTestsAntibody;
    dynamic negativeTestsAntibody;
    dynamic totalTestsPeopleAntibody;
    dynamic positiveTestsPeopleAntibody;
    dynamic negativeTestsPeopleAntibody;
    dynamic totalTestsPeopleAntigen;
    dynamic positiveTestsPeopleAntigen;
    dynamic totalTestsAntigen;
    dynamic positiveTestsAntigen;
    String fips;
    int positiveIncrease;
    int negativeIncrease;
    int total;
    int totalTestResultsIncrease;
    int posNeg;
    int deathIncrease;
    int hospitalizedIncrease;
    String hash;
    int commercialScore;
    int negativeRegularScore;
    int negativeScore;
    int positiveScore;
    int score;
    String grade;

    factory CovidRecord.fromJson(Map<String, dynamic> json) => CovidRecord(
        date: json["date"],
        state: json["state"],
        positive: json["positive"],
        probableCases: json["probableCases"],
        negative: json["negative"],
        pending: json["pending"],
        totalTestResultsSource: json["totalTestResultsSource"],
        totalTestResults: json["totalTestResults"],
        hospitalizedCurrently: json["hospitalizedCurrently"],
        hospitalizedCumulative: json["hospitalizedCumulative"],
        inIcuCurrently: json["inIcuCurrently"],
        inIcuCumulative: json["inIcuCumulative"],
        onVentilatorCurrently: json["onVentilatorCurrently"],
        onVentilatorCumulative: json["onVentilatorCumulative"],
        recovered: json["recovered"],
        dataQualityGrade: json["dataQualityGrade"],
        lastUpdateEt: json["lastUpdateEt"],
        dateModified: DateTime.parse(json["dateModified"]),
        checkTimeEt: json["checkTimeEt"],
        death: json["death"],
        hospitalized: json["hospitalized"],
        dateChecked: DateTime.parse(json["dateChecked"]),
        totalTestsViral: json["totalTestsViral"],
        positiveTestsViral: json["positiveTestsViral"],
        negativeTestsViral: json["negativeTestsViral"],
        positiveCasesViral: json["positiveCasesViral"],
        deathConfirmed: json["deathConfirmed"],
        deathProbable: json["deathProbable"],
        totalTestEncountersViral: json["totalTestEncountersViral"],
        totalTestsPeopleViral: json["totalTestsPeopleViral"],
        totalTestsAntibody: json["totalTestsAntibody"],
        positiveTestsAntibody: json["positiveTestsAntibody"],
        negativeTestsAntibody: json["negativeTestsAntibody"],
        totalTestsPeopleAntibody: json["totalTestsPeopleAntibody"],
        positiveTestsPeopleAntibody: json["positiveTestsPeopleAntibody"],
        negativeTestsPeopleAntibody: json["negativeTestsPeopleAntibody"],
        totalTestsPeopleAntigen: json["totalTestsPeopleAntigen"],
        positiveTestsPeopleAntigen: json["positiveTestsPeopleAntigen"],
        totalTestsAntigen: json["totalTestsAntigen"],
        positiveTestsAntigen: json["positiveTestsAntigen"],
        fips: json["fips"],
        positiveIncrease: json["positiveIncrease"],
        negativeIncrease: json["negativeIncrease"],
        total: json["total"],
        totalTestResultsIncrease: json["totalTestResultsIncrease"],
        posNeg: json["posNeg"],
        deathIncrease: json["deathIncrease"],
        hospitalizedIncrease: json["hospitalizedIncrease"],
        hash: json["hash"],
        commercialScore: json["commercialScore"],
        negativeRegularScore: json["negativeRegularScore"],
        negativeScore: json["negativeScore"],
        positiveScore: json["positiveScore"],
        score: json["score"],
        grade: json["grade"],
    );

    Map<String, dynamic> toJson() => {
        "date": date,
        "state": state,
        "positive": positive,
        "probableCases": probableCases,
        "negative": negative,
        "pending": pending,
        "totalTestResultsSource": totalTestResultsSource,
        "totalTestResults": totalTestResults,
        "hospitalizedCurrently": hospitalizedCurrently,
        "hospitalizedCumulative": hospitalizedCumulative,
        "inIcuCurrently": inIcuCurrently,
        "inIcuCumulative": inIcuCumulative,
        "onVentilatorCurrently": onVentilatorCurrently,
        "onVentilatorCumulative": onVentilatorCumulative,
        "recovered": recovered,
        "dataQualityGrade": dataQualityGrade,
        "lastUpdateEt": lastUpdateEt,
        "dateModified": dateModified.toIso8601String(),
        "checkTimeEt": checkTimeEt,
        "death": death,
        "hospitalized": hospitalized,
        "dateChecked": dateChecked.toIso8601String(),
        "totalTestsViral": totalTestsViral,
        "positiveTestsViral": positiveTestsViral,
        "negativeTestsViral": negativeTestsViral,
        "positiveCasesViral": positiveCasesViral,
        "deathConfirmed": deathConfirmed,
        "deathProbable": deathProbable,
        "totalTestEncountersViral": totalTestEncountersViral,
        "totalTestsPeopleViral": totalTestsPeopleViral,
        "totalTestsAntibody": totalTestsAntibody,
        "positiveTestsAntibody": positiveTestsAntibody,
        "negativeTestsAntibody": negativeTestsAntibody,
        "totalTestsPeopleAntibody": totalTestsPeopleAntibody,
        "positiveTestsPeopleAntibody": positiveTestsPeopleAntibody,
        "negativeTestsPeopleAntibody": negativeTestsPeopleAntibody,
        "totalTestsPeopleAntigen": totalTestsPeopleAntigen,
        "positiveTestsPeopleAntigen": positiveTestsPeopleAntigen,
        "totalTestsAntigen": totalTestsAntigen,
        "positiveTestsAntigen": positiveTestsAntigen,
        "fips": fips,
        "positiveIncrease": positiveIncrease,
        "negativeIncrease": negativeIncrease,
        "total": total,
        "totalTestResultsIncrease": totalTestResultsIncrease,
        "posNeg": posNeg,
        "deathIncrease": deathIncrease,
        "hospitalizedIncrease": hospitalizedIncrease,
        "hash": hash,
        "commercialScore": commercialScore,
        "negativeRegularScore": negativeRegularScore,
        "negativeScore": negativeScore,
        "positiveScore": positiveScore,
        "score": score,
        "grade": grade,
    };
}
