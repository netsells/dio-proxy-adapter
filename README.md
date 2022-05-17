# dio_proxy_adapter

Simple proxy configuration for [Dio](https://pub.dev/packages/dio).

Can be used with proxy applications like [Charles](http://charlesproxy.com) or [Proxyman](http://proxyman.io).

## Getting started

*Please follow the setup instructions for your proxy server of choice. For Flutter apps, [Charles](http://charlesproxy.com) and [Proxyman](http://proxyman.io) work great with this package.*

Add the following dependencies to your `pubspec.yaml`:

```yaml
dependencies:
    dio: ^4.0.6
    dio_proxy_adapter: ^1.0.0
```

## Usage

Simply add the `useProxy` extension method to your Dio instance:

```dart
final dio = Dio();

// Configure Dio here

dio.useProxy('localhost:8888');
```

We recommend passing your proxy URL to your application as an environment variable using `--dart-define`. Then you can configure your proxy like this:

```dart
dio.useProxy(bool.hasEnvironment('PROXY_URL') ? String.fromEnvironment('PROXY_URL') : null);