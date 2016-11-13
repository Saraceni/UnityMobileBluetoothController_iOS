Bluetooth Mobile Controller Unity
=======================

Add Bluetooth Mobile Controller based on iCade support to your Unity iOS project.


Usage
-----
In your Xcode project, add the files that begin with iCade to the Classes folder. Open AppController.mm from this repo, and copy/paste the lines of code to the correct places in the Unity generated AppController.mm of your project.

In MonoDevelop, simply use Input.GetKeyDown(KeyCode.JoystickButton#)). The corresponding button numbers are shown in bluetooth_controller.jpg.

** IMPORTANT! **
When you press a key on the controller unity will send an event of KeyDown instantly followed by an KeyUp event so you can't rely on Input.GetKeyUp
when using this library. Use Input.GetKeyDown(KeyCode.JoystickButton#) using the # corresponding to press or release of the key as shown in bluetooth_controller.jpg.

This prject is a modified version of mattfox12's iCade-Unity https://github.com/mattfox12/iCade-Unity 
to work with the bluetooth mobile controller who comes with VR Box https://www.youtube.com/watch?v=SJ5S4Sk1lVM

----

iCadeReaderView.h, iCadeReaderView.m and iCadeState.h slightly modified (retains/releases delegate) from https://github.com/scarnie/iCade-iOS

