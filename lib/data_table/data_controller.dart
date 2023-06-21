import 'package:get/get.dart';

class Tablecontroller extends GetxController
{
  RxList<Map> tablelist=<Map>[
    {"id":1,"name":"prince","course":"flutter","no":4675748383,"select":false},
    {"id":2,"name":"vivek","course":"flutter","no":4675743543,"select":false},
    {"id":3,"name":"dixit","course":"flutter","no":4675735483,"select":false},
    {"id":4,"name":"darshan","course":"flutter","no":4675189083,"select":false},
    {"id":5,"name":"kaushik","course":"flutter","no":4675186583,"select":false},
  ].obs;
}