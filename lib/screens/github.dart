import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_svg/svg.dart';

import '../queries/fetchRepositories.dart' as queries;

class GithHubScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Query(
              queries.readRepositories, // this is the query you just created
              variables: {
                'nRepositories': 50,
              },
              pollInterval: 10, // optional
              builder: ({
                bool loading,
                var data,
                Exception error,
              }) {
                if (error != null) {
                  return Text(error.toString());
                }

                if (loading) {
                  return Text('Loading');
                }

                // it can be either Map or List
                List repositories = data['viewer']['repositories']['nodes'];

                return SingleChildScrollView(
                  child: Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 0,
                    runSpacing: 20.0,
                    children: repositories
                        .map(
                          (item) => _buildRepository(item),
                        )
                        .toList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRepository(Map item) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 18,
          child: Container(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 10.0,
              bottom: 10.0,
              top: 10.0,
            ),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 2.5, color: Colors.black45),
              ),
            ),
            child: Text(
              item['name'],
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 480 / 480,
                child: SvgPicture.asset(
                  'assets/images/star-full.svg',
                  color: Color(0xFFFFCC00),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  item['stargazers']['totalCount'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
