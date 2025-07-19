import '../location_page/widgets/userprofile_item_widget.dart';
import 'package:anitha_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LocationPage extends StatefulWidget {
  const LocationPage({Key? key})
      : super(
          key: key,
        );

  @override
  LocationPageState createState() => LocationPageState();
}

class LocationPageState extends State<LocationPage>
    with AutomaticKeepAliveClientMixin<LocationPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 377.82.h,
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  right: 26.h,
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 24.v,
                    );
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return UserprofileItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
