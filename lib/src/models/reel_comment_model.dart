class ReelCommentModel {
  final String? id;
  final String comment;
  final String userProfilePic;
  final String userName;
  final DateTime commentTime;

  ReelCommentModel({
    this.id,
    required this.comment,
    required this.userProfilePic,
    required this.userName,
    required this.commentTime,
  });
}
