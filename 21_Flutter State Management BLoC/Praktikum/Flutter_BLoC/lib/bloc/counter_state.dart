import 'package:coba/model/contact.dart';
import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final List<Contact> contacts;

  const CounterState({required this.contacts});

  static CounterState initialState() => const CounterState(contacts: []);

  @override
  List<Object?> get props => [contacts];
}
