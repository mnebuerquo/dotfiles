# Set Keyboard Shortcut to Lock Your Mac

[From apple.stackexchange:](https://apple.stackexchange.com/a/123839/182701)

1. Open System Preferences.
1. Select Security & Privacy.
1. Select General.
1. Be sure Require password [immediately] after sleep or screen saver begins is selected.
1. Go to your applications folder.
1. Open Automator.
1. Select Services on the screen that appears.
1. At the top of the new Service's actions, in the Service receives drop-down, select no input from the options. Make sure that any application is selected in the second drop-down.
1. Add the Start Screensaver action (in the Utilities group of actions) to the Service by dragging it to the right.
1. Save the Service (Automator does not ask you where to save it, just to name it Logout for example).
1. Next, open System Preferences again and select the Keyboard preference pane. Select the Shortcuts tab at the top, then the Services group on the left.
1. The service you created should be near the bottom of the list of Services under the General disclosure triangle.
1. Double-click on the right side of the entry for the Service you created and assign a keyboard shortcut.
1. I chose Command-Shift-L for my shortcut.
1. Exit the keyboard preference pane and give it a try.

