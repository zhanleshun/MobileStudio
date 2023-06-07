//
//  ChatView.swift
//  MobileStudio
//
//  Created by 詹乐顺 on 2023/6/7.
//

import SwiftUI

struct ChatView: View {
    
    @AppStorage("isGuide") var isGuide: Bool = false

    @AppStorage("isUmLogin") var isUmLogin: Bool = false
    
    @AppStorage("isPhoneLogin") var isPhoneLogin: Bool = false
    
    var body: some View {
        
        Button {
            isPhoneLogin = false
            isUmLogin = false 
            isGuide = true
        } label: {
            Text("Back Guide")
        }

    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
