import 'package:flutter/material.dart';
import 'package:reels_viewer/reels_viewer.dart';
import 'package:reels_viewer/src/components/user_profile_image.dart';

import '../utils/date_formatter.dart';

class CommentItem extends StatelessWidget {
  final ReelCommentModel commentItem;
  const CommentItem({Key? key, required this.commentItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UserProfileImage(profileUrl: commentItem.userProfilePic),
                const SizedBox(width: 7),
                Flexible(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(225, 239, 239, 239),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 5),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    commentItem.userName,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color:
                                          Color.fromARGB(255, 41, 35, 35),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                commentItem.comment,
                                style:  const TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 69, 67, 67),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ),
              ],
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.only(left: 44),
              child: Text(
                DateFormatter.getTimeAgo(commentItem.commentTime),
                style: const TextStyle(
                  fontSize: 9,
                  color: Color.fromARGB(255, 41, 35, 35),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
