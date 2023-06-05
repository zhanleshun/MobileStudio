//
//  ContentView.swift
//  MobileStudio
//
//  Created by 詹乐顺 on 2023/6/3.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isLogin") var isLogin: Bool = false
    
    @AppStorage("isGuide") var isGuide: Bool = false
    
//    @State private var backgroundColor: Color = Color.init("Color_Green_Light_4")
    @State private var backgroundColor: Color = Color.white
    
    var body: some View {

        ZStack {
            backgroundColor.ignoresSafeArea()
            
            if isLogin {
                // ChatView
                
            }else if isGuide {
                 LoginView()
            
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
