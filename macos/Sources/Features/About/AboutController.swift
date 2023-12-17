import Foundation
import Cocoa
import SwiftUI

class AboutController: NSWindowController, NSWindowDelegate {
    static let shared: AboutController = AboutController()
    
    override var windowNibName: NSNib.Name? { "About" }
    
    override func windowDidLoad() {
        guard let window = window else { return }
        window.center()
        window.contentView = NSHostingView(rootView: AboutView())
    }
    
    // MARK: - Functions
    
    func show() {
        guard let window = window else { return }
        window.makeKeyAndOrderFront(nil)
    }
    
    //MARK: - First Responder
    
    @IBAction func close(_ sender: Any) {
        self.window?.performClose(sender)
    }
    
    @IBAction func closeWindow(_ sender: Any) {
        self.window?.performClose(sender)
    }
    
    // This is called when "escape" is pressed.
    @objc func cancel(_ sender: Any?) {
        close()
    }
}