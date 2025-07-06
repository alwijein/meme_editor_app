// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MemeResponse {

 bool get success; MemeData? get data;
/// Create a copy of MemeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemeResponseCopyWith<MemeResponse> get copyWith => _$MemeResponseCopyWithImpl<MemeResponse>(this as MemeResponse, _$identity);

  /// Serializes this MemeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'MemeResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $MemeResponseCopyWith<$Res>  {
  factory $MemeResponseCopyWith(MemeResponse value, $Res Function(MemeResponse) _then) = _$MemeResponseCopyWithImpl;
@useResult
$Res call({
 bool success, MemeData? data
});


$MemeDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$MemeResponseCopyWithImpl<$Res>
    implements $MemeResponseCopyWith<$Res> {
  _$MemeResponseCopyWithImpl(this._self, this._then);

  final MemeResponse _self;
  final $Res Function(MemeResponse) _then;

/// Create a copy of MemeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MemeData?,
  ));
}
/// Create a copy of MemeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemeDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $MemeDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MemeResponse].
extension MemeResponsePatterns on MemeResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemeResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemeResponse value)  $default,){
final _that = this;
switch (_that) {
case _MemeResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MemeResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  MemeData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemeResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  MemeData? data)  $default,) {final _that = this;
switch (_that) {
case _MemeResponse():
return $default(_that.success,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  MemeData? data)?  $default,) {final _that = this;
switch (_that) {
case _MemeResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemeResponse implements MemeResponse {
  const _MemeResponse({required this.success, this.data});
  factory _MemeResponse.fromJson(Map<String, dynamic> json) => _$MemeResponseFromJson(json);

@override final  bool success;
@override final  MemeData? data;

/// Create a copy of MemeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemeResponseCopyWith<_MemeResponse> get copyWith => __$MemeResponseCopyWithImpl<_MemeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'MemeResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$MemeResponseCopyWith<$Res> implements $MemeResponseCopyWith<$Res> {
  factory _$MemeResponseCopyWith(_MemeResponse value, $Res Function(_MemeResponse) _then) = __$MemeResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, MemeData? data
});


@override $MemeDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$MemeResponseCopyWithImpl<$Res>
    implements _$MemeResponseCopyWith<$Res> {
  __$MemeResponseCopyWithImpl(this._self, this._then);

  final _MemeResponse _self;
  final $Res Function(_MemeResponse) _then;

/// Create a copy of MemeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_MemeResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MemeData?,
  ));
}

/// Create a copy of MemeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemeDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $MemeDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$MemeData {

 List<Meme>? get memes;
/// Create a copy of MemeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemeDataCopyWith<MemeData> get copyWith => _$MemeDataCopyWithImpl<MemeData>(this as MemeData, _$identity);

  /// Serializes this MemeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemeData&&const DeepCollectionEquality().equals(other.memes, memes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(memes));

@override
String toString() {
  return 'MemeData(memes: $memes)';
}


}

/// @nodoc
abstract mixin class $MemeDataCopyWith<$Res>  {
  factory $MemeDataCopyWith(MemeData value, $Res Function(MemeData) _then) = _$MemeDataCopyWithImpl;
@useResult
$Res call({
 List<Meme>? memes
});




}
/// @nodoc
class _$MemeDataCopyWithImpl<$Res>
    implements $MemeDataCopyWith<$Res> {
  _$MemeDataCopyWithImpl(this._self, this._then);

  final MemeData _self;
  final $Res Function(MemeData) _then;

/// Create a copy of MemeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memes = freezed,}) {
  return _then(_self.copyWith(
memes: freezed == memes ? _self.memes : memes // ignore: cast_nullable_to_non_nullable
as List<Meme>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MemeData].
extension MemeDataPatterns on MemeData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemeData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemeData value)  $default,){
final _that = this;
switch (_that) {
case _MemeData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemeData value)?  $default,){
final _that = this;
switch (_that) {
case _MemeData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Meme>? memes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemeData() when $default != null:
return $default(_that.memes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Meme>? memes)  $default,) {final _that = this;
switch (_that) {
case _MemeData():
return $default(_that.memes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Meme>? memes)?  $default,) {final _that = this;
switch (_that) {
case _MemeData() when $default != null:
return $default(_that.memes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemeData implements MemeData {
  const _MemeData({final  List<Meme>? memes}): _memes = memes;
  factory _MemeData.fromJson(Map<String, dynamic> json) => _$MemeDataFromJson(json);

 final  List<Meme>? _memes;
@override List<Meme>? get memes {
  final value = _memes;
  if (value == null) return null;
  if (_memes is EqualUnmodifiableListView) return _memes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MemeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemeDataCopyWith<_MemeData> get copyWith => __$MemeDataCopyWithImpl<_MemeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemeData&&const DeepCollectionEquality().equals(other._memes, _memes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_memes));

@override
String toString() {
  return 'MemeData(memes: $memes)';
}


}

/// @nodoc
abstract mixin class _$MemeDataCopyWith<$Res> implements $MemeDataCopyWith<$Res> {
  factory _$MemeDataCopyWith(_MemeData value, $Res Function(_MemeData) _then) = __$MemeDataCopyWithImpl;
@override @useResult
$Res call({
 List<Meme>? memes
});




}
/// @nodoc
class __$MemeDataCopyWithImpl<$Res>
    implements _$MemeDataCopyWith<$Res> {
  __$MemeDataCopyWithImpl(this._self, this._then);

  final _MemeData _self;
  final $Res Function(_MemeData) _then;

/// Create a copy of MemeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memes = freezed,}) {
  return _then(_MemeData(
memes: freezed == memes ? _self._memes : memes // ignore: cast_nullable_to_non_nullable
as List<Meme>?,
  ));
}


}

// dart format on
