class Phone {
  late int id;
  late String imageUrl;
  late String title;
  late String desc;

  Phone(this.id, this.imageUrl, this.title, this.desc);

  get getTitle {
    return title;
  }

  get getImageUrl {
    return imageUrl;
  }

  get getDesc {
    return desc;
  }

  get getId {
    return id;
  }
}
