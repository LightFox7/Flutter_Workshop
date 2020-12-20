# Flutter Workshop - Learn the basics of Mobile Developement with flutter

In this workshop, we will create a simple mobile app written in Dart with the flutter SDK.
Flutter SDK is a tool created by Google that lets us create apps for Android, iOS, Linux, Mac, Windows, Web Platforms ans Google Fuchsia (google's OS) from a single code base, that makes it easier for us to make multi-platform apps easily.

For this workshop, we strongly recommand you to use Android Studio with the integrated Emulator 

## Step 0: Setup

Before starting, you must complete the steps defined in the SETUP.md file in order for this workshop to go smoothly [SETUP.md](./SETUP.md).

## Step 0.5: Display a task to do

In the page.dart file, you can see a [stateless widget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html) class called TodoList, inside there is a member function called _buildTodo taking a Todo object (class defined in the same file), try to use it to display the _firstTodo task!

Here's what it should look like once done:

<p align="center">
    <img src='https://cdn.discordapp.com/attachments/615992087468572686/790064988286746645/unknown.png' alt=''>
</p>

## Step 1: Display an actual list

Now that you know how to display one task, why not display an actual list ?
Try displaying the _toddItems list of tasks by editing the _buildToDoList function and putting it to good use.

Here's what it should look like once done:

<p align="center">https://cdn.discordapp.com/attachments/615992087468572686/790064988286746645/unknown.png
    <img src='https://cdn.discordapp.com/attachments/615992087468572686/790064773437194270/unknown.png' alt=''>
</p>

> You may want to use [this](https://api.flutter.dev/flutter/widgets/ListView-class.html)

## Step 2: Fetch the list from the internet

Congratulations ! You now know how to display a todo list !
But wouldn't it be better if we fetched it from an api ?

Edit the TodoList widget builder in order to fetch the tasks using the _getTodoList function.

Here's what it should look like once done:

<p align="center">
    <img src='https://cdn.discordapp.com/attachments/615992087468572686/790061447870283816/unknown.png' alt=''>
</p>

> Here's a little [hint](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html)