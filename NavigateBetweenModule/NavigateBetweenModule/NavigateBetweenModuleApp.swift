//
//  NavigateBetweenModuleApp.swift
//  NavigateBetweenModule
//
//  Created by septe habudin on 24/12/22.
//

import SwiftUI

@main
struct NavigateBetweenModuleApp: App {

    // setup font jika ada menggunakan font dari framwork/modul
    init() {
        UIFont.loadFonts()
      }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// mendaftarkan fonts yg di modul
/// https://www.dicoding.com/academies/209/tutorials/11767?from=11762
extension UIFont {
 private static func registerFont(withName name: String, fileExtension: String) {
   let frameworkBundle = Bundle(identifier: "septehabudin.Common")!
   let pathForResourceString = frameworkBundle.path(forResource: name, ofType: fileExtension)!
   let fontData = NSData(contentsOfFile: pathForResourceString)
   let dataProvider = CGDataProvider(data: fontData!)
   let fontRef = CGFont(dataProvider!)
   var errorRef: Unmanaged<CFError>? = nil

   if (CTFontManagerRegisterGraphicsFont(fontRef!, &errorRef) == false) {
     print("Error registering font")
   }
 }

 public static func loadFonts() {
   registerFont(withName: "SunnyspellsRegular", fileExtension: "otf")
 }
}
