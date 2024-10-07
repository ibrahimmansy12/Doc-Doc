import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  String? message;
  @JsonKey(name: 'data')
  List<Doctors?>? doctorsList;
  SearchModel({this.doctorsList, this.message});
  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
}
