//
//  LoginView.swift
//  MobileStudio
//
//  Created by 詹乐顺 on 2023/6/4.
//

import SwiftUI

struct LoginView: View {
    
    
    @State var loginName: String = ""
    @State var loginPwd: String = ""
    @State var isChoosed: Bool = false
    
    @AppStorage("isGuide") var isGuide: Bool = false
    
    var body: some View {
        
        VStack{
//            
//            Rectangle()
//                .frame(maxHeight: 250)
//                .foregroundColor(Color.white)
                
            
            Text("欢迎使用Mobile Studio")
                .font(.title)
                .fontWeight(.medium)
                .padding()
                .padding(.top, 50)
                .frame(maxWidth: .infinity, alignment: .leading)
//                .background(Color.blue)
                
            
            HStack {
                Text("企业账号登录")
                    .font(.title2)

            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.orange)
            

            
            TextField("请输入UM账号", text: $loginName)
                .padding()
                .font(.headline)
                .background(Color.gray.opacity(0.1).cornerRadius(10))
            
            SecureField("请输入UM密码", text: $loginPwd)
                .padding()
                .font(.headline)
                .background(Color.gray.opacity(0.1).cornerRadius(10))
            
            HStack(alignment: .center) {
//            Toggle(isOn: $isChoosed){
//
//            }
//            .labelsHidden()
//            .pickerStyle(.inline)
                
                    
                Picker("选择类型", selection: $isChoosed) {
                }
                .pickerStyle(InlinePickerStyle())
                .labelsHidden()
                
                let a = Text("我已阅读并同意")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                
                let b = Text("《服务协议》")
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
     
                let c = Text("和")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                
                let d = Text("《隐私政策》")
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
                
                Text("\(a)\(b)\(c)\(d)")

                
            }
            .padding(.top, 5)
//            .background(Color.yellow)
            .multilineTextAlignment(.leading)
            
            Text("登录")
                .padding()
                .frame(maxWidth: .infinity)
                .font(.headline)
                .foregroundColor(.white)
                .background(Color.accentColor)
                .cornerRadius(10)
                .onTapGesture {
                    print("login in.. ")
                    isGuide = false
                }
            
            Text("忘记密码？")
                .font(.system(size: 14))
                .frame(maxWidth: .infinity)
                .padding()
//                .background(Color.blue)
                .onTapGesture {
                    print("忘记密码..")
                }
            
            Spacer()
            
            VStack {
                
                Text("更多登录方式")
                    .foregroundColor(.gray)
                
                HStack{
                    Label("SSO登录", systemImage: "key.viewfinder")
                        .font(.body)
                        .padding()
                        .onTapGesture {
                            print("SSO..")
                        }
                    
                    Label("微信", systemImage: "message")
                        .font(.body)
                        .padding()
                        .onTapGesture {
                            print("微信..")
                        }
                }
                
            }
            
            
        }
        .padding()
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
