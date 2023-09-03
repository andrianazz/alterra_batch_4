import 'package:alterra_batch_4/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Where do",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "you want to go?",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff119B58),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Find place to stay",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Category",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // make icon circle for category in controller.listCategorry
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        controller.listCategory.length,
                        (index) => GestureDetector(
                          onTap: () {
                            Get.defaultDialog(
                              title: "Add Soon",
                              content:
                                  const Text("This feature will be added soon"),
                              confirm: TextButton(
                                onPressed: () => Get.back(),
                                child: const Text("OK"),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: const Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.asset(
                                    controller.listCategory[index].image,
                                    fit: BoxFit.cover,
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                controller.listCategory[index].name,
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Popular",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.separated(
                // shrinkWrap: true,
                // physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 24);
                },
                itemCount: controller.listPopular.length - 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Get.toNamed(
                      Routes.DETAIL,
                      arguments: controller.listPopular.value.elementAt(index),
                    ),
                    child: Container(
                      width: 120,
                      height: 200,
                      margin: EdgeInsets.only(
                        left: index == 0 ? 24 : 0,
                        right:
                            index == controller.listPopular.length - 2 ? 24 : 0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              controller.listPopular.value
                                  .elementAt(index)
                                  .image,
                              fit: BoxFit.cover,
                              color: Colors.black12,
                              colorBlendMode: BlendMode.darken,
                              width: 120,
                              height: 200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff119B58),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      Text(
                                        "${controller.listPopular.value.elementAt(index).rating}",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  controller.listPopular.value
                                      .elementAt(index)
                                      .name,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Nearby Residence",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 150,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 24),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 24);
                },
                scrollDirection: Axis.horizontal,
                itemCount: controller.listPopular.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.DETAIL,
                          arguments:
                              controller.listPopular.value.elementAt(index));
                    },
                    child: Container(
                      width: 200,
                      height: 150,
                      margin: EdgeInsets.only(
                        left: index == 0 ? 24 : 0,
                        right: index == controller.listPopular.length ? 24 : 0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                controller.listPopular.value
                                    .elementAt(index)
                                    .image,
                                fit: BoxFit.cover,
                                color: Colors.black12,
                                colorBlendMode: BlendMode.darken,
                                width: 200,
                                height: 100,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              controller.listPopular.value
                                  .elementAt(index)
                                  .name,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            selectedItemColor: const Color(0xff119B58),
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            onTap: (value) => controller.currentIndex.value = value,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.date_range),
                label: "History",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Chat",
              ),
            ],
          ),
        ));
  }
}
