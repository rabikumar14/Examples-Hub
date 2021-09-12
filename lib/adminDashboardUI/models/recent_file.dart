import 'package:examples_hub/constants.dart';

class RecentFile {
  final String? icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: svg1,
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: svg1,
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: svg1,
    title: "Documetns",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: svg1,
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: svg1,
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFile(
    icon: svg1,
    title: "Sals PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: svg1,
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
