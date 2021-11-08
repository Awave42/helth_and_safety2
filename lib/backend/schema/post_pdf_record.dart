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
  BuiltList<String> get namePdf;

  @nullable
  @BuiltValueField(wireName: 'Url')
  BuiltList<DocumentReference> get url;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostPdfRecordBuilder builder) => builder
    ..namePdf = ListBuilder()
    ..url = ListBuilder();

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

Map<String, dynamic> createPostPdfRecordData() => serializers.toFirestore(
    PostPdfRecord.serializer,
    PostPdfRecord((p) => p
      ..namePdf = null
      ..url = null));
