import 'package:counter_example/models/post_model.dart';
import 'package:counter_example/services/get_posts_Services.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class PostProviderService with ChangeNotifier {
  Authservice authservice = Authservice();
  PostModel? _posts;
  PostModel get postmdl => _posts!;
  setpostModl(PostModel pstmprov) {
    _posts = pstmprov;
    notifyListeners();
  }

  bool _loading = false;
  bool get loading => _loading;
  setLoading(bool load) {
    _loading = load;
    notifyListeners();
  }

  getPostFunction() async {
    setLoading(true);
    await authservice.getPosts().then(
      (value) {
        print("this is the value of valueeee${value.toString()}");
        setpostModl(value!);
        print("thigvhnm${value.id}");
        setLoading(false);
      },
    );
  }
}
