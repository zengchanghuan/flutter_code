import 'package:flutter/material.dart';
import '../service/joke_service.dart';
import '../view_model/joke_view_model.dart';
import '../widgets/joke_item.dart';
import 'package:provider/provider.dart';

//我们在页面刚进入时进行初始化，然后通过Provider的Consumer来进行监听状态的变化。
class JokeView extends StatefulWidget {
  const JokeView({Key? key}) : super(key: key);

  @override
  State<JokeView> createState() => _JokeViewState();
}

class _JokeViewState extends State<JokeView> {
  @override
  void initState() {

    // 获取接口数据
    JokeService.getJokes(Provider.of<JokeViewModel>(context, listen: false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider + MVVM"),
      ),
      body: Consumer<JokeViewModel>(
        builder: (_, jokeViewModel, child) {

          JokeViewModel _jokeViewModel = jokeViewModel;


          if (jokeViewModel.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.separated(
            itemBuilder: (_, index) {
              _jokeViewModel.setJoke(_jokeViewModel.jokeList![index]);

              return JokeItem(jokeViewModel: _jokeViewModel);
            },
            itemCount: _jokeViewModel.jokeList?.length ?? 0,
            separatorBuilder: (_, index) {
              return const Divider(
                height: 1,
              );
            },
          );

        },
      ),
    );
  }
}
