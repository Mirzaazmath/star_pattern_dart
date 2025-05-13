import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatefulWidget {
  final String title;
  const DetailsScreen({super.key, required this.title});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  PageController _controller = PageController();
  TextEditingController textEditingController = TextEditingController(text: code);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text(widget.title),
          bottom: TabBar(
            indicatorColor: Colors.white,
            onTap: (index) {
              _controller.jumpToPage(index);
              if(index==0){
                textEditingController.text=code;
              }else{
                textEditingController.text=output;
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
          controller: _controller,
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

List<String> page = [code, output];

String code = """ 
void main() {

  for (int i = 1; i <= 5; i++) {
    String res = "";

    for (int j = 1; j <= i; j++) {
    
      res += "* ";
    }
    print(res);
  }
}
""";

String output = """ 

* 
* * 
* * * 
* * * * 
* * * * * 

""";
