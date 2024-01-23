import 'package:flutter/material.dart';


class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

      ],
    ));
  }
}




        // SleekCircularSlider(
        //   appearance: CircularSliderAppearance(
        //       customWidths: CustomSliderWidths(
        //         progressBarWidth: 10,
        //       ),
        //       customColors: CustomSliderColors(
        //           progressBarColor: Colors.red,
        //           trackColor: Colors.green,
        //           dotColor: Colors.white,
        //           shadowColor: Colors.yellow)),
        //   min: 10,
        //   max: 100,
        //   initialValue: 40,
        // ),




// void showAchievementView(BuildContext context){
//     AchievementView(
//         title: "Yeaaah!",
//         subTitle: "Training completed successfully",
//         //content: Widget() 
//         //onTab: _onTabAchievement,
//         icon: Icon(Icons.insert_emoticon, color: Colors.white,),
//         //typeAnimationContent: AnimationTypeAchievement.fadeSlideToUp,
//         //borderRadius: 5.0,
//         color: Colors.blueGrey,
//         //textStyleTitle: TextStyle(),
//         //textStyleSubTitle: TextStyle(),
//         alignment: Alignment.topCenter,
//         duration: Duration(seconds: 3),
//         //isCircle: false,
//         listener: (status){
//           print(status);
//           //AchievementState.opening
//           //AchievementState.open
//           //AchievementState.closing
//           //AchievementState.closed
//         }
//     ).show(context);
//   }
















//////////////////////////drop down button////////////////////////////////////


