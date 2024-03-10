import 'package:bloc_api_integration/bloc/post_bloc.dart';
import 'package:bloc_api_integration/bloc/post_event.dart';
import 'package:bloc_api_integration/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/post_state.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<PostBloc>().add(FetchPost());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<PostBloc, PostState>(
            builder: (context, state) {
              if (state.postStatus == PostStatus.success) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {

                    });
              }
              else if (state.postStatus == PostStatus.failure) {
                return Center(
                  child: Text(state.message),
                );
              }
              else if (state.postStatus == PostStatus.loading) {
                return const Center(
                  child:CircularProgressIndicator(),
                );
              }
              else{
                return const  SizedBox();
              }
            }
          )
        ],
      ),
    );
  }
}
