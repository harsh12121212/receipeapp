import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipeapp/Widget/ingredient_tile.dart';
import '../Model/RecipeData.dart';
import '../Widget/step_tile.dart';

class RecipeDetailScreen extends StatefulWidget {
  final RecipeData data;

  const RecipeDetailScreen({super.key, required this.data});

  @override
  _RecipeDetailScreenState createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController(initialScrollOffset: 0.0);
    _scrollController.addListener(() {
      changeAppBarColor(_scrollController);
    });
  }

  Color appBarColor = Colors.transparent;

  changeAppBarColor(ScrollController scrollController) {
    if (scrollController.position.hasPixels) {
      if (scrollController.position.pixels > 2.0) {
        setState(() {
          appBarColor = const Color(0xFFFF725E);
        });
      }
      if (scrollController.position.pixels <= 2.0) {
        setState(() {
          appBarColor = Colors.transparent;
        });
      }
    } else {
      setState(() {
        appBarColor = Colors.transparent;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AnimatedContainer(
          color: appBarColor,
          duration: const Duration(milliseconds: 200),
          child: AppBar(
            backgroundColor: const Color(0xFFFF725E),
            elevation: 0,
            centerTitle: true,
            title: Text(widget.data.title,
                style: const TextStyle(
                    fontFamily: 'GoogleFonts.lora',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white)),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark, color: Colors.white)),
            ],
          ),
        ),
      ),
      body: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: 280,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.data.imagePath),
                    fit: BoxFit.fill)),
            child: Container(
              decoration: const BoxDecoration(),
              height: 300,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          // Section 2 - Recipe Info
          Container(
            width: MediaQuery.of(context).size.width,
            padding:
                const EdgeInsets.only(top: 20, bottom: 30, left: 16, right: 16),
            color: const Color(0xFFFF725E),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Recipe Calories and Time
                Row(
                  children: [
                    const Icon(
                      Icons.thumb_up_sharp,
                      color: Colors.white,
                      size: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text(
                        widget.data.rating,
                        style: GoogleFonts.lora(
                          textStyle: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.alarm, size: 16, color: Colors.white),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text(
                        widget.data.calories,
                        style: GoogleFonts.lora(
                          textStyle: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                // Recipe Title
                Container(
                  margin: const EdgeInsets.only(bottom: 12, top: 16),
                  child: Text(
                    widget.data.title,
                    style: GoogleFonts.lora(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                // Recipe Description
                Text(
                  widget.data.description,
                  style: GoogleFonts.lora(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 150 / 100),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFFFF725E),
            child: TabBar(
              controller: _tabController,
              onTap: (index) {
                setState(() {
                  _tabController.index = index;
                });
              },
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white.withOpacity(0.8),
              labelStyle: GoogleFonts.lora(
                textStyle: const TextStyle(
                 fontWeight: FontWeight.w500,
                fontSize: 20),
              ),
              indicatorColor: Colors.white,
              tabs: const [
                Tab(
                  text: 'Ingredients',
                ),
                Tab(
                  text: 'Tutorial',
                ),
              ],
            ),
          ),
          // IndexedStack based on TabBar index
          IndexedStack(
            index: _tabController.index,
            children: [
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const IngredientTile();
                },
              ),
              // Tutorials
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return StepTile();
                },
              ),
              // Reviews
            ],
          ),
        ],
      ),
    );
  }
}
