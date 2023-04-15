import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:tugas_finite_state/screens/contact/contact_view_model.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<ContactViewModel>(context, listen: false);
      await viewModel.getAllContacts();
    });
  }

  Widget listView(ContactViewModel viewModel) {
    return ListView.builder(
        itemCount: viewModel.contacts.length,
        itemBuilder: (context, index) {
          final contact = viewModel.contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phone),
          );
        });
  }

  Widget body(ContactViewModel viewModel) {
    final isLoading = viewModel.state == ContactViewState.loading;
    final isError = viewModel.state == ContactViewState.error;

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (isError) {
      return const Center(child: Text('Gagal mengambil data.'));
    }

    return listView(viewModel);
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: body(modelView),
    );
  }
}
