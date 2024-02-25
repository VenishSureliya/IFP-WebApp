import 'package:flutter/material.dart';
import 'package:ifp_webapp/utils/color_list.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StoryContainer extends StatefulWidget {
  const StoryContainer({super.key});

  @override
  State<StoryContainer> createState() => _StoryContainerState();
}

class _StoryContainerState extends State<StoryContainer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => DesktopStoryContainer(),
    );
  }

  @override
  void initState() {
    super.initState();
    firstNameFocusNode.addListener(() {
      setState(() {});
    });
    lastNameFocusNode.addListener(() {
      setState(() {});
    });
    favoriteTeamFocusNode.addListener(() {
      setState(() {});
    });
    teamOneFocusNode.addListener(() {
      setState(() {});
    });
    teamTwoFocusNode.addListener(() {
      setState(() {});
    });
  }

  FocusNode firstNameFocusNode = FocusNode();
  FocusNode lastNameFocusNode = FocusNode();
  FocusNode favoriteTeamFocusNode = FocusNode();
  FocusNode teamOneFocusNode = FocusNode();
  FocusNode teamTwoFocusNode = FocusNode();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final favoriteTeam = TextEditingController();
  final teamOneGoals = TextEditingController();
  final teamTwoGoals = TextEditingController();

  Widget DesktopStoryContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                // horizontal: 104,
                vertical: 100,
              ),
              child: SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Predict Score",
                      style: TextStyle(
                        color: ColorList.primary,
                        fontFamily: 'DMSans',
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      "Predict score of today's match and get high quality story template!",
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w300,
                        color: Colors.white60,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: TextField(
                            controller: firstName,
                            focusNode: firstNameFocusNode,
                            cursorColor: ColorList.primary,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1.8),
                                    borderRadius: BorderRadius.circular(6)),
                                labelText: 'First Name',
                                // errorText: "Invalid Input",
                                labelStyle: TextStyle(
                                  color: firstNameFocusNode.hasFocus
                                      ? ColorList.primary
                                      : Colors.white54,
                                ),
                                focusColor: ColorList.primary,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorList.primary, width: 1.8)),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white54))),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: TextField(
                            controller: lastName,
                            focusNode: lastNameFocusNode,
                            cursorColor: ColorList.primary,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1.8),
                                    borderRadius: BorderRadius.circular(6)),
                                labelText: 'Last Name',
                                // errorText: "Invalid Input",
                                labelStyle: TextStyle(
                                  color: lastNameFocusNode.hasFocus
                                      ? ColorList.primary
                                      : Colors.white54,
                                ),
                                focusColor: ColorList.primary,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorList.primary, width: 1.8)),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white54))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: favoriteTeam,
                      focusNode: favoriteTeamFocusNode,
                      cursorColor: ColorList.primary,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1.8),
                              borderRadius: BorderRadius.circular(6)),
                          labelText: 'Favorite Team',
                          // errorText: "Invalid Input",
                          labelStyle: TextStyle(
                            color: favoriteTeamFocusNode.hasFocus
                                ? ColorList.primary
                                : Colors.white54,
                          ),
                          focusColor: ColorList.primary,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorList.primary, width: 1.8)),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white54))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: TextField(
                            controller: teamOneGoals,
                            focusNode: teamOneFocusNode,
                            cursorColor: ColorList.primary,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1.8),
                                    borderRadius: BorderRadius.circular(6)),
                                labelText: 'Chelsea Goals',
                                // errorText: "Invalid Input",
                                labelStyle: TextStyle(
                                  color: teamOneFocusNode.hasFocus
                                      ? ColorList.primary
                                      : Colors.white54,
                                ),
                                focusColor: ColorList.primary,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorList.primary, width: 1.8)),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white54))),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: TextField(
                            controller: teamTwoGoals,
                            focusNode: teamTwoFocusNode,
                            cursorColor: ColorList.primary,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1.8),
                                    borderRadius: BorderRadius.circular(6)),
                                labelText: 'Liverpool Goals',
                                // errorText: "Invalid Input",
                                labelStyle: TextStyle(
                                  color: teamTwoFocusNode.hasFocus
                                      ? ColorList.primary
                                      : Colors.white54,
                                ),
                                focusColor: ColorList.primary,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorList.primary, width: 1.8)),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white54))),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      height: 60,
                      minWidth: 600,
                      hoverColor: Colors.deepOrange[800],
                      color: ColorList.primary,
                      onPressed: () {},
                      child: const Text(
                        "Download",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  // Enclose the BoxShadow within square brackets to create a list
                  BoxShadow(
                    color: Color(0xFFa110df).withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 500,
                    offset: Offset(0, 30),
                  ),
                ],
              ),
              child: Image.asset(
                'images/testimage.png',
                height: 500,
              ),
            ),
          ],
        )
      ],
    );
  }
}
