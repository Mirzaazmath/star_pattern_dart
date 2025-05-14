class StarPattern {
  final String title;
  final String code;
  final String output;
  StarPattern({required this.title, required this.code, required this.output});
}

List<StarPattern> listOfStarPattern = [
  // Right Triangle
  StarPattern(
    title: "Right Triangle",
    code: """ 
void main() {

  for (int i = 1; i <= 5; i++) {
    String res = "";

    for (int j = 1; j <= i; j++) {
    
      res += "* ";
    }
    print(res);
  }
}
""",
    output: """ 

* 
* * 
* * * 
* * * * 
* * * * * 

""",
  ),
  // Left Triangle
  StarPattern(
    title: "Left Triangle",
    code: """ 
void main() {

  for (int i = 1; i <= 5; i++) {
    String res = "";

    for (int j = 1; j <= i; j++) {
    
      res += "* ";
    }
    print(res);
  }
}
""",
    output: """ 

* 
* * 
* * * 
* * * * 
* * * * * 

""",
  ),

  StarPattern(
    title: "Right Triangle1",
    code: """ 
void main() {

  for (int i = 1; i <= 5; i++) {
    String res = "";

    for (int j = 1; j <= i; j++) {
    
      res += "* ";
    }
    print(res);
  }
}
""",
    output: """ 

* 
* * 
* * * 
* * * * 
* * * * * 

""",
  ),
  StarPattern(
    title: "Right Triangle2",
    code: """ 
void main() {

  for (int i = 1; i <= 5; i++) {
    String res = "";

    for (int j = 1; j <= i; j++) {
    
      res += "* ";
    }
    print(res);
  }
}
""",
    output: """ 

* 
* * 
* * * 
* * * * 
* * * * * 

""",
  ),

];
