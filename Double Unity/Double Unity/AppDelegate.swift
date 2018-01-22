//
//  AppDelegate.swift
//  Double Unity
//
//  Created by Vladislav Chartanovich on 20.01.18.
//  Copyright © 2018 Vladislav Chartanovich. Mail to: vmchar@outlook.com. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification)
    {
        openUnity()
        NSApplication.shared.terminate(self)
    }
    
    private func openUnity() {
        
        guard let pathToShellScript = Bundle.main.path(forResource: "UnityScript",ofType:"command") else {
            print("Unable to locate BuildScript.command")
            return
        }
        
        let process = Process()
        process.launchPath = pathToShellScript
        process.arguments = []
        let pipe = Pipe()
        process.standardOutput = pipe
        process.launch()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        if let string = String(data: data, encoding: String.Encoding.utf8) {
            print("unity launch says: ")
            print(string)
        }
        
        NSApplication.shared.terminate(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

