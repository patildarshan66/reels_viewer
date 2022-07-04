# reels_viewer

[comment]: <> (<a href="https://www.buymeacoffee.com/hslbetto" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-blue.png" alt="Buy Me A Beer" style="width: 150px !important;"></a>)

This is a package created in the style of the instagram reels viewer, with which you can pass video url and get reels view.

## Usage

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  reels_viewer: ^1.0.0
```

In your library add the following import:

```dart
import 'package:reels_viewer/reels_viewer.dart';
```

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

## Example

Initializing a List

List<ReelModel> reelsList = [
    ReelModel(
        'https://assets.mixkit.co/videos/preview/mixkit-tree-with-yellow-flowers-1173-large.mp4',
        'Darshan Patil',
        likeCount: 2000,
        isLiked: true,
        musicName: 'In the name of Love',
        reelDescription: "Life is better when you're laughing.",
        profileUrl:
        'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
        commentList: [
            ReelCommentModel(
                comment: 'Nice...',
                userProfilePic:
                'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
                userName: 'Darshan',
                commentTime: DateTime.now(),
            ),
            ReelCommentModel(
                comment: 'Superr...',
                userProfilePic:
                'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
                userName: 'Darshan',
                commentTime: DateTime.now(),
            ),
            ReelCommentModel(
                comment: 'Great...',
                userProfilePic:
                'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
                userName: 'Darshan',
                commentTime: DateTime.now(),
            ),
        ]
    ),
    ReelModel(
        'https://assets.mixkit.co/videos/preview/mixkit-father-and-his-little-daughter-eating-marshmallows-in-nature-39765-large.mp4',
        'Rahul',
        musicName: 'In the name of Love',
        reelDescription: "Life is better when you're laughing.",
        profileUrl:
        'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
    ),
    ReelModel(
        'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
        'Rahul',
    ),
];

Simple implementation

ReelsViewer(
    reelsList: reelsList,
    appbarTitle: 'Instagram Reels',
    onShare: (url) {
        log('Shared reel url ==> $url');
    },
    onLike: (url) {
        log('Liked reel url ==> $url');
    },
    onFollow: () {
        log('======> Clicked on follow <======');
    },
    onComment: (comment) {
        log('Comment on reel ==> $comment');
    },
    onClickMoreBtn: () {
        log('======> Clicked on more option <======');
    },
    onClickBackArrow: () {
        log('======> Clicked on back arrow <======');
    },
    onIndexChanged: (index){
        log('======> Current Index ======> $index <========');
    },
    showProgressIndicator: true,
    showVerifiedTick: false,
    showAppbar: false,
);

## Controller Options

|          Name         |           Description               |   Default    |        Return        |
| :-------------------: | :---------------------------------: | :----------: | :------------------: |
| reelsList             | For assign reels list               |     `[]`     |          -           |
| appbarTitle           | For assign appbar title             | `Reels View` |          -           |
| showProgressIndicator | Hide/Show progress Indicator        |    `true`    |          -           |
| showVerifiedTick      | Hide/Show profile verified tick     |    `true`    |          -           |
| showAppbar            | Hide/Show appbar                    |    `true`    |          -           |
| onShare               | Trigger when click on Share btn     |      -       |      `reels url`     |
| onLike                | Trigger when click on Like btn      |      -       |      `reels url`     |
| onFollow              | Trigger when click on Follow btn    |      -       |          -           |
| onComment             | Trigger when click on Comment Bnt   |      -       |       `string`       |
| onClickMoreBtn        | Trigger when click on Three dot btn |      -       |          -           |
| onClickBackArrow      | Trigger when click on Back Arrow    |      -       |          -           |   
| onIndexChanged        | Trigger when Reel change            |      -       | `current reel index` |

## Demo APK

[Click here](https://github.com/patildarshan66/reels_viewer/blob/master/demo_apk/demo.apk) for download demo app.

## ScreenShots

initial view

Screenshot 1
<p float="left"> 
<img src="https://github.com/patildarshan66/reels_viewer/blob/master/screenshots/screenshot_1.jpg" width="150" height="250">
</p>  

Screenshot 2
<p float="left"> 
<img src="https://github.com/patildarshan66/reels_viewer/blob/master/screenshots/screenshot_2.jpg" width="150" height="250">
</p>  

Screenshot 3
<p float="left"> 
<img src="https://github.com/patildarshan66/reels_viewer/blob/master/screenshots/screenshot_3.jpg" width="150" height="250">
</p>  

Demo video
https://user-images.githubusercontent.com/58986949/115314310-805b2780-a1a7-11eb-8558-648a367ea231.mp4
