# aboutme

My curriculum vitae app. Clone this app to checkout my programming skills.

## GraphQL

This app uses [GitHub API](https://developer.github.com/v4/guides/) to get all the repositories. You need to generate a GitHub personal access token.
I am using GitHub API v4, the v4 API are using GraphQL instead of REST API. Check out [GraphQL](https://graphql.org/) on how to queries (GET in REST API) and mutations(POST, PUT, DELETE in REST API) work.

## Getting Started

```
git clone https://github.com/aibrahim3546/aboutme.git
cd aboutme
```

Create a config file
/lib/config.dart
```
final String accessToken = '<GitHub Personal Access Token Here>';
```

Run the app
```
flutter run
```


### iOS issues
If you hit this error when running on iOS
```
Failed to build iOS app
Error output from Xcode build:
↳
    ** BUILD FAILED **

Xcode's output:
↳
    === BUILD TARGET Runner OF PROJECT Runner WITH CONFIGURATION Debug ===
		...
  	fatal error: 'Flutter/Flutter.h' file not found
    #import <Flutter/Flutter.h>
            ^~~~~~~~~~~~~~~~~~~
    1 error generated.
Could not build the application for the simulator.
```

You can solve this by following this solution on [stackoverflow](https://stackoverflow.com/questions/50671286/flutter-h-not-found-error)

