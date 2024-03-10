
 import 'package:bloc_api_integration/model/post_model.dart';
import 'package:bloc_api_integration/utils/enum.dart';
import 'package:equatable/equatable.dart';

class PostState extends Equatable{
  final PostStatus postStatus;
  final List<PostModel> postList;
  final String message;
  const PostState({
this.postStatus=PostStatus.loading,
    this.postList=const<PostModel>[],
    this.message=''
});
  PostState copyWith({List<PostModel>? postList,PostStatus? postStatus,String? message}){
    return PostState(
    postList: postList??this.postList,
      postStatus:postStatus??this.postStatus,
      message: message??this.message
    );
 }
  @override
  // TODO: implement props
  List<Object?> get props => [postStatus,postList];

}

