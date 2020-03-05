class ListViewData {
  const ListViewData({this.title, this.author, this.imgUrl});
  final String title;
  final String author;
  final String imgUrl;
}

final List<ListViewData> listViewData = [
  ListViewData(
    title: '姐姐和我',
    author: '张飞',
    imgUrl: 'assets/1.jpg',
  ),
  ListViewData(
    title: '我的私人海滩',
    author: '关羽',
    imgUrl: 'assets/2.jpg',
  ),
  ListViewData(
    title: '我在巴黎的第一天',
    author: '刘备',
    imgUrl: 'assets/3.png',
  ),
];
