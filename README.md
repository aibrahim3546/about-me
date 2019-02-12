# aboutme

My curriculum vitae app. Clone this app to checkout my programming skills.

## GraphQL

This app uses [GitHub API](https://developer.github.com/v4/guides/) to get all the repositories. You need to generate a GitHub personal access token in order to get the all your repos.

This app are using GitHub API v4, the v4 API are using GraphQL instead of usual REST API. Check out [GraphQL](https://graphql.org/) on how queries and mutations work.

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

**Side note: I only tried this app on ios simulator.**

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

