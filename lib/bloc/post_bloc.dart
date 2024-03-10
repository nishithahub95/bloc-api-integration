

import 'package:bloc/bloc.dart';
import 'package:bloc_api_integration/bloc/post_event.dart';
import 'package:bloc_api_integration/bloc/post_state.dart';
import 'package:bloc_api_integration/model/post_model.dart';
import 'package:bloc_api_integration/repositry/post_repository.dart';
import 'package:bloc_api_integration/utils/enum.dart';



class PostBloc extends Bloc<PostEvent, PostState> {
 List<PostModel> postList=[];
  final postRepository=PostRepository();
  PostBloc() : super(const PostState()) {
    on<FetchPost>((event, emit) {
      // TODO: implement event handler
    });
  }

  void fetchPost(FetchPost event, Emitter<PostState> emit)async{
   await postRepository.fetchPost().then((value) {
     emit(state.copyWith(postStatus:PostStatus.success,message:'Success',postList: value));
   }
  ).onError((error, stackTrace) {
     emit(state.copyWith(postStatus:PostStatus.failure,message:error.toString()));
   });


  }
}
