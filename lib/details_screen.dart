import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_pattern/model.dart';

class DetailsScreen extends StatefulWidget {
  final int selectedIndex;
  const DetailsScreen({super.key, required this.selectedIndex});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  PageController _pageController = PageController();
  TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
   textEditingController.text = listOfStarPattern[widget.selectedIndex].code;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title:Hero(
            tag: listOfStarPattern[widget.selectedIndex].title,
              child: Material(
                  type: MaterialType.transparency,
                  child: Text(listOfStarPattern[widget.selectedIndex].title,style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white,fontWeight: FontWeight.bold)),)),
          bottom: TabBar(
            indicatorColor: Colors.white,
            onTap: (index) {
              _pageController.jumpToPage(index);
              if(index==0){
                textEditingController.text=listOfStarPattern[index].code;
              }else{
                textEditingController.text=listOfStarPattern[index].output;
              }


            },
            tabs: <Widget>[
              Tab(
                icon: Text(
                  "Code",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineSmall?.copyWith(color: Colors.white),
                ),
              ),
              Tab(
                icon: Text(
                  "Output",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineSmall?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              child: Center(
                child: TextFormField(
                  readOnly: true,
                  expands: true,
                  maxLines: null,
                  style: GoogleFonts.ibmPlexMono().copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold),
                  controller: textEditingController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                  ),
                ),

              ),
            );
          },
        ),
      ),
    );
  }
}

// List<String> page = [code, output];

// String code = """
// void main() {
//
//   for (int i = 1; i <= 5; i++) {
//     String res = "";
//
//     for (int j = 1; j <= i; j++) {
//
//       res += "* ";
//     }
//     print(res);
//   }
// }
// """;
//
// String output = """
//
// *
// * *
// * * *
// * * * *
// * * * * *
//
// """;
