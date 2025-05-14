import 'package:flutter/material.dart';
import 'package:star_pattern/details_screen.dart';
import 'package:star_pattern/model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            surfaceTintColor: Colors.transparent,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            expandedHeight: 250,
            centerTitle: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title:  Text("Learn Star Patterns",style:Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white,fontWeight: FontWeight.bold)),
              background: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 100
                        )
                      ]
                    ),
                  ),
                  Image.asset("assets/study.png",),
                ],
              ),

            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listOfStarPattern.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen(selectedIndex:index,)));
                      },
                      leading:Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator(
                            color: Colors.white,
                            value: 0,
                            backgroundColor: Colors.grey.shade700,
                          ),
                         // Icon(Icons.done,color: Colors.white,)
                        ],
                      ),

                      title: Hero(
                        tag: listOfStarPattern[index].title,
                          child: Material(
                              type: MaterialType.transparency, // likely
                              child: Text(listOfStarPattern[index].title,style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),))),

                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),

    );
  }
}
