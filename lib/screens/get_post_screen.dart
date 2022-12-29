import 'package:counter_example/provider/post_provider_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GetPostScreen extends StatefulWidget {
  const GetPostScreen({super.key});

  @override
  State<GetPostScreen> createState() => _GetPostScreenState();
}

class _GetPostScreenState extends State<GetPostScreen> {
  @override
  void initState() {
    super.initState();
    final postmodelll = Provider.of<PostProviderService>(context, listen: false)
        .getPostFunction();

    print("this is print on init state ${postmodelll.postmdl!.id}");
  }

  @override
  Widget build(BuildContext context) {
    final postmodelprovider = Provider.of<PostProviderService>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: Container(
          child: postmodelprovider.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: Column(
                    children: [
                      Container(
                          child: Text(postmodelprovider.postmdl.title ??
                              " no post title")),
                      Text("${postmodelprovider.postmdl.userId ?? "no id"}")
                    ],
                  ),
                )),
    );
  }
}
