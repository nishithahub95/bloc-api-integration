
import 'package:equatable/equatable.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();

  @override
  List  get props => [];
}
 class FetchPost extends PostEvent{

 }