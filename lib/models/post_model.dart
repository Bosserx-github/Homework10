class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    required this.authorName,
    required this.authorImageUrl,
    required this.timeAgo,
    required this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'King of Ferrari',
    authorImageUrl: 'assets/images/ferrari logo.png',
    timeAgo: '5 min',
    imageUrl: 'assets/images/ferrari post.jpg',
  ),
  Post(
    authorName: 'The Mclaren',
    authorImageUrl: 'assets/images/mclaren logo.jpg',
    timeAgo: '10 min',
    imageUrl: 'assets/images/alex post.jpg',
  ),
  Post(
    authorName: 'Bugatti',
    authorImageUrl: 'assets/images/bugati logo.png',
    timeAgo: '12 min',
    imageUrl: 'assets/images/bugati post.jpg',
  ),
  Post(
    authorName: 'Paganiautomobili',
    authorImageUrl: 'assets/images/pagani-Logo-History.jpg',
    timeAgo: '2 Days ago',
    imageUrl: 'assets/images/pagani post.jpg',
  ),
  Post(
    authorName: 'Mercedes Benz',
    authorImageUrl: 'assets/images/benz.png',
    timeAgo: '5 Days ago',
    imageUrl: 'assets/images/Mercedes-Benz post.jpg',
  ),
];

