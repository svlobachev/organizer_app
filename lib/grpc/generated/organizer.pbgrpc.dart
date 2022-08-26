///
//  Generated code. Do not modify.
//  source: organizer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'organizer.pb.dart' as $0;
export 'organizer.pb.dart';

class GreeterClient extends $grpc.Client {
  static final _$sayHello =
      $grpc.ClientMethod<$0.RequestMessage, $0.ResponseMessage>(
          '/organizer.Greeter/SayHello',
          ($0.RequestMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResponseMessage.fromBuffer(value));

  GreeterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ResponseMessage> sayHello($0.RequestMessage request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayHello, request, options: options);
  }
}

abstract class GreeterServiceBase extends $grpc.Service {
  $core.String get $name => 'organizer.Greeter';

  GreeterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RequestMessage, $0.ResponseMessage>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestMessage.fromBuffer(value),
        ($0.ResponseMessage value) => value.writeToBuffer()));
  }

  $async.Future<$0.ResponseMessage> sayHello_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RequestMessage> request) async {
    return sayHello(call, await request);
  }

  $async.Future<$0.ResponseMessage> sayHello(
      $grpc.ServiceCall call, $0.RequestMessage request);
}
