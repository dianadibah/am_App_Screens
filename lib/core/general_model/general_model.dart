// To parse this JSON data, do
//
//     final generalModel = generalModelFromJson(jsonString);

import 'dart:convert';

GeneralModel generalModelFromJson(String str) => GeneralModel.fromJson(json.decode(str));

String generalModelToJson(GeneralModel data) => json.encode(data.toJson());

class GeneralModel {
    bool? success;
    String? message;
    int? code;

    GeneralModel({
        this.success,
        this.message,
        this.code,
    });

    GeneralModel copyWith({
        bool? success,
        String? message,
        int? code,
    }) => 
        GeneralModel(
            success: success ?? this.success,
            message: message ?? this.message,
            code: code ?? this.code,
        );

    factory GeneralModel.fromJson(Map<String, dynamic> json) => GeneralModel(
        success: json["success"],
        message: json["message"],
        code: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "code": code,
    };
}
