class Type{

  final String title;
  final String imagePath;
  final String rank;

  Type({this.title, this.imagePath, this.rank});
}
final MoodBalance = Type(imagePath:'' , title: "Clear Mind", rank: "1");
final WorkOut = Type(imagePath:'' , title: "Work Out", rank: "2");
final GutFeeling = Type(imagePath:'' , title: "Gut Feeling", rank: "2");


final types =[
  MoodBalance,
  WorkOut,
  GutFeeling
];