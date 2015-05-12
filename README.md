# HotkeyDemo

A RubyMotion OS X app that takes the default OS X skeleton app, makes it run in the background and hides the main window, and then uses DDHotKey to implement a global hotkey (Cmd+Alt+H) to hide and show the app window.

Branches:

* master - default app for hotkey handling functionality (http://kickcode.com/blog/2014/03/22/global-hotkeys-for-mac-os-x-apps-in-rubymotion.html)
* custom_combo - adding the ability for the user to specify their own key combo to use as the global hotkey, saved between app sessions (http://kickcode.com/blog/2015/05/13/custom-user-hotkey-combo.html)

## Requirements

* RubyMotion 2.0+
* RubyGems

## Setup

* git clone https://github.com/kickcode/HotkeyDemo.git && cd HotkeyDemo
* git checkout <branch for tutorial>
* bundle install
* rake

## Contributors

* Elliott Draper

## License

Copyright 2015 Elliott Draper <el@kickcode.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
