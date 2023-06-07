//
//  LoginView.swift
//  MobileStudio
//
//  Created by 詹乐顺 on 2023/6/4.
//

import SwiftUI

struct UmLoginView: View {
    
    
    @State var loginName: String = ""
    @State var loginPwd: String = ""
    @State var isChoosed: Bool = false
    
    @AppStorage("isGuide") var isGuide: Bool = false
    @AppStorage("isUmLogin") var isUmLogin: Bool = false

    
    var body: some View {
        
        VStack{

            Text("欢迎使用Mobile Studio")
                .font(.title)
                .fontWeight(.medium)
                .padding()
                .padding(.top, 50)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            
            HStack {
                
                Text("企业账号登录")
                    .font(.title2)

            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            

            /// login
            TextField("请输入UM账号", text: $loginName)
                .padding()
                .font(.headline)
                .background(Color.gray.opacity(0.1).cornerRadius(10))
            
            SecureField("请输入UM密码", text: $loginPwd)
                .padding()
                .font(.headline)
                .background(Color.gray.opacity(0.1).cornerRadius(10))
            
            
            Button {
                
                isUmLogin = true

            } label: {
                Text("登录")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                    .padding(.top, 10)
            }

 
            
            
            /// agreementForUsage
            HStack(alignment: .center, spacing: 0) {
                
                Button {
                    isChoosed.toggle()
                } label: {
                    Image(systemName: isChoosed ? "checkmark.square.fill" : "square")
                        .foregroundColor(isChoosed ? Color.accentColor : .gray)
                        .padding(.trailing, 3)
                    
                }

                
                Text("我已阅读并同意")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                
                
                Text("《服务协议》")
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
                    .onTapGesture(perform: {
                        print("《服务协议》..")
                    })
                
                Text("和")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                
                Text("《隐私政策》")
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
                    .onTapGesture(perform: {
                        print("《隐私政策》..")
                    })

                
            }
            .padding(.top, 5)
            .multilineTextAlignment(.leading)
            
            /// forgetPwd
            Text("忘记密码？")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                .onTapGesture {
                    print("忘记密码..")
                }
            
            Spacer()
            
            /// moreLoginType
            VStack {
                
                Text("更多登录方式")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                
                Divider()
                
                HStack{
                    Button {
                        
                    } label: {
                        HStack {
                            Image("Wx_Logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            
                            Text("微信")
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                        }
                        .padding()
                        

                    }
                    

                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "apple.logo")
                                .foregroundColor(.black)
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            
                            Text("Apple")
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                        }
                        .padding()
                    }
                }
                
            }
            
            
        }
        .padding()
        
    }
    
    
}

struct UmLoginView_Previews: PreviewProvider {
    static var previews: some View {
        UmLoginView()
    }
}

// MARK: Functions

extension UmLoginView {
    
    
    
    
}

