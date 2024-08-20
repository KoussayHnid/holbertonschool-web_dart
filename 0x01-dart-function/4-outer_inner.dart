void outer(String name, String id) {
  String inner() {
    List<String> names = name.split(' ');
    String firstName = names[0];
    String lastName = names[1];
    return 'Hello Agent ${lastName[0]}.${firstName} your id is $id';
  }

  print(inner());
}
