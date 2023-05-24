class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Exclusive Music',
      image: 'images/2.png',
      discription: "We have n autho's library of sounds that"
          "you will not find anywhere else"),
  UnbordingContent(
      title: 'Relax sleep sounds',
      image: 'images/3.png',
      discription:
          "Our sounds are designed to help you relax and sleep health."),
  UnbordingContent(
      title: 'Story for kids',
      image: 'images/4.png',
      discription: "Famous fairy tales with soothing sounds"
          " will help your children fall asleep faster"),
];
