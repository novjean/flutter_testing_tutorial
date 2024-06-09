// TODO 1: Write a main() method to execute your tests
// TODO 2: Create a group with the name of the class

// TODO 3.1: Write a test that the TimeHelper should return Morning
// TODO 3.2: Write a test that the TimeHelper should return Afternoon
// TODO 3.3: Write a test that the TimeHelper should return Evening
// TODO 3.4: Write a test that the TimeHelper should return Night

import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial/util/time_helper.dart';

main() {
  group("TimeHelper", () {
    group("getTimeOfTheDay", () {
      test("should return Night", () {
        //arrange
        DateTime currentTime = DateTime(2024, 1, 1, 5);

        //act
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

        //assert
        expect(timeOfDay, "Night");
      });

      test("should return Afternoon", () {
        //arrange
        DateTime currentTime = DateTime(2024, 1, 1, 15);

        //act
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

        //assert
        expect(timeOfDay, "Afternoon");
      });

      test("should return Morning", () {
        //arrange
        DateTime currentTime = DateTime(2024, 1, 1, 9);

        //act
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

        //assert
        expect(timeOfDay, "Morning");
      });

      test("should return Evening", () {
        //arrange
        DateTime currentTime = DateTime(2024, 1, 1, 19);

        //act
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

        //assert
        expect(timeOfDay, "Evening");
      });
    });
  });
}
