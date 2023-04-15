import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_finite_state/screens/contact/food_view_model.dart';

class FoodsScreen extends StatefulWidget {
  const FoodsScreen({Key? key}) : super(key: key);

  @override
  State<FoodsScreen> createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<FoodViewModel>(context, listen: false);
      await viewModel.getAllFoods();
    });
  }

  Widget listView(FoodViewModel viewModel) {
    return ListView.builder(
        itemCount: viewModel.food.length,
        itemBuilder: (context, index) {
          final foods = viewModel.food[index];
          return ListTile(
            title: Text(foods.name),
          );
        });
  }

  Widget body(FoodViewModel viewModel) {
    final isLoading = viewModel.state == FoodsViewState.loading;
    final isError = viewModel.state == FoodsViewState.error;

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
    final modelView = Provider.of<FoodViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foods'),
      ),
      body: body(modelView),
    );
  }
}
