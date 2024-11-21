
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wifi_state.freezed.dart';
@freezed
class WifiState with _$WifiState{
  const factory WifiState.initial()=Initial;
  const factory WifiState.connected()=Connected;
  const factory WifiState.disconnected()=Disconnected;
  const factory WifiState.noInternet() = noInternet;
  const factory WifiState.loading() = Loading;
}
