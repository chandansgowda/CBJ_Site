import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cybear_jinni_site/presentation/new_home_page/widgets/border_text_with_shadow.dart';
import 'package:cybear_jinni_site/presentation/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageThiredPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox.expand(
          child: CachedNetworkImage(
            imageUrl: 'https://wallpaperaccess.com/full/3644270.jpg',
            fit: BoxFit.fill,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BorderTextWithShadow(
                    'How to Setup',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    setUpRoute,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 400,
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            width: 170,
                            imageUrl:
                                'https://brandlogos.net/wp-content/uploads/2020/09/raspberry-pi-logo.png',
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                              value: downloadProgress.progress,
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          const SizedBox(height: 32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BorderTextWithShadow(
                                'i. ',
                                fontSize: 20,
                                textAlign: TextAlign.start,
                              ),
                              Expanded(
                                child: Center(
                                  child: BorderTextWithShadow(
                                    'Download ISO',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BorderTextWithShadow(
                                'ii. ',
                                fontSize: 20,
                                textAlign: TextAlign.start,
                              ),
                              Expanded(
                                child: Center(
                                  child: BorderTextWithShadow(
                                    'Install ISO to SD Card and insert it',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BorderTextWithShadow(
                                'iii. ',
                                fontSize: 20,
                                textAlign: TextAlign.start,
                              ),
                              Expanded(
                                child: Center(
                                  child: BorderTextWithShadow(
                                    'Open the apps on your phone',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 100),
                    SizedBox(
                      width: 400,
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            width: 170,
                            imageUrl:
                                'https://www.stepsoftware.com/images/services/linux.png',
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                              value: downloadProgress.progress,
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          const SizedBox(height: 32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BorderTextWithShadow(
                                'i. ',
                                fontSize: 20,
                                textAlign: TextAlign.start,
                              ),
                              Expanded(
                                child: Center(
                                  child: BorderTextWithShadow(
                                    'Install MQTT broker snap',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BorderTextWithShadow(
                                'ii. ',
                                fontSize: 20,
                                textAlign: TextAlign.start,
                              ),
                              Expanded(
                                child: Center(
                                  child: BorderTextWithShadow(
                                    'Install CyBear Jinni Hub snap',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BorderTextWithShadow(
                                'iii. ',
                                fontSize: 20,
                                textAlign: TextAlign.start,
                              ),
                              Expanded(
                                child: Center(
                                  child: BorderTextWithShadow(
                                    'Open the apps on your phone',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}