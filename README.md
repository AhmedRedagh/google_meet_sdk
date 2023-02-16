[![Pub](https://img.shields.io/pub/v/google_meet_sdk.svg)](https://pub.dartlang.org/packages/google_meet_sdk)

# google_meet_sdk

A flutter package which will help you to add add google meet in your projects and also help you to create, modify and delete calender events and notify the attendee


Created by Shivam Mishra [@shivbo96](https://github.com/shivbo96)

# Usage

## Use this package as a library

1. Depend on it Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  google_meet_sdk: <VERSION>
```

2. Install it You can install packages from the command line:
   with Flutter:

```
$ flutter packages get
```

Alternatively, your editor might support flutter packages get. Check the docs for your editor to
learn more.

3. Import it Now in your Dart code, you can use:

```dart
import 'package:google_meet_sdk/google_meet_sdk.dart';
```


```add your clientId in android manifest and in iOS info.plist```


```In Android```
```xml
<meta-data android:name="clientId" android:value="12234" />
```
```In iOS```
```xml
<key>clientId</key>
<string> 12234 </string>
```

## Note:
```
1. enable google authentication from firebase
2. enable Google Calendar API from gcp console and select thesr scopes ( CalendarApi.calendarScope ,CalendarApi.calendarEventsScope  )
3. get your clientId (required) and serverClientId (optional) from gcp console

```

```first login via google```
```dart
ElevatedButton(
          key: UniqueKey(),
          onPressed: () {
            GoogleAuthentication.signInWithGoogle(context: context)
                .then((value) {
              if (value != null) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
                    ));
              } else {
                debugPrint('something went wrong while login...');
              }
            });
          },
          child: const Text("click"),
        )

```

```to insert/ add google meet and added event in your calender```
```dart
           var result = await CalendarClient() .insert(title: currentTitle??"",
             description: currentDesc ?? '',
             location: currentLocation??"",
             attendeeEmailList: attendeeEmails,
             shouldNotifyAttendees: shouldNofityAttendees,
             hasConferenceSupport: hasConferenceSupport,
             startTime: DateTime.fromMillisecondsSinceEpoch(startTimeInEpoch),
             endTime: DateTime.fromMillisecondsSinceEpoch(endTimeInEpoch)
            );

```

```to modify/update google meet and added event in your calender```
```dart
           var result = await CalendarClient().modify(title: currentTitle??"",
             description: currentDesc ?? '',
             location: currentLocation??"",
             attendeeEmailList: attendeeEmails,
             shouldNotifyAttendees: shouldNofityAttendees,
             hasConferenceSupport: hasConferenceSupport,
             startTime: DateTime.fromMillisecondsSinceEpoch(startTimeInEpoch),
             endTime: DateTime.fromMillisecondsSinceEpoch(endTimeInEpoch)
            );

```


```to delete/remove google meet and added event in your calender```
```dart
           var result =  await CalendarClient().delete(eventId!, true)

```

### for example refer to [example/lib/main.dart](https://github.com/shivbo96/google_meet_sdk)
## screenshots

<img src="https://raw.githubusercontent.com/shivbo96/platform_metadata/main/images/ios.png" width="250" height="480">
<img src="https://raw.githubusercontent.com/shivbo96/platform_metadata/main/images/android.png" width="250" height="480">


## More information

[Pub package](https://pub.dartlang.org/packages/otp_pin_field)
[Flutter documentation](https://flutter.io/).
