// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Meme {

 String get id; String get name; String get url; int? get width; int? get height; int? get boxCount;
/// Create a copy of Meme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemeCopyWith<Meme> get copyWith => _$MemeCopyWithImpl<Meme>(this as Meme, _$identity);

  /// Serializes this Meme to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meme&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.boxCount, boxCount) || other.boxCount == boxCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,width,height,boxCount);

@override
String toString() {
  return 'Meme(id: $id, name: $name, url: $url, width: $width, height: $height, boxCount: $boxCount)';
}


}

/// @nodoc
abstract mixin class $MemeCopyWith<$Res>  {
  factory $MemeCopyWith(Meme value, $Res Function(Meme) _then) = _$MemeCopyWithImpl;
@useResult
$Res call({
 String id, String name, String url, int? width, int? height, int? boxCount
});




}
/// @nodoc
class _$MemeCopyWithImpl<$Res>
    implements $MemeCopyWith<$Res> {
  _$MemeCopyWithImpl(this._self, this._then);

  final Meme _self;
  final $Res Function(Meme) _then;

/// Create a copy of Meme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? url = null,Object? width = freezed,Object? height = freezed,Object? boxCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,boxCount: freezed == boxCount ? _self.boxCount : boxCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Meme].
extension MemePatterns on Meme {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Meme value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Meme() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Meme value)  $default,){
final _that = this;
switch (_that) {
case _Meme():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Meme value)?  $default,){
final _that = this;
switch (_that) {
case _Meme() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String url,  int? width,  int? height,  int? boxCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meme() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.width,_that.height,_that.boxCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String url,  int? width,  int? height,  int? boxCount)  $default,) {final _that = this;
switch (_that) {
case _Meme():
return $default(_that.id,_that.name,_that.url,_that.width,_that.height,_that.boxCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String url,  int? width,  int? height,  int? boxCount)?  $default,) {final _that = this;
switch (_that) {
case _Meme() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.width,_that.height,_that.boxCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meme implements Meme {
  const _Meme({required this.id, required this.name, required this.url, this.width, this.height, this.boxCount});
  factory _Meme.fromJson(Map<String, dynamic> json) => _$MemeFromJson(json);

@override final  String id;
@override final  String name;
@override final  String url;
@override final  int? width;
@override final  int? height;
@override final  int? boxCount;

/// Create a copy of Meme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemeCopyWith<_Meme> get copyWith => __$MemeCopyWithImpl<_Meme>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meme&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.boxCount, boxCount) || other.boxCount == boxCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,width,height,boxCount);

@override
String toString() {
  return 'Meme(id: $id, name: $name, url: $url, width: $width, height: $height, boxCount: $boxCount)';
}


}

/// @nodoc
abstract mixin class _$MemeCopyWith<$Res> implements $MemeCopyWith<$Res> {
  factory _$MemeCopyWith(_Meme value, $Res Function(_Meme) _then) = __$MemeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String url, int? width, int? height, int? boxCount
});




}
/// @nodoc
class __$MemeCopyWithImpl<$Res>
    implements _$MemeCopyWith<$Res> {
  __$MemeCopyWithImpl(this._self, this._then);

  final _Meme _self;
  final $Res Function(_Meme) _then;

/// Create a copy of Meme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? url = null,Object? width = freezed,Object? height = freezed,Object? boxCount = freezed,}) {
  return _then(_Meme(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,boxCount: freezed == boxCount ? _self.boxCount : boxCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MemeEdit {

 String get memeId; List<TextElement> get texts; List<StickerElement> get stickers;
/// Create a copy of MemeEdit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemeEditCopyWith<MemeEdit> get copyWith => _$MemeEditCopyWithImpl<MemeEdit>(this as MemeEdit, _$identity);

  /// Serializes this MemeEdit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemeEdit&&(identical(other.memeId, memeId) || other.memeId == memeId)&&const DeepCollectionEquality().equals(other.texts, texts)&&const DeepCollectionEquality().equals(other.stickers, stickers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memeId,const DeepCollectionEquality().hash(texts),const DeepCollectionEquality().hash(stickers));

@override
String toString() {
  return 'MemeEdit(memeId: $memeId, texts: $texts, stickers: $stickers)';
}


}

/// @nodoc
abstract mixin class $MemeEditCopyWith<$Res>  {
  factory $MemeEditCopyWith(MemeEdit value, $Res Function(MemeEdit) _then) = _$MemeEditCopyWithImpl;
@useResult
$Res call({
 String memeId, List<TextElement> texts, List<StickerElement> stickers
});




}
/// @nodoc
class _$MemeEditCopyWithImpl<$Res>
    implements $MemeEditCopyWith<$Res> {
  _$MemeEditCopyWithImpl(this._self, this._then);

  final MemeEdit _self;
  final $Res Function(MemeEdit) _then;

/// Create a copy of MemeEdit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memeId = null,Object? texts = null,Object? stickers = null,}) {
  return _then(_self.copyWith(
memeId: null == memeId ? _self.memeId : memeId // ignore: cast_nullable_to_non_nullable
as String,texts: null == texts ? _self.texts : texts // ignore: cast_nullable_to_non_nullable
as List<TextElement>,stickers: null == stickers ? _self.stickers : stickers // ignore: cast_nullable_to_non_nullable
as List<StickerElement>,
  ));
}

}


/// Adds pattern-matching-related methods to [MemeEdit].
extension MemeEditPatterns on MemeEdit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemeEdit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemeEdit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemeEdit value)  $default,){
final _that = this;
switch (_that) {
case _MemeEdit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemeEdit value)?  $default,){
final _that = this;
switch (_that) {
case _MemeEdit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String memeId,  List<TextElement> texts,  List<StickerElement> stickers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemeEdit() when $default != null:
return $default(_that.memeId,_that.texts,_that.stickers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String memeId,  List<TextElement> texts,  List<StickerElement> stickers)  $default,) {final _that = this;
switch (_that) {
case _MemeEdit():
return $default(_that.memeId,_that.texts,_that.stickers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String memeId,  List<TextElement> texts,  List<StickerElement> stickers)?  $default,) {final _that = this;
switch (_that) {
case _MemeEdit() when $default != null:
return $default(_that.memeId,_that.texts,_that.stickers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemeEdit implements MemeEdit {
  const _MemeEdit({required this.memeId, required final  List<TextElement> texts, required final  List<StickerElement> stickers}): _texts = texts,_stickers = stickers;
  factory _MemeEdit.fromJson(Map<String, dynamic> json) => _$MemeEditFromJson(json);

@override final  String memeId;
 final  List<TextElement> _texts;
@override List<TextElement> get texts {
  if (_texts is EqualUnmodifiableListView) return _texts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_texts);
}

 final  List<StickerElement> _stickers;
@override List<StickerElement> get stickers {
  if (_stickers is EqualUnmodifiableListView) return _stickers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stickers);
}


/// Create a copy of MemeEdit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemeEditCopyWith<_MemeEdit> get copyWith => __$MemeEditCopyWithImpl<_MemeEdit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemeEditToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemeEdit&&(identical(other.memeId, memeId) || other.memeId == memeId)&&const DeepCollectionEquality().equals(other._texts, _texts)&&const DeepCollectionEquality().equals(other._stickers, _stickers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memeId,const DeepCollectionEquality().hash(_texts),const DeepCollectionEquality().hash(_stickers));

@override
String toString() {
  return 'MemeEdit(memeId: $memeId, texts: $texts, stickers: $stickers)';
}


}

/// @nodoc
abstract mixin class _$MemeEditCopyWith<$Res> implements $MemeEditCopyWith<$Res> {
  factory _$MemeEditCopyWith(_MemeEdit value, $Res Function(_MemeEdit) _then) = __$MemeEditCopyWithImpl;
@override @useResult
$Res call({
 String memeId, List<TextElement> texts, List<StickerElement> stickers
});




}
/// @nodoc
class __$MemeEditCopyWithImpl<$Res>
    implements _$MemeEditCopyWith<$Res> {
  __$MemeEditCopyWithImpl(this._self, this._then);

  final _MemeEdit _self;
  final $Res Function(_MemeEdit) _then;

/// Create a copy of MemeEdit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memeId = null,Object? texts = null,Object? stickers = null,}) {
  return _then(_MemeEdit(
memeId: null == memeId ? _self.memeId : memeId // ignore: cast_nullable_to_non_nullable
as String,texts: null == texts ? _self._texts : texts // ignore: cast_nullable_to_non_nullable
as List<TextElement>,stickers: null == stickers ? _self._stickers : stickers // ignore: cast_nullable_to_non_nullable
as List<StickerElement>,
  ));
}


}

// dart format on
