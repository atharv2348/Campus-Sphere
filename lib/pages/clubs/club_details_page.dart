import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_campus/models/club_model.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:smart_campus/widgets/title_container.dart';

class ClubDetailsPage extends StatefulWidget {
  final ClubModel clubModel;
  const ClubDetailsPage({super.key, required this.clubModel});

  @override
  State<ClubDetailsPage> createState() => _ClubDetailsPageState();
}

class _ClubDetailsPageState extends State<ClubDetailsPage> {
  ScrollController scrollController = ScrollController();
  Timer? timer;
  double scrollSpeed = 1.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // startScrolling();
  }

  void startScrolling() {
    timer = Timer.periodic(
      Duration(
        milliseconds: 16,
      ),
      (timer) {
        if (scrollController.hasClients) {
          double maxScroll = scrollController.position.maxScrollExtent;
          double current = scrollController.offset;

          if (current < maxScroll) {
            scrollController.jumpTo(current + scrollSpeed);
          } else {
            scrollController.jumpTo(0);
          }
        } else {}
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: widget.clubModel.name,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              Hero(
                tag: 'logo',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl: widget.clubModel.logoUrl ?? "",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InfoContainer(
                title: widget.clubModel.info ?? "",
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
                textPadding: true,
              ),
              SizedBox(
                height: 10,
              ),
              TitleContainer(
                title: 'Event and Club Activities',
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: widget.clubModel.images.map(
                    (e) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: CachedNetworkImage(
                            placeholder: (context, url) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  'assets/images/gcek1.jpg',
                                  height:
                                      MediaQuery.of(context).size.width * 0.8,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                ),
                              );
                            },
                            height: MediaQuery.of(context).size.width * 0.8,
                            width: MediaQuery.of(context).size.width * 0.8,
                            fit: BoxFit.cover,
                            imageUrl: e,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TitleContainer(
                title: 'Connect us on Instagram',
                url: widget.clubModel.instaId,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
