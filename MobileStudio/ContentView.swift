//
//  ContentView.swift
//  MobileStudio
//
//  Created by 詹乐顺 on 2023/6/3.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isGuide") var isGuide: Bool = false
    
    @AppStorage("isUmLogin") var isUmLogin: Bool = false
    
    @AppStorage("isPhoneLogin") var isPhoneLogin: Bool = false
    
    
    @State private var backgroundColor: Color = Color.white
    
    var body: some View {

        ZStack {
            backgroundColor.ignoresSafeArea()
            
            if isPhoneLogin {
                 ChatView()
                
            } else if isUmLogin {
                PhoneLoginView()
                
            } else if isGuide {
                UmLoginView()
            
            }else {
                GuideView()
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
