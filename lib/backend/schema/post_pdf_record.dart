import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'post_pdf_record.g.dart';

abstract class PostPdfRecord
    implements Built<PostPdfRecord, PostPdfRecordBuilder> {
  static Serializer<PostPdfRecord> get serializer => _$postPdfRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  BuiltList<DateTime> get createdTime;

  @nullable
  @BuiltValueField(wireName: 'Name_pdf')
  String get namePdf;

  @nullable
  @BuiltValueField(wireName: 'Url')
  String get url;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostPdfRecordBuilder builder) => builder
    ..createdTime = ListBuilder()
    ..namePdf = ''
    ..url = '';

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
  String url,
}) =>
    serializers.toFirestore(
        PostPdfRecord.serializer,
        PostPdfRecord((p) => p
          ..createdTime = null
          ..namePdf = namePdf
          ..url = url));
