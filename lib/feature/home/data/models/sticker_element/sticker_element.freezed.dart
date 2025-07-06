// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticker_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StickerElement {

 String get id; String get assetPath; double get x; double get y; double get width; double get height;
/// Create a copy of StickerElement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StickerElementCopyWith<StickerElement> get copyWith => _$StickerElementCopyWithImpl<StickerElement>(this as StickerElement, _$identity);

  /// Serializes this StickerElement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StickerElement&&(identical(other.id, id) || other.id == id)&&(identical(other.assetPath, assetPath) || other.assetPath == assetPath)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assetPath,x,y,width,height);

@override
String toString() {
  return 'StickerElement(id: $id, assetPath: $assetPath, x: $x, y: $y, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $StickerElementCopyWith<$Res>  {
  factory $StickerElementCopyWith(StickerElement value, $Res Function(StickerElement) _then) = _$StickerElementCopyWithImpl;
@useResult
$Res call({
 String id, String assetPath, double x, double y, double width, double height
});




}
/// @nodoc
class _$StickerElementCopyWithImpl<$Res>
    implements $StickerElementCopyWith<$Res> {
  _$StickerElementCopyWithImpl(this._self, this._then);

  final StickerElement _self;
  final $Res Function(StickerElement) _then;

/// Create a copy of StickerElement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assetPath = null,Object? x = null,Object? y = null,Object? width = null,Object? height = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetPath: null == assetPath ? _self.assetPath : assetPath // ignore: cast_nullable_to_non_nullable
as String,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [StickerElement].
extension StickerElementPatterns on StickerElement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StickerElement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StickerElement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StickerElement value)  $default,){
final _that = this;
switch (_that) {
case _StickerElement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StickerElement value)?  $default,){
final _that = this;
switch (_that) {
case _StickerElement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String assetPath,  double x,  double y,  double width,  double height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StickerElement() when $default != null:
return $default(_that.id,_that.assetPath,_that.x,_that.y,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String assetPath,  double x,  double y,  double width,  double height)  $default,) {final _that = this;
switch (_that) {
case _StickerElement():
return $default(_that.id,_that.assetPath,_that.x,_that.y,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String assetPath,  double x,  double y,  double width,  double height)?  $default,) {final _that = this;
switch (_that) {
case _StickerElement() when $default != null:
return $default(_that.id,_that.assetPath,_that.x,_that.y,_that.width,_that.height);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StickerElement implements StickerElement {
  const _StickerElement({required this.id, required this.assetPath, required this.x, required this.y, required this.width, required this.height});
  factory _StickerElement.fromJson(Map<String, dynamic> json) => _$StickerElementFromJson(json);

@override final  String id;
@override final  String assetPath;
@override final  double x;
@override final  double y;
@override final  double width;
@override final  double height;

/// Create a copy of StickerElement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StickerElementCopyWith<_StickerElement> get copyWith => __$StickerElementCopyWithImpl<_StickerElement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StickerElementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StickerElement&&(identical(other.id, id) || other.id == id)&&(identical(other.assetPath, assetPath) || other.assetPath == assetPath)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assetPath,x,y,width,height);

@override
String toString() {
  return 'StickerElement(id: $id, assetPath: $assetPath, x: $x, y: $y, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$StickerElementCopyWith<$Res> implements $StickerElementCopyWith<$Res> {
  factory _$StickerElementCopyWith(_StickerElement value, $Res Function(_StickerElement) _then) = __$StickerElementCopyWithImpl;
@override @useResult
$Res call({
 String id, String assetPath, double x, double y, double width, double height
});




}
/// @nodoc
class __$StickerElementCopyWithImpl<$Res>
    implements _$StickerElementCopyWith<$Res> {
  __$StickerElementCopyWithImpl(this._self, this._then);

  final _StickerElement _self;
  final $Res Function(_StickerElement) _then;

/// Create a copy of StickerElement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assetPath = null,Object? x = null,Object? y = null,Object? width = null,Object? height = null,}) {
  return _then(_StickerElement(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetPath: null == assetPath ? _self.assetPath : assetPath // ignore: cast_nullable_to_non_nullable
as String,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
