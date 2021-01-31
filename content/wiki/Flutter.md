+++
title = "Making Custom Launchers with Flutter"
date = 2019-02-03T02:23:55-05:00
draft = false
desc = ""
+++

_Image version of guide available [here](https://i.imgur.com/4ovJ5EJ.png)_

Want to take your rice to the next level?
Want to have ultra-specific functionality?
Want to have an integrated homescreen
specifically tailored to you? Write your own!
This guide will show you how.

## What is flutter?

Flutter is a framework that allows for quick
and easy app development across all platforms.
It might make sense to develop the launcher
natively, but for reasons stated below,
I think that using flutter is the best option for
quick and personal-use only apps.

## Why use flutter?

Three reasons: speed of development, speed of
the application itself and great documentation.
There are videos online that intuitively explain
and inform developers about the specific
graphical and back-end components of te framework and how the framework
itself functions. The hot restart and reload functionality allows for quick,
iterative development and the production variant of the same code runs
very quickly.

## Getting started: use flutter?

To begin, you're gonna need to setup a flutter development enviroment on
your desktop. There are plenty of guides online for this. If you're new to
programming, I would reccomend just playing around and writing a basic
application that does something simple (try recreating the graphical elements
of an app you use or create a nice looking clock app). Once you're familiar
with flutter, then you can begin by creating a new app and modiflying the
'AndroidManifest.xml' file like so:

![AndroidManifest.xml](https://i.imgur.com/vj4kCWn.png)

## Dealing with apps:

To get a list of the installed applications that reside on your device, use the
device_apps package. Like any other flutter library, you can add it into
your project's pubspec.yaml file.

This package allows the user to get a list of all installed applications,
their icons, and provides a way to launch said applications.
The icons are determined by the system icon setting. In other words,
their look can be changed by accessing the system settings.
(only confirmed to work on OnePlus devices).
Refer to the documentation of the package if you have any questions
regarding implementation.

## How do I do \*?

If you want to do something that interfaces with the web, use the dart:html
package. If it's anything more complex than that, use a library.
I'm not gonna list everything here but there is a fairly comprehensive
list of libraries that you can find on github called 'awesome-flutter'.
There you can find libraries for specific layouts, maps, charts, API's and
everything else in between.

Remember that this is a framework intended for professional use. There
are no arbitrary limitations. There are no explicitly stated constraints.
Nearly everything is possible, the only true limit is the processing
capability of your device and how well you can program.

## Where can I get help?

Generic tech support forums like Stack Overflow are good for learning about Flutter. However, if you need to talk to someone in real time, you can ask Kali\_ in [the homescreens chatroom](/irc) -- he loves to help newcomers!
