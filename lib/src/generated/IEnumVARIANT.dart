// IEnumVARIANT.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IEnumVARIANT = '{00020404-0000-0000-C000-000000000046}';

typedef _Next_Native = Int32 Function(Pointer obj, Uint32 celt,
    Pointer<VARIANT_POINTER> rgVar, Pointer<Uint32> pCeltFetched);
typedef _Next_Dart = int Function(Pointer obj, int celt,
    Pointer<VARIANT_POINTER> rgVar, Pointer<Uint32> pCeltFetched);

typedef _Skip_Native = Int32 Function(Pointer obj, Uint32 celt);
typedef _Skip_Dart = int Function(Pointer obj, int celt);

typedef _Reset_Native = Int32 Function(Pointer obj);
typedef _Reset_Dart = int Function(Pointer obj);

typedef _Clone_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppEnum);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<IntPtr> ppEnum);

/// {@category Interface}
/// {@category com}
class IEnumVARIANT extends IUnknown {
  // vtable begins at 3, ends at 6

  @override
  Pointer<COMObject> ptr;

  IEnumVARIANT(this.ptr) : super(ptr);

  int Next(int celt, Pointer<VARIANT_POINTER> rgVar,
          Pointer<Uint32> pCeltFetched) =>
      Pointer<NativeFunction<_Next_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_Next_Dart>()(ptr.ref.lpVtbl, celt, rgVar, pCeltFetched)
          .toUnsigned(32);

  int Skip(int celt) => Pointer<NativeFunction<_Skip_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(4).value)
      .asFunction<_Skip_Dart>()(ptr.ref.lpVtbl, celt)
      .toUnsigned(32);

  int Reset() => Pointer<NativeFunction<_Reset_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(5).value)
      .asFunction<_Reset_Dart>()(ptr.ref.lpVtbl)
      .toUnsigned(32);

  int Clone(Pointer<IntPtr> ppEnum) =>
      Pointer<NativeFunction<_Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppEnum)
          .toUnsigned(32);
}
