///
//  Generated code. Do not modify.
//  source: organizer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use requestMessageDescriptor instead')
const RequestMessage$json = const {
  '1': 'RequestMessage',
  '2': const [
    const {'1': 'registration_box_request', '3': 1, '4': 3, '5': 11, '6': '.organizer.RequestMessage.RegistrationBoxRequestEntry', '10': 'registrationBoxRequest'},
  ],
  '3': const [RequestMessage_RegistrationBoxRequestEntry$json],
};

@$core.Deprecated('Use requestMessageDescriptor instead')
const RequestMessage_RegistrationBoxRequestEntry$json = const {
  '1': 'RegistrationBoxRequestEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `RequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestMessageDescriptor = $convert.base64Decode('Cg5SZXF1ZXN0TWVzc2FnZRJvChhyZWdpc3RyYXRpb25fYm94X3JlcXVlc3QYASADKAsyNS5vcmdhbml6ZXIuUmVxdWVzdE1lc3NhZ2UuUmVnaXN0cmF0aW9uQm94UmVxdWVzdEVudHJ5UhZyZWdpc3RyYXRpb25Cb3hSZXF1ZXN0GkkKG1JlZ2lzdHJhdGlvbkJveFJlcXVlc3RFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use responseMessageDescriptor instead')
const ResponseMessage$json = const {
  '1': 'ResponseMessage',
  '2': const [
    const {'1': 'registration_box_response', '3': 1, '4': 3, '5': 11, '6': '.organizer.ResponseMessage.RegistrationBoxResponseEntry', '10': 'registrationBoxResponse'},
  ],
  '3': const [ResponseMessage_RegistrationBoxResponseEntry$json],
};

@$core.Deprecated('Use responseMessageDescriptor instead')
const ResponseMessage_RegistrationBoxResponseEntry$json = const {
  '1': 'RegistrationBoxResponseEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseMessageDescriptor = $convert.base64Decode('Cg9SZXNwb25zZU1lc3NhZ2UScwoZcmVnaXN0cmF0aW9uX2JveF9yZXNwb25zZRgBIAMoCzI3Lm9yZ2FuaXplci5SZXNwb25zZU1lc3NhZ2UuUmVnaXN0cmF0aW9uQm94UmVzcG9uc2VFbnRyeVIXcmVnaXN0cmF0aW9uQm94UmVzcG9uc2UaSgocUmVnaXN0cmF0aW9uQm94UmVzcG9uc2VFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
