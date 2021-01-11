# Flutter Workshop - Introduction to Mobile Developement with flutter

In this workshop, we will create a simple mobile app written in Dart with the flutter SDK.
Flutter SDK is a tool created by Google that lets us create apps for Android, iOS, Linux, Mac, Windows, Web Platforms and Google Fuchsia from a single code base, that makes it easier for us to develop multi-platform apps easily.

For this workshop, we strongly recommand you to use Android Studio with the integrated Emulator on android API 28.

## Step 0: Setup

Before starting, you must complete the steps defined in the SETUP.md file in order for this workshop to go smoothly [SETUP.md](./SETUP.md).

## Step 0.5: Display a task to do

In the page1.dart file, you can see a [stateless widget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html) class called TodoList, inside there is a member function called _buildTodo taking a Todo (class in the Todotype.dart file), try to use it to display the _firstTodo task!

Here's what it should look like once done:

<p align="center">
    <img src='https://cdn.discordapp.com/attachments/797515635969490994/797515646865768488/unknown.png' alt=''>
</p>

## Step 1: Display an actual list

Now that you know how to display one task, why not display an actual list ?
Try displaying the _toddItems list of tasks by editing the _buildToDoList member function and putting it to use.

Here's what it should look like once done:

<p align="center">
    <img src='https://cdn.discordapp.com/attachments/797515635969490994/798306880853770351/unknown.png' alt=''>
</p>

> You may want to use [this](https://api.flutter.dev/flutter/widgets/ListView-class.html)

## Step 2: Fetch the list from an Database

Congratulations ! You now know how to display a todo list !
But wouldn't it be better if we fetched it from an database ?

You can see that we already made the database for you, you just have to use it using the member functions of the db object in the TodoList widget !

Edit the TodoList widget in order to fetch the tasks using the getItem function of the database db and passing the result to the _buildToDoList member function.
/!\ As you can see in the Storage.dart file, the getItem function is asynchronous, you may really want to look at the hint below /!\

Here's what it should look like once done:

<p align="center">
    <img src='https://cdn.discordapp.com/attachments/797515635969490994/798306581438922762/unknown.png' alt=''>
</p>

> Here's a little [hint](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html)

## Step 2.5: Show your users that their data is loading

When you are waiting for data from an asynchronous function, it's better to clearly show to your users that something is loading.

Try to do so using for example a circular loading indicator.

It should look like this when data is loading:

<p align="center">
    <img src='https://cdn.discordapp.com/attachments/615992087468572686/790072087754440714/unknown.png' alt=''>
</p>

## Step 3: Add a button to create tasks

Now we can properly display a Todo list, but we can't add tasks yet, try adding a [button](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html) that leads to a page where you can create a new task.

Here's a simple example of what it could look like:

<p align="center">
    <img src='https://cdn.discordapp.com/attachments/797515635969490994/798306073308037220/unknown.png' alt=''>
    <img src='https://cdn.discordapp.com/attachments/797515635969490994/798241613658193980/unknown.png' alt=''>
</p>

## Step 4: Take a snap! (and display it)

/!\ For this step, be sure that you have edited your AndroidManifest.xml as stated in the SETUP.md file /!\

In this step we are done with the first page! Open the page2.dart file.

You can see a [stateful widget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html) called ImagePage

If you run the app and go to this page, you will see two buttons, when pressed, the "From camera" button will call the _getImageFromCamera method, and the "From gallery" button will call the _getImageFromGallery method.
You have to write those two methos (they are very simillar), but you also have to display the image you just picked !

Edit the _ImagePageState class to your heart's content in order for it to work !

> You may want to add another element to the ListView's child array to display the image
> For this step, we will use the [image_picker package](https://pub.dev/packages/image_picker)

When an image is selected, your screen should look like this.

<p align="center">
    <img src='https://cdn.discordapp.com/attachments/615992087468572686/790075733367324704/unknown.png' alt=''>
</p>

## Bonus

Congratulations on finishing the workshop !
Although you have finished the workshop, here's a little list of some bonuses you could add to your project

- [Build an APK](https://flutter.dev/docs/deployment/android) of your app in order to test it on your phone
- Adding a [pull to refresh](https://api.flutter.dev/flutter/material/RefreshIndicator-class.html) feature to your todo list
- Adding a way to toggle DONE/TO DO to your TodoList, for example toggling by clicking on the task status in the list.
- Adding a Update/Delete task functionnality.
- Changing the appearance of tasks in the todo list
- Adding new pages to the BottomNavigationBar in the main.dart file
- Fetch an image from the internet (a link to an image for example) and display it
- Keep the info while changing pages, with a [provider](https://pub.dev/packages/provider) for example.
- Adding a dark theme to your app
- Add a [google maps integration](https://pub.dev/packages/flutter_google_maps) (may be time consuming)