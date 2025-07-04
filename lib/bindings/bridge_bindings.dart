// AUTO-GENERATED FFI BINDINGS
import 'dart:ffi' as ffi;

typedef StartNodeServiceNative = ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>);
typedef StartNodeServiceDart = ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>);

typedef StopNodeServiceNative = ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>);
typedef StopNodeServiceDart = ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>);

typedef WriteConfigFilesNative = ffi.Pointer<ffi.Char> Function(
  ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
  ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
  ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
  ffi.Pointer<ffi.Char>);
typedef WriteConfigFilesDart = ffi.Pointer<ffi.Char> Function(
  ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
  ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
  ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
  ffi.Pointer<ffi.Char>);

typedef CheckNodeStatusNative = ffi.Int32 Function(ffi.Pointer<ffi.Char>);
typedef CheckNodeStatusDart = int Function(ffi.Pointer<ffi.Char>);

typedef PerformActionNative = ffi.Pointer<ffi.Char> Function(
  ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>);
typedef PerformActionDart = ffi.Pointer<ffi.Char> Function(
  ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>);

typedef FreeCStringNative = ffi.Void Function(ffi.Pointer<ffi.Char>);
typedef FreeCStringDart = void Function(ffi.Pointer<ffi.Char>);

class BridgeBindings {
  BridgeBindings(ffi.DynamicLibrary lib)
      : startNodeService =
            lib.lookupFunction<StartNodeServiceNative, StartNodeServiceDart>('StartNodeService'),
        stopNodeService =
            lib.lookupFunction<StopNodeServiceNative, StopNodeServiceDart>('StopNodeService'),
        writeConfigFiles =
            lib.lookupFunction<WriteConfigFilesNative, WriteConfigFilesDart>('WriteConfigFiles'),
        checkNodeStatus =
            lib.lookupFunction<CheckNodeStatusNative, CheckNodeStatusDart>('CheckNodeStatus'),
        performAction =
            lib.lookupFunction<PerformActionNative, PerformActionDart>('PerformAction'),
        freeCString =
            lib.lookupFunction<FreeCStringNative, FreeCStringDart>('FreeCString');

  final StartNodeServiceDart startNodeService;
  final StopNodeServiceDart stopNodeService;
  final WriteConfigFilesDart writeConfigFiles;
  final CheckNodeStatusDart checkNodeStatus;
  final PerformActionDart performAction;
  final FreeCStringDart freeCString;
}
