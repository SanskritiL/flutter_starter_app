class Type{

  final String title;
  final String imagePath;
  final String rank;

  Type({this.title, this.imagePath, this.rank});
}
final moodBalance = Type(imagePath:'assets/brain.png' , title: "Clear Mind", rank: "1");
final workOut = Type(imagePath:'assets/workout.png' , title: "Work Out", rank: "2");
final gutFeeding = Type(imagePath:'assets/food.jpg' , title: "Gut Feeling", rank: "2");


final types =[
  moodBalance,
  workOut,
  gutFeeding
];