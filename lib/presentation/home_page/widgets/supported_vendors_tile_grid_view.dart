import 'package:cached_network_image/cached_network_image.dart';
import 'package:cybear_jinni_site/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportedVendorsTileGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      padding: const EdgeInsets.only(left: 30, right: 30),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      crossAxisCount: 3,
      children: [
        SupportedVendorsTileGridViewNetworkImage(
          'https://i.ibb.co/C20VvvB/yeelight-logo.png',
        ),
        SupportedVendorsTileGridViewNetworkImage(
          'https://i.ibb.co/2qN6yJW/lifx-logo.png',
        ),

        SupportedVendorsTileGridViewNetworkImage(
          'https://i.ibb.co/jJ20vch/tuya-smart-logo.png',
        ),
        // SupportedVendorsTileGridViewNetworkImage(
        //   'https://i.ibb.co/hfRhB0Q/mqtt-logo.png',
        // ),
        // SupportedVendorsTileGridViewNetworkImage(
        //   'https://i.ibb.co/XZLGCRd/Tasmota-logo.png',
        //   imageBackgroundColor: Colors.white,
        // ),
        //
        // SupportedVendorsTileGridViewNetworkImage(
        //   'https://i.ibb.co/q9psvjY/switcher-logo.png',
        // ),
        // SupportedVendorsTileGridViewNetworkImage(
        //   'https://i.ibb.co/W2YG23s/ESPHome-logo.png',
        // ),
      ],
    );
  }
}

class SupportedVendorsTileGridViewNetworkImage extends StatelessWidget {
  SupportedVendorsTileGridViewNetworkImage(this.imageUrl,
      {this.imageBackgroundColor = Colors.transparent});

  String imageUrl;
  Color imageBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: imageBackgroundColor,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.contain,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) {
          logger.e('Error loading image url $url\n$error');
          return const Icon(Icons.error);
        },
      ),
    );
  }
}
