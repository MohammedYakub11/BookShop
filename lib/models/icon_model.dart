class IconModel {
  String icon;
  String title;


  IconModel({
    required this.icon,
    required this.title,

  });


  static List<IconModel> icons = [
    IconModel(
      icon: 'assets/icons/fairy.png',
      title: "Fairy Tales",
    ),
    IconModel(icon: 'assets/icons/horror.png', title: "Horror"),
    IconModel(
      icon: 'assets/icons/tragedy.png',
      title: "Tragedy",
    ),
    IconModel(
      icon: 'assets/icons/science.png',
      title: "Science",
    ),
    IconModel(
      icon: 'assets/icons/animated.png',
      title: "Comics",
    ),
  ];
}
