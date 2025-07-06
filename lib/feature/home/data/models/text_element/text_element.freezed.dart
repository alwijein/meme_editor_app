// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TextElement {

 String get id; String get text; double get x; double get y; double get fontSize; String get color;
/// Create a copy of TextElement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextElementCopyWith<TextElement> get copyWith => _$TextElementCopyWithImpl<TextElement>(this as TextElement, _$identity);

  /// Serializes this TextElement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextElement&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,x,y,fontSize,color);

@override
String toString() {
  return 'TextElement(id: $id, text: $text, x: $x, y: $y, fontSize: $fontSize, color: $color)';
}


}

/// @nodoc
abstract mixin class $TextElementCopyWith<$Res>  {
  factory $TextElementCopyWith(TextElement value, $Res Function(TextElement) _then) = _$TextElementCopyWithImpl;
@useResult
$Res call({
 String id, String text, double x, double y, double fontSize, String color
});




}
/// @nodoc
class _$TextElementCopyWithImpl<$Res>
    implements $TextElementCopyWith<$Res> {
  _$TextElementCopyWithImpl(this._self, this._then);

  final TextElement _self;
  final $Res Function(TextElement) _then;

/// Create a copy of TextElement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? text = null,Object? x = null,Object? y = null,Object? fontSize = null,Object? color = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TextElement].
extension TextElementPatterns on TextElement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextElement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextElement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextElement value)  $default,){
final _that = this;
switch (_that) {
case _TextElement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextElement value)?  $default,){
final _that = this;
switch (_that) {
case _TextElement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String text,  double x,  double y,  double fontSize,  String color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextElement() when $default != null:
return $default(_that.id,_that.text,_that.x,_that.y,_that.fontSize,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String text,  double x,  double y,  double fontSize,  String color)  $default,) {final _that = this;
switch (_that) {
case _TextElement():
return $default(_that.id,_that.text,_that.x,_that.y,_that.fontSize,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String text,  double x,  double y,  double fontSize,  String color)?  $default,) {final _that = this;
switch (_that) {
case _TextElement() when $default != null:
return $default(_that.id,_that.text,_that.x,_that.y,_that.fontSize,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TextElement implements TextElement {
  const _TextElement({required this.id, required this.text, required this.x, required this.y, required this.fontSize, required this.color});
  factory _TextElement.fromJson(Map<String, dynamic> json) => _$TextElementFromJson(json);

@override final  String id;
@override final  String text;
@override final  double x;
@override final  double y;
@override final  double fontSize;
@override final  String color;

/// Create a copy of TextElement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextElementCopyWith<_TextElement> get copyWith => __$TextElementCopyWithImpl<_TextElement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextElementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextElement&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,x,y,fontSize,color);

@override
String toString() {
  return 'TextElement(id: $id, text: $text, x: $x, y: $y, fontSize: $fontSize, color: $color)';
}


}

/// @nodoc
abstract mixin class _$TextElementCopyWith<$Res> implements $TextElementCopyWith<$Res> {
  factory _$TextElementCopyWith(_TextElement value, $Res Function(_TextElement) _then) = __$TextElementCopyWithImpl;
@override @useResult
$Res call({
 String id, String text, double x, double y, double fontSize, String color
});




}
/// @nodoc
class __$TextElementCopyWithImpl<$Res>
    implements _$TextElementCopyWith<$Res> {
  __$TextElementCopyWithImpl(this._self, this._then);

  final _TextElement _self;
  final $Res Function(_TextElement) _then;

/// Create a copy of TextElement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? text = null,Object? x = null,Object? y = null,Object? fontSize = null,Object? color = null,}) {
  return _then(_TextElement(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
