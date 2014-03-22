class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildWindow

    center = DDHotKeyCenter.sharedHotKeyCenter
    center.registerHotKeyWithKeyCode(KVK_ANSI_H, modifierFlags: NSCommandKeyMask | NSAlternateKeyMask,
    target: self, action: 'handleHotkey:', object: nil)
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
  end

  def handleHotkey(event)
    @mainWindow.isVisible ? @mainWindow.orderOut(false) : @mainWindow.makeKeyAndOrderFront(self)
  end
end