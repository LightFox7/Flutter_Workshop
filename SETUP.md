# Setup for the flutter worshop

For this workshop, we strongly recommand using windows with android studio in order for everyone to be on the same system.
However, if flutter works fine on whatever system you use, feel free to use it.

## Step 1: Install Android Studio and flutter

You need the follow the steps in [this tutorial](https://flutter.dev/docs/get-started/editor).

Then you will create a flutter app, as described in [this tutorial](https://flutter.dev/docs/get-started/test-drive)

For the emulator, if you haven't already one, install the Google Pixel 2 emulator with android 9.0 (API 28) in the android studio emulator section
Test that the app you created runs fine, if so, go to the next step.

## Step 2: Dependencies and permissions

For this workshop, we'll use the [http](https://pub.dev/packages/http) and [image_picker](https://pub.dev/packages/image_picker) packages.

The [image_picker](https://pub.dev/packages/image_picker) package will need to access the gallery and camera of your phone (or emulator in our case) and the [http](https://pub.dev/packages/http) will need to use internet access, so we need to add those three lines to our AndroidManifest.xml file (found in the android/app/src/main folder of your flutter project):

```xml
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.FLASHLIGHT" />
<uses-permission android:name="android.permission.INTERNET"/>
```

Once added, your AndroidManifest.xml file should look like this:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.flutter_workshop_correction">
    <uses-permission android:name="android.permission.CAMERA" />
    <uses-permission android:name="android.permission.FLASHLIGHT" />
    <uses-permission android:name="android.permission.INTERNET"/>
    <application
        android:name="io.flutter.app.FlutterApplication"
        android:label="flutter_workshop_correction"
        android:icon="@mipmap/ic_launcher">
        <activity
            android:name=".MainActivity"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">>
            <meta-data
              android:name="io.flutter.embedding.android.NormalTheme"
              android:resource="@style/NormalTheme"
              />
            <meta-data
              android:name="io.flutter.embedding.android.SplashScreenDrawable"
              android:resource="@drawable/launch_background"
              />
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        <meta-data
            android:name="flutterEmbedding"
            android:value="2" />
    </application>
</manifest>
```

After that, you need to install the dependencies, [http](https://pub.dev/packages/http) and [image_picker](https://pub.dev/packages/image_picker).
In order to do that, go to the pubspec.yaml file and add the dependencies.

Once done, your dependencies section of the file should look like that.

```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.0
  http: ^0.12.2
  image_picker: ^0.6.7+17
```

You can see a "flutter commands" section at the top of your editor, click on "Pub get" to get the dependencies, otherwise you can just type "flutter pub get" in the terminal.

## Step 3: Add the workshop's files

You just need to replace your lib folder with the one provided in this repository for this step.

Now try to run your app once again, if you completed your installation properly, you should land on a screen that looks like this

<p align="center">
    <img src='https://cdn.discordapp.com/attachments/615992087468572686/790094587271577620/unknown.png' alt=''>
</p>

You are now ready to start the workshop ! Good luck !