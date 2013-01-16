# MacKeyboard Roadmap (to the FamiliarKeyboard family)

MacKeyboard remaps keyboards to make Windows computers feel more like OS X. The idea's to have it *really* feel like a Mac - as many of the standard keyboard shortcuts as possible should be remapped so that the user doesn't have to fiddle around trying to what keys to press while dragging to make an alias, or how to quit program.

And what about Windows users branching out into the Mac world? They need WindowsKeyboard. 

And don't forget the version for Mac users using Linux, or Linux users on Windows. For a single layout in a single language (combinations of (Linux distros + 2) taken two at a time) localizations!

## So far

There's just MacKeyboard, optimized for a small keyboard (this all started on multibooting netbook). The basic setup, which will already save your cat from overhearing words it shouldn't know

- The **keys *labeled "Alt"* are now *actually Ctrl*** (so that Windows' primary modifier key is next to the spacebar, like the *Mac Command* key)

- The **keys *labeled Windows and Contextual Menu* are now *actually Alt***. They also take the role of the *Mac Option* key in supported shortcuts, and are the modifier for *"Alt"-Tab*.

- One of the **keys *labeled Ctrl* acts as the *Mac Control* key** for certain Mac-y shortcuts (the rest of the time, both are in fact Ctrl - by design, so that when you do remember "Oh it's Windows" and hit Ctrl-S it really does save)

Supported shortcuts (MacKeyboard = Windows equivalent | Mac equivalent)

- Ctrl + Click = Right Click (for *one* of the Ctrl keys)

- (Shift +) Win/Menu + Left/Right = (Shift +) Ctrl + Left/Right | (Shift +) Cmd + Left/Right

- (Shift +) Ctrl + Up/Down = (Shift +) Ctrl + Home/End | (Shift +) Cmd + Up/Down

Semi-supported shortcuts (MacKeyboard = Windows equivalent | Mac equivalent)

- Win + Tab = Alt + Tab | Cmd + Tab

- Win + \` = Shift + Alt + Tab | Cmd + \`

- (Shift +) Ctrl + Left/Right = (Shift +) Home/End | (Shift +) Cmd + Left/Right

## To Do

MacKeyboard should support as many of relevant the Mac shortcuts as possible (limitation: as it's designed now, Win/Menu does double-duty as cmd and opt - cmd+opt may have to be win+menu. Apple's kindly provided a list of all the [OS X keyboard shortcuts](http://support.apple.com/kb/HT1343).

Microsoft has provided a list of the [Windows keyboard shortcuts](http://support.microsoft.com/kb/126449), though presumably they weren't kind about it.

(Based on cursory search results) Linux users presume each other experienced enough to not need a keyboard shortcuts cheat sheet, and if asked to write one are expected to say "Alt-F2 'HelloWorld' :)"
