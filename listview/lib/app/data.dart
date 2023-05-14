class Featured {
  final String id;
  final String name;
  final List<Content> contents;

  Featured(this.id, this.name, this.contents);
}

class Content {
  final String id;
  final String name;

  Content(this.id, this.name);
}

class CommonList {
  final int uniqueID;
  final String content;
  final String label;

  CommonList(
      {required this.uniqueID, required this.content, required this.label});
}

final listtype = <CommonList>[
  CommonList(uniqueID: 1, content: "Home page", label: "Home"),
  CommonList(uniqueID: 2, content: "Search page", label: "Search"),
  CommonList(uniqueID: 3, content: "Profile page", label: "Profile"),
  CommonList(uniqueID: 4, content: "Settings page", label: "Settings"),
];
/*Here we have the list of bottom content type CommonList, which is occupy the bottom of the page */
/* Able to add image element for each object */
final bottomist = [
  CommonList(uniqueID: 1, content: "", label: "Home"),
  CommonList(uniqueID: 2, content: "", label: "Search"),
  CommonList(uniqueID: 3, content: "", label: "Profile"),
  CommonList(uniqueID: 4, content: "", label: "Settings"),
];
