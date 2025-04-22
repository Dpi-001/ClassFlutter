import 'package:flutter/material.dart';

class Desgin2M extends StatelessWidget {
  const Desgin2M({super.key});

  serviceCard({required IconData icon, required String text}) {
    return Card(
      elevation: 1,
      shadowColor: Colors.black54,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.5, vertical: 12),
        child: Column(
          spacing: 5,
          children: [
            Icon(icon, color: Colors.green.shade600, size: 28),
            Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row with image, text, and notification
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Circular Image on the left
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://www.premiercarriage.co.uk/uploads/2025/03/22/white-mercedes-g-wagon-for-hire.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  // Text Column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Prabha!",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.green,
                            size: 20,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Madurai, India",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Badge(
                    label: Text("2", style: TextStyle(color: Colors.white)),
                    child: Icon(Icons.notifications, color: Colors.red),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  suffixIcon: Icon(Icons.filter_list, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 16,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                spacing: 5,
                children: [
                  serviceCard(icon: Icons.house_outlined, text: "Hotels"),
                  serviceCard(icon: Icons.flight, text: "Flight"),
                  serviceCard(icon: Icons.bus_alert, text: "Bus"),
                  serviceCard(icon: Icons.train, text: "Train"),
                ],
              ),
              SizedBox(height: 10),
              // Banner Card
              Container(
                padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [Colors.green.shade300, Colors.green.shade600],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Title will be here",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: Text(
                            "Subtitle wil be here subtitle will be here sub title will be here",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Get Started",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    Image.network(
                      "https://static.vecteezy.com/system/resources/previews/045/729/459/non_2x/a-young-man-stands-with-arms-outstretched-holding-multiple-shopping-bags-he-is-looking-at-the-camera-with-a-neutral-expression-png.png",
                      width: 170,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "All",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        spacing: 10,
                        children: [
                          Image.asset("assets/images/hotell.png"),
                          Text(
                            "Hotels",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        spacing: 10,
                        children: [
                          Image.asset("assets/images/hotell.png"),
                          Text(
                            "Resorts",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                            child: Image.network(
                              "https://plus.unsplash.com/premium_vector-1697729804286-7dd6c1a04597?q=80&w=1370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // Item Card
              Card(
                elevation: 1,
                shadowColor: Colors.black54,
                child: ListTile(
                  leading: Image.network(
                    "https://www.premiercarriage.co.uk/uploads/2025/03/22/white-mercedes-g-wagon-for-hire.jpg",
                    fit: BoxFit.cover,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Item Title"),
                      SizedBox(height: 5),
                      Text("Item Description"),
                      SizedBox(height: 5),
                      Text(
                        "Price: \$100",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 5),
                          Text("4.5"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Bottom navigation bar
              BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: "Search",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile",
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "Settings",
                  ),

                  BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.notification_add),
                    label: "Notification",
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.back_hand),
                    label: "Back",
                  ),
                ],
                currentIndex: 0,
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.grey,
                showUnselectedLabels: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
