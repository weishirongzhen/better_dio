// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:example/model/add_task_entity.dart';
import 'package:example/model/login_entity.dart';
import 'package:example/model/register_entity.dart';
import 'package:example/model/task_list_entity.dart';

JsonConvert jsonConvert = JsonConvert();
typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);

class JsonConvert {
	static final Map<String, JsonConvertFunction> _convertFuncMap = {
		(AddTaskEntity).toString(): AddTaskEntity.fromJson,
		(AddTaskData).toString(): AddTaskData.fromJson,
		(LoginEntity).toString(): LoginEntity.fromJson,
		(LoginUser).toString(): LoginUser.fromJson,
		(RegisterEntity).toString(): RegisterEntity.fromJson,
		(RegisterUser).toString(): RegisterUser.fromJson,
		(TaskListEntity).toString(): TaskListEntity.fromJson,
		(TaskListData).toString(): TaskListData.fromJson,
	};

  T? convert<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    return asT<T>(value);
  }

  List<T?>? convertList<T>(List<dynamic>? value) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => asT<T>(e)).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => asT<T>(e)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? asT<T extends Object?>(dynamic value) {
    if (value is T) {
      return value;
    }
    final String type = T.toString();
    try {
      final String valueS = value.toString();
      if (type == "String") {
        return valueS as T;
      } else if (type == "int") {
        final int? intValue = int.tryParse(valueS);
        if (intValue == null) {
          return double.tryParse(valueS)?.toInt() as T?;
        } else {
          return intValue as T;
        }
      } else if (type == "double") {
        return double.parse(valueS) as T;
      } else if (type == "DateTime") {
        return DateTime.parse(valueS) as T;
      } else if (type == "bool") {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else if (type == "Map" || type.startsWith("Map<")) {
        return value as T;
      } else {
        if (_convertFuncMap.containsKey(type)) {
          return _convertFuncMap[type]!(value) as T;
        } else {
          throw UnimplementedError('$type unimplemented');
        }
      }
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

	//list is returned by type
	static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
		if(<AddTaskEntity>[] is M){
			return data.map<AddTaskEntity>((Map<String, dynamic> e) => AddTaskEntity.fromJson(e)).toList() as M;
		}
		if(<AddTaskData>[] is M){
			return data.map<AddTaskData>((Map<String, dynamic> e) => AddTaskData.fromJson(e)).toList() as M;
		}
		if(<LoginEntity>[] is M){
			return data.map<LoginEntity>((Map<String, dynamic> e) => LoginEntity.fromJson(e)).toList() as M;
		}
		if(<LoginUser>[] is M){
			return data.map<LoginUser>((Map<String, dynamic> e) => LoginUser.fromJson(e)).toList() as M;
		}
		if(<RegisterEntity>[] is M){
			return data.map<RegisterEntity>((Map<String, dynamic> e) => RegisterEntity.fromJson(e)).toList() as M;
		}
		if(<RegisterUser>[] is M){
			return data.map<RegisterUser>((Map<String, dynamic> e) => RegisterUser.fromJson(e)).toList() as M;
		}
		if(<TaskListEntity>[] is M){
			return data.map<TaskListEntity>((Map<String, dynamic> e) => TaskListEntity.fromJson(e)).toList() as M;
		}
		if(<TaskListData>[] is M){
			return data.map<TaskListData>((Map<String, dynamic> e) => TaskListData.fromJson(e)).toList() as M;
		}

		debugPrint("${M.toString()} not found");
	
		return null;
}

	static M? fromJsonAsT<M>(dynamic json) {
		if (json is List) {
			return _getListChildType<M>(json.map((e) => e as Map<String, dynamic>).toList());
		} else {
			return jsonConvert.asT<M>(json);
		}
	}
}