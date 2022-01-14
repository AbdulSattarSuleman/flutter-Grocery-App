import 'package:flutter/material.dart';
import 'package:practice_api/models/user_model.dart';
import 'package:practice_api/services/api_service.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
          future: getUserData(),
          builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ResusableRow(
                              title: 'Name',
                              value: snapshot.data![index].name.toString(),
                            ),
                            ResusableRow(
                              title: 'Username',
                              value: snapshot.data![index].username.toString(),
                            ),
                            ResusableRow(
                              title: 'City',
                              value: snapshot.data![index].address!.city
                                  .toString(),
                            ),
                            ResusableRow(
                              title: 'Latitude',
                              value: snapshot.data![index].address!.geo!.lat
                                  .toString(),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}

class ResusableRow extends StatelessWidget {
  String title;
  String value;
  ResusableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(value)],
      ),
    );
  }
}
