import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
part 'wifi_event.freezed.dart';
@freezed

class WifiEvent with _$WifiEvent{
  const factory WifiEvent.scan(ConnectivityResult result)= Scan;
  

}
