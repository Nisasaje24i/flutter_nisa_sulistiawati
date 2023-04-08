import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddContactEvent extends CounterEvent {
  final String name;
  final String phoneNumber;

  AddContactEvent({required this.name, required this.phoneNumber});

  @override
  List<Object?> get props => [name, phoneNumber];
}