// final List<String> items = [
//   'Item1',
//   'Item2',
//   'Item3',
//   'Item4',
//   'Item5',
//   'Item6',
//   'Item7',
//   'Item8',
// ];
// String? selectedValue;

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Center(
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton2<String>(
//           isExpanded: true,
//           hint: const Row(
//             children: [
//               Icon(
//                 Icons.list,
//                 size: 16,
//                 color: Colors.yellow,
//               ),
//               SizedBox(
//                 width: 4,
//               ),
//               Expanded(
//                 child: Text(
//                   'Select Item',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.yellow,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ],
//           ),
//           items: items
//               .map((String item) => DropdownMenuItem<String>(
//                     value: item,
//                     child: Text(
//                       item,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ))
//               .toList(),
//           value: selectedValue,
//           onChanged: (value) {
//             setState(() {
//               selectedValue = value;
//             });
//           },
//           buttonStyleData: ButtonStyleData(
//             height: 50,
//             width: 160,
//             padding: const EdgeInsets.only(left: 14, right: 14),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14),
//               border: Border.all(
//                 color: Colors.black26,
//               ),
//               color: Colors.redAccent,
//             ),
//             elevation: 2,
//           ),
//           iconStyleData: const IconStyleData(
//             icon: Icon(
//               Icons.arrow_forward_ios_outlined,
//             ),
//             iconSize: 14,
//             iconEnabledColor: Colors.yellow,
//             iconDisabledColor: Colors.grey,
//           ),
//           dropdownStyleData: DropdownStyleData(
//             maxHeight: 200,
//             width: 200,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14),
//               color: Colors.redAccent,
//             ),
//             offset: const Offset(-20, 0),
//             scrollbarTheme: ScrollbarThemeData(
//               radius: const Radius.circular(40),
//               thickness: MaterialStateProperty.all(6),
//               thumbVisibility: MaterialStateProperty.all(true),
//             ),
//           ),
//           menuItemStyleData: const MenuItemStyleData(
//             height: 40,
//             padding: EdgeInsets.only(left: 14, right: 14),
//           ),
//         ),
//       ),
//     ),
//   );
// }














/////////////////////////////pop up menu//////////////////////////////////////



// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: DropdownButtonHideUnderline(
//           child: DropdownButton2(
//             customButton: const Icon(
//               Icons.list,
//               size: 46,
//               color: Colors.red,
//             ),
//             items: [
//               ...MenuItems.firstItems.map(
//                 (item) => DropdownMenuItem<MenuItem>(
//                   value: item,
//                   child: MenuItems.buildItem(item),
//                 ),
//               ),
//               const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
//               ...MenuItems.secondItems.map(
//                 (item) => DropdownMenuItem<MenuItem>(
//                   value: item,
//                   child: MenuItems.buildItem(item),
//                 ),
//               ),
//             ],
//             onChanged: (value) {
//               MenuItems.onChanged(context, value! as MenuItem);
//             },
//             dropdownStyleData: DropdownStyleData(
//               width: 160,
//               padding: const EdgeInsets.symmetric(vertical: 6),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(4),
//                 color: Colors.redAccent,
//               ),
//               offset: const Offset(0, 8),
//             ),
//             menuItemStyleData: MenuItemStyleData(
//               customHeights: [
//                 ...List<double>.filled(MenuItems.firstItems.length, 48),
//                 8,
//                 ...List<double>.filled(MenuItems.secondItems.length, 48),
//               ],
//               padding: const EdgeInsets.only(left: 16, right: 16),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MenuItem {
//   const MenuItem({
//     required this.text,
//     required this.icon,
//   });

//   final String text;
//   final IconData icon;
// }

// abstract class MenuItems {
//   static const List<MenuItem> firstItems = [home, share, settings];
//   static const List<MenuItem> secondItems = [logout];

//   static const home = MenuItem(text: 'Home', icon: Icons.home);
//   static const share = MenuItem(text: 'Share', icon: Icons.share);
//   static const settings = MenuItem(text: 'Settings', icon: Icons.settings);
//   static const logout = MenuItem(text: 'Log Out', icon: Icons.logout);

//   static Widget buildItem(MenuItem item) {
//     return Row(
//       children: [
//         Icon(item.icon, color: Colors.white, size: 22),
//         const SizedBox(
//           width: 10,
//         ),
//         Expanded(
//           child: Text(
//             item.text,
//             style: const TextStyle(
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   static void onChanged(BuildContext context, MenuItem item) {
//     switch (item) {
//       case MenuItems.home:
//         //Do something
//         break;
//       case MenuItems.settings:
//         //Do something
//         break;
//       case MenuItems.share:
//         //Do something
//         break;
//       case MenuItems.logout:
//         //Do something
//         break;
//     }
//   }
// }







///////////////////////////////feedback///////////////////////////////////////


// dependencies:
//   app_feedback: ^0.0.2
// 2. Import library in dart file.
// import 'package:app_feedback/app_feedback.dart';
// 3. Create a instance of AppFeedback
// AppFeedback feedbackForm = AppFeedback.instance;
// 4. Initialize the app feedback (Ony if you want to ask user for his feedback periodically)
//  @override
//   void initState() {
//     /// `duration` is set to 10 seconds for testing purpose.
//     /// Change this duration on the basis of how often you want to ask user for his feedback.
//     /// For example duration can be 15 days, 1 or 2 month etc.
//     feedbackForm.init(FeedbackConfig(duration: Duration(seconds: 10)));
//     super.initState();
//   }
// 5. Create a method which will launch the feedback form
//  void tryDisplay() {
//     feedbackForm.tryDisplay(context, onSubmit: (UserFeedback feedback) {
//       print(feedback);
//     });
//   }
// 6. Create a button to call tryDisplay method.
// TextButton(
//     onPressed: tryDisplay,
//     child: Text("Try Display Form")
//  ),
// Note

// feedbackForm will only be displayed once provided duration in step 3 has passed.
// Once feedbackForm is displayed then it won't be displayed until the next cycle of the duration is completed.
// The config data provided in first time initialization of feedbackForm is stored in local cache and other initialization data will be ignored.
// 7. Clear old configuration
// Invoke clearConfig method only if there is a need to clear the old config values otherwise ignore this.

//   void clearConfig() async {
//     await feedbackForm.clearConfig();
//  }
// Note

// After clearing the configuration it won't be display the feedback form ever until new initialization.
// Clear configuration form doesn't mean reset the duration cycle. It just removes the all configuration from the cache.
// To reset duration and other configuration do call the feedbackForm.init() method with new config values.
// Display instant feedbackForm 
// If there is a need to display feedbackForm instantly on any time then invoke feedbackForm.display method. By calling this method won't reset the duration cycle provided in above step 3. To invoke below method there is no need to initialize the feedbackForm.

// void launchAppFeedback() {
//     feedbackForm.display(context,
//         option: Option(
//           maxRating: 10,
//           ratingButtonTheme: RatingButtonThemeData.defaultTheme,
//         ), onSubmit: (feedback) {
//       print(feedback);
//     });
//   }













// //////////////////////1st style/////////////////////
// RatingBar.builder(
//    initialRating: 3,
//    minRating: 1,
//    direction: Axis.horizontal,
//    allowHalfRating: true,
//    itemCount: 5,
//    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//    itemBuilder: (context, _) => Icon(
//      Icons.star,
//      color: Colors.amber,
//    ),
//    onRatingUpdate: (rating) {
//      print(rating);
//    },
// );
















////////////////rounded loading button///////////////////////////

// final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

// void _doSomething() async {
//     Timer(Duration(seconds: 3), () {
//         _btnController.success();
//     });
// }

// RoundedLoadingButton(
//     child: Text('Tap me!', style: TextStyle(color: Colors.white)),
//     controller: _btnController,
//     onPressed: _doSomething,
// )





/////////////////////dotted border//////////////////////

// return DottedBorder(
//   borderType: BorderType.RRect,
//   radius: Radius.circular(12),
//   padding: EdgeInsets.all(6),
//   child: ClipRRect(
//     borderRadius: BorderRadius.all(Radius.circular(12)),
//     child: Container(
//       height: 200,
//       width: 120,
//       color: Colors.amber,
//     ),
//   ),
// );