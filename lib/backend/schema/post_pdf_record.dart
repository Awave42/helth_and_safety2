import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'post_pdf_record.g.dart';

abstract class PostPdfRecord
    implements Built<PostPdfRecord, PostPdfRecordBuilder> {
  static Serializer<PostPdfRecord> get serializer => _$postPdfRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Name_pdf')
  String get namePdf;

  @nullable
  @BuiltValueField(wireName: 'Url')
  DocumentReference get url;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostPdfRecordBuilder builder) => builder
    ..namePdf = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post_pdf');

  static Stream<PostPdfRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PostPdfRecord._();
  factory PostPdfRecord([void Function(PostPdfRecordBuilder) updates]) =
      _$PostPdfRecord;

  static PostPdfRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPostPdfRecordData({
  String namePdf,
  DocumentReference url,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        PostPdfRecord.serializer,
        PostPdfRecord((p) => p
          ..namePdf = namePdf
          ..url = url
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
