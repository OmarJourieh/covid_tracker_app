// To parse this JSON data, do
//
//     final covidCountryRecord = covidCountryRecordFromJson(jsonString);

import 'dart:convert';

CovidCountryRecord covidCountryRecordFromJson(String str) => CovidCountryRecord.fromJson(json.decode(str));

String covidCountryRecordToJson(CovidCountryRecord data) => json.encode(data.toJson());

class CovidCountryRecord {
    CovidCountryRecord({
        this.date,
        this.states,
        this.positive,
        this.negative,
        this.pending,
        this.hospitalizedCurrently,
        this.hospitalizedCumulative,
        this.inIcuCurrently,
        this.inIcuCumulative,
        this.onVentilatorCurrently,
        this.onVentilatorCumulative,
        this.dateChecked,
        this.death,
        this.hospitalized,
        this.totalTestResults,
        this.lastModified,
        this.recovered,
        this.total,
        this.posNeg,
        this.deathIncrease,
        this.hospitalizedIncrease,
        this.negativeIncrease,
        this.positiveIncrease,
        this.totalTestResultsIncrease,
        this.hash,
    });

    int date;
    int states;
    int positive;
    int negative;
    int pending;
    int hospitalizedCurrently;
    int hospitalizedCumulative;
    int inIcuCurrently;
    int inIcuCumulative;
    int onVentilatorCurrently;
    int onVentilatorCumulative;
    String dateChecked;
    int death;
    int hospitalized;
    int totalTestResults;
    String lastModified;
    dynamic recovered;
    int total;
    int posNeg;
    int deathIncrease;
    int hospitalizedIncrease;
    int negativeIncrease;
    int positiveIncrease;
    int totalTestResultsIncrease;
    String hash;

    factory CovidCountryRecord.fromJson(Map<String, dynamic> json) => CovidCountryRecord(
        date: json["date"],
        states: json["states"],
        positive: json["positive"],
        negative: json["negative"],
        pending: json["pending"],
        hospitalizedCurrently: json["hospitalizedCurrently"],
        hospitalizedCumulative: json["hospitalizedCumulative"],
        inIcuCurrently: json["inIcuCurrently"],
        inIcuCumulative: json["inIcuCumulative"],
        onVentilatorCurrently: json["onVentilatorCurrently"],
        onVentilatorCumulative: json["onVentilatorCumulative"],
        dateChecked: json["dateChecked"],
        death: json["death"],
        hospitalized: json["hospitalized"],
        totalTestResults: json["totalTestResults"],
        lastModified: json["lastModified"],
        recovered: json["recovered"],
        total: json["total"],
        posNeg: json["posNeg"],
        deathIncrease: json["deathIncrease"],
        hospitalizedIncrease: json["hospitalizedIncrease"],
        negativeIncrease: json["negativeIncrease"],
        positiveIncrease: json["positiveIncrease"],
        totalTestResultsIncrease: json["totalTestResultsIncrease"],
        hash: json["hash"],
    );

    Map<String, dynamic> toJson() => {
        "date": date,
        "states": states,
        "positive": positive,
        "negative": negative,
        "pending": pending,
        "hospitalizedCurrently": hospitalizedCurrently,
        "hospitalizedCumulative": hospitalizedCumulative,
        "inIcuCurrently": inIcuCurrently,
        "inIcuCumulative": inIcuCumulative,
        "onVentilatorCurrently": onVentilatorCurrently,
        "onVentilatorCumulative": onVentilatorCumulative,
        "dateChecked": dateChecked,
        "death": death,
        "hospitalized": hospitalized,
        "totalTestResults": totalTestResults,
        "lastModified": lastModified,
        "recovered": recovered,
        "total": total,
        "posNeg": posNeg,
        "deathIncrease": deathIncrease,
        "hospitalizedIncrease": hospitalizedIncrease,
        "negativeIncrease": negativeIncrease,
        "positiveIncrease": positiveIncrease,
        "totalTestResultsIncrease": totalTestResultsIncrease,
        "hash": hash,
    };
}
