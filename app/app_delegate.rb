class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildWindow

    @hot_key_field.hotKey = self.registerHotKey(self.userKeyCode, self.userModifierFlags)
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']

    size = @mainWindow.frame.size
    field_size = [150, 30]
    @hot_key_field = DDHotKeyTextField.alloc.initWithFrame([[(size.width / 2.0) - (field_size[0] / 2.0), (size.height / 2.0) - (field_size[1] / 2.0)], field_size])
    @hot_key_field.delegate = self

    @mainWindow.contentView.addSubview(@hot_key_field)
  end

  def handleHotkey(event)
    @mainWindow.isVisible ? @mainWindow.orderOut(false) : @mainWindow.makeKeyAndOrderFront(self)
  end

  def controlTextDidEndEditing(notification)
    self.registerHotKey(@hot_key_field.hotKey.keyCode, @hot_key_field.hotKey.modifierFlags) if @hot_key_field.hotKey
  end

  def registerHotKey(keyCode, modifierFlags)
    NSUserDefaults.standardUserDefaults['keyCode'] = keyCode
    NSUserDefaults.standardUserDefaults['modifierFlags'] = modifierFlags

    center = DDHotKeyCenter.sharedHotKeyCenter
    center.unregisterAllHotKeys
    center.registerHotKeyWithKeyCode(keyCode, modifierFlags: modifierFlags, target: self, action: 'handleHotkey:', object: nil)
  end

  def userKeyCode
    NSUserDefaults.standardUserDefaults['keyCode'] || KVK_ANSI_H
  end

  def userModifierFlags
    NSUserDefaults.standardUserDefaults['modifierFlags'] || (NSCommandKeyMask | NSAlternateKeyMask)
  end
end