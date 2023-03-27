class SignUpOtions {
  bool isTicked;
  String text;
  int id;

  SignUpOtions({required this.isTicked, required this.text, required this.id});
}

class BookingItems {
  String img;
  String id;
  String date;
  String price;
  String from;
  String to;
  String catergory;
  String status;

  BookingItems(
      {required this.catergory,
      required this.date,
      required this.from,
      required this.id,
      required this.img,
      required this.price,
      required this.status,
      required this.to});
}

List<BookingItems> bookingItems = [
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Pay Now",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Pay Now",
      to: "3 Edwins Close, Wuse, Abuja")
];

List<BookingItems> pendingHistory = [
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Pending payment",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Pending delivery",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Pending Dispatched",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Pending payment",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Pending payment",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Pending payment",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Pending payment",
      to: "3 Edwins Close, Wuse, Abuja"),
];

List<BookingItems> deloiveredHistory = [
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Delivered ",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Delivered ",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Delivered ",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Delivered ",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Delivered ",
      to: "3 Edwins Close, Wuse, Abuja"),
  BookingItems(
      catergory: "Food",
      date: "24-02 2022 12:00PM",
      from: "21 Bartus Street, Abuja Nigeria",
      id: "ID: 213081",
      img: "assets/pic/food.png",
      price: "NGN 5,000",
      status: "Delivered ",
      to: "3 Edwins Close, Wuse, Abuja"),
];

class RideOptions {
  String iconPath;
  String title;
  String sub;
  String amount;
  String type;

  RideOptions(
      {required this.amount,
      required this.iconPath,
      required this.sub,
      required this.title,
      required this.type});
}

List<RideOptions> riderOptions = [
  RideOptions(
      amount: "NGN 700",
      iconPath: "assets/icon/bike.svg",
      sub: "Deliver Using Van",
      title: "Bike",
      type: "Per Delivery"),
  RideOptions(
      amount: "NGN 1500",
      iconPath: "assets/icon/van.svg",
      sub: "Deliver Using Van",
      title: "Van",
      type: "Per Delivery"),
];

class DeliveryDetails {
  List<String> content;

  DeliveryDetails({
    required this.content,
  });
}

List<DeliveryDetails> deliveryDetails = [
  DeliveryDetails(content: ["amount", "2130812309"]),
  DeliveryDetails(content: ["Delivery Fee", "NGN 2, 400"]),
  DeliveryDetails(content: ["VAT", "NGN 50"]),
  DeliveryDetails(content: ["Discount", "NILL"]),
  DeliveryDetails(content: ["Amount to Pay", "NGN 2, 450"]),
];

class ProfileSettings {
  String title;
  String svgPath;
  ProfileSettings({required this.svgPath, required this.title});
}

List<ProfileSettings> setting = [
  ProfileSettings(
      svgPath: "assets/icon/track_delivery.svg", title: "Track Delivery"),
  ProfileSettings(
      svgPath: "assets/icon/location.svg", title: "Delivery Addresses"),
  ProfileSettings(svgPath: "assets/icon/help.svg", title: "Help & Support"),
  ProfileSettings(
      svgPath: "assets/icon/prime.svg", title: "Prime Subscription"),
  ProfileSettings(svgPath: "assets/icon/Setting.svg", title: "Settings"),
];

class PrimePurchase {
  String title;
  String sub;
  String body;

  PrimePurchase({required this.title, required this.sub, required this.body});
}

List<PrimePurchase> primePurchase = [
  PrimePurchase(
      title: "Wishway Now",
      sub:
          "This is designed for deliveries less than 50km from your business location",
      body: "Starting from NGN 700 Per trip"),
  PrimePurchase(
      title: "Wishway Highway",
      sub:
          "This is designed for deliveries from 10 - 50km 50km from your business location",
      body: "Starting from NGN 1000 Per trip"),
  PrimePurchase(
      title: "Wishway Broadway",
      sub: "This is designed for inter-state deliveries",
      body: "Starting from NGN 3000 Per trip"),
];

class PrimeBuyModel {
  String title;
  String sub;

  PrimeBuyModel(
      {required this.title,
      required this.sub,
    });
}

List<PrimeBuyModel> primeBuyModel = [
  PrimeBuyModel(title: "Prime type", sub: "Wishway Now"),
  PrimeBuyModel(title: "Product Category", sub: "Electronics"),
  PrimeBuyModel(title: "Product Type", sub: "Mobile"),
  PrimeBuyModel(title: "Weight Range", sub: "10-20KG"),
  PrimeBuyModel(title: "Deliveries", sub: "200"),
  PrimeBuyModel(title: "Duration", sub: "30 days"),
  PrimeBuyModel(title: "Amount to Pay", sub: "NGN 30,000"),
];
