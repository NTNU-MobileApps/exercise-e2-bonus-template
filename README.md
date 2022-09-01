# E2.Bonus exercise

Template repository for exercise E2.Bonus.
Course [IDATA2503 Mobile applications](https://www.ntnu.edu/studies/courses/IDATA2503) at [NTNU](https://ntnu.edu),
campus [Aalesund](https://www.ntnu.edu/alesund).

## Intention

The intention with this exercise is to get a bit of challenge and practice some things you have learned in the course
[Algorithms and Data structures](https://www.ntnu.edu/studies/courses/IDATA2302).

## Background story

NTNU values student well-being very highly and wants to make sure everyone is included. Therefore, a new project has
been set up to make sure every student in a class is connected to all other students through friendships. Having
separate friendship-clusters is also non-desirable. All the students should be connected in a single, homogenous
friendship cluster spanning over the whole class!

To optimize something you must measure it first, of course. Therefore, the first action in the project is to assess how
well students are connected at the moment.

There is a `database` containing data about all friendships for students in each class. The university now needs to have
an algorithm which can detect whether all students are connected. Unfortunately, all the academic persons involved in
the project are from administration and have not studied algorithms or data structure. Therefore, we need your help!

# Technical details

Data about the students in a class is stored in the following way:

* There is a class called `Batch` representing a class of students (`class` is a reserved name, as you may know ;)). It
  contains a list of all students in a class.
* There is a class for each `Student`, containing all the friendships the student has. Friendships are bidirectional: if
  student A has a friend B, then also B has student A as a friend.
* We define a _friendship cluster_ in the following way: all students who are connected together through friendships
  either directly or through other students. For example, if A is friends with B, B is friends with C, D is friends with
  E, and C is friends with F, then all students A, B, C, D, E, F are in the same friendship cluster

Your task is to implement the method `areAllConnected` inside the `Batch` class in this project. The method must
return `true` if all students in this batch are connected, i.e., belong to the same _friendship cluster_. If there are
several unconnected clusters of students, the method must return `false`.
Note: the method must only return `false` if there is a friendship problem - two or more
unconnected _friendship clusters_.

Examples:

* Three students in the class: John is friends with Bill, Bill is friends with Amy. This forms a connected _friendship
  cluster_ and therefore the method would return `true` if the class with these three students would be the input data.
* Two students in a class: John and Chuck who are not friends. The method would return `false`.
* Five students in the class: Bill is friends with Chuck and John, Amy is friends with Lisa. The method would return
  false, because there are two unconnected _friendship clusters_.

## Hand-in process

Use GitHub Classroom, the same way you do for other coding exercises in this course.

If you want to test it locally, run the tests inside the `test` folder. For example:

`dart test test/empty_batch_test.dart`

`dart test test/three_connected_test.dart`

etc.

To run all the tests:

`dart test`
