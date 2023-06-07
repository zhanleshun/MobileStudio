//
//  PhoneLoginView.swift
//  MobileStudio
//
//  Created by 詹乐顺 on 2023/6/6.
//

import SwiftUI

struct PhoneLoginView: View {
    
    @State var phoneNumber: String = ""
    @State var validCode: String = ""
    @State var countDown: Int = 60
    
    @AppStorage("isPhoneLogin") var isPhoneLogin: Bool = false
    
    
    var body: some View {
        
        VStack{
            
            Text("欢迎使用Mobile Studio")
                .font(.title)
                .fontWeight(.medium)
                .padding()
                .padding(.top, 50)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            HStack {
                Image(systemName: "iphone.rear.camera")
                    .font(.title)
                
                Text("手机验证")
                    .font(.title2)
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            TextField("\(phoneNumber)", text: $phoneNumber)
                .padding()
                .font(.headline)
                .background(Color.gray.opacity(0.1).cornerRadius(10))
            
            HStack {
                TextField("验证码", text: $validCode)
                    .padding()
                    .font(.headline)
                    .background(Color.gray.opacity(0.1).cornerRadius(10))
                
                Spacer()
                
                Button(action: {
                    countDown = 60
                }, label: {
                    if countDown != 0 {
                        Text("\(countDown)秒")
                            .foregroundColor(.white)
                            //这里直接将Timer作为发送者every是每隔一秒
                            .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect(), perform: { _ in
                                //不等于零每隔一秒减一
                                if (self.countDown != 0) {
                                    self.countDown -= 1
                                }
                            })
                            .padding()
                            .cornerRadius(10)
                            .background(Color.accentColor.opacity(0.6).cornerRadius(10))

                    } else {
                        Text("获取验证码")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .padding()
                            .cornerRadius(10)
                            .background(Color.accentColor.opacity(0.6).cornerRadius(10))
                    }
                    
                })
                
                Spacer()
            }
            .padding(.top, 5)
            
                
            
            
            Text("验证")
                .padding()
                .frame(maxWidth: .infinity)
                .font(.headline)
                .foregroundColor(.white)
                .background(Color.accentColor)
                .cornerRadius(10)
                .padding(.top, 10)
                .onTapGesture {
                    isPhoneLogin = true
                }
            
            Spacer()
        }
        .padding()
        
        
    }
}

struct PhoneLoginView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneLoginView()
    }
}
