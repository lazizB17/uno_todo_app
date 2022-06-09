import 'package:flutter/material.dart';
import 'package:uno_todo_app/screens/search_screen.dart';
import 'package:uno_todo_app/services/lang_service.dart';
import 'package:uno_todo_app/services/util_service.dart';
import '../models/user_model.dart';
import '../services/theme_service.dart';
import '../views/dialogs.dart';
import '../views/home_item.dart';
import '../views/search_view.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late User _user;

  @override
  initState() {
    super.initState();
    _getUser();
  }

  void _getUser() {
    // TODO: concrete updated => read user from database
    _user = User("Antonio Bonilla", "antonio.bonilla@horus.com.uy");
  }

  void _goSettingScreen() {
    // TODO: navigate setting page
  }

  void _showSearch() {
    showSearchCustom(
      context: context,
      delegate: SearchScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeService.colorBackgroundLight,
      // #appBar
      appBar: AppBar(
        backgroundColor: ThemeService.colorBackgroundLight,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: _goSettingScreen,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: ThemeService.colorMain,
              child: Text(
                Utils.getFirstLetters(_user.fullName),
                style: ThemeService.textStyleBody(
                    color: ThemeService.colorBackgroundLight),
              ),
            ),
          ),
        ),
        centerTitle: false,
        title: Text(
          _user.fullName,
          style: ThemeService.textStyleBody(),
        ),
        actions: [
          IconButton(
            splashRadius: 25,
            onPressed: _showSearch,
            icon: const Icon(
              Icons.search,
              color: ThemeService.colorMain,
            ),
          ),
        ],
      ),

      // #body
      body: SafeArea(
        child: ListView(children: [
          HomeItem(
              iconColor: ThemeService.colorPink,
              icon: Icons.star_outlined,
              title: "important".tr,
              onPressed: () {}),
          HomeItem(
              iconColor: ThemeService.colorMain,
              imageIcon: "assets/icons/ic_home.png",
              title: "tasks".tr,
              onPressed: () {}),
          Divider(
            height: 4,
            thickness: 2,
            endIndent: MediaQuery.of(context).size.width * 0.04,
            indent: MediaQuery.of(context).size.width * 0.04,
          ),
          HomeItem(
              iconColor: ThemeService.colorMainTask,
              icon: Icons.list,
              title: "tasks_list".tr,
              onPressed: () {}),
          HomeItem(
              iconColor: ThemeService.colorMainTask,
              icon: Icons.list,
              title: "house_list".tr,
              onPressed: () {}),
        ]),
      ),

      // #float bottom
      floatingActionButton: TextButton.icon(
        onPressed: () {
          showCreateDialog(context);
        },
        icon: const Icon(
          Icons.add,
          color: ThemeService.colorMain,
        ),
        label: Text(
          "new_list".tr,
          style: ThemeService.textStyle2(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

/*
return Scaffold(
      backgroundColor: Colors.white,
      // #appBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          // #search button
          Container(
            padding: const EdgeInsets.only(right: 11),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.purple,
                  size: 25,
                ),
            ),
          )
        ],
        // #Antonio Bonilla
        title: const Text("Antonio Bonilla", style: TextStyle(color: Colors.black),),
        centerTitle: false,
        automaticallyImplyLeading: false,
        // #AB
        leading: Container(
          margin: const EdgeInsets.only(left: 21),
          child: CircleAvatar(
            child: Container(
              child: const Text(
                "AB",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),

      // #body
      body: ListView(
        children: [
          const SizedBox(height: 20),
          // #important
          Row(
            children: [
              const SizedBox(width: 16),
              // #Important icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star,
                    color: Color(0xFFF85977),
                  ),
              ),
              const SizedBox(width: 18),
              // #Important
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Important",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
              ),
              const SizedBox(width: 165,),
              // #forward icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.chevron_forward))
            ],
          ),

          // #Tasks
          Row(
            children: [
              const SizedBox(width: 16,),
              // #tasks icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home_outlined,
                    color: Color(0xFF5946D2),
                  ),
              ),
              const SizedBox(width: 16),
              // #Tasks
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Tasks",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
              ),
              const SizedBox(width: 190),
              // #forwadr icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.chevron_forward))
            ],
          ),
          const SizedBox(height: 10),

          // #line
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
          ),
          const SizedBox(height: 25),

          // #Task list
          Row(
            children: [
              const SizedBox(width: 18),
              // #Task List icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.list,
                    color: Colors.blueAccent,
                  ),
              ),
              const SizedBox(width: 13),
              // #Task list
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Task List",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
              ),
              const SizedBox(width: 174),
              // #forward icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.chevron_forward),
              )
            ],
          ),

          // #House list
          Row(
            children: [
              const SizedBox(width: 18),
              // #House List icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.list,
                    color: Colors.blueAccent,
                  )),
              const SizedBox(width: 13),
              // #House List
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "House List",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )),
              const SizedBox(width: 162),
              // #forwadr icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.chevron_forward))
            ],
          ),
          const SizedBox(height: 360),

          // #New List
          Row(
            children: [
              const SizedBox(width: 18),
              // #add icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Color(0xFF5946D2),
                  ),
              ),
              // #New List
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "New List",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
              ),
              const SizedBox(width: 240),
            ],
          ),
        ],
      ),
    );
 */
