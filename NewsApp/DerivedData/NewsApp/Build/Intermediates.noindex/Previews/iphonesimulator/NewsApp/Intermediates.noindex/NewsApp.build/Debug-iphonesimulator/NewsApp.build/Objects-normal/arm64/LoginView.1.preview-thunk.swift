@_private(sourceFile: "LoginView.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension LoginView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/swiftUI-study/NewsApp/NewsApp/views/pages/LoginView.swift", line: 23)
        ZStack{
            //顶部背景
            Image(__designTimeString("#15148.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "login_bg"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .offset(y: -screenHeight / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0]", fallback: 3) - __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[1]", fallback: 50))
                .scaleEffect(CGSize(width: __designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[0].modifier[4].arg[0].value.arg[0].value", fallback: 1.2), height: __designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[0].modifier[4].arg[0].value.arg[1].value", fallback: 1.2)))
            
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [getColor(red: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[0].value", fallback: 149), green: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[1].value", fallback: 117), blue: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[2].value", fallback: 214)), getColor(red: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[0].value", fallback: 99), green: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[1].value", fallback: 117), blue: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[2].value", fallback: 253))]), startPoint: .top, endPoint: .bottom))
                .frame(width: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 100), height: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 100))
                .shadow(color: .black, radius: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[2].arg[1].value", fallback: 40), x: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[2].arg[2].value", fallback: 0), y: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[2].arg[3].value", fallback: 0))
                .offset(x: -screenWidth / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[3].arg[0].value.[0]", fallback: 2) + __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[3].arg[0].value.[1]", fallback: 25),y: -screenHeight / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[3].arg[1].value.[0]", fallback: 2) + __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[1].modifier[3].arg[1].value.[1]", fallback: 25))
            
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [getColor(red: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[0].value", fallback: 149), green: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[1].value", fallback: 117), blue: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[2].value", fallback: 214)), getColor(red: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[0].value", fallback: 99), green: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[1].value", fallback: 117), blue: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[2].value", fallback: 253))]), startPoint: .top, endPoint: .bottom))
                .frame(width: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value", fallback: 250), height: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[1].arg[1].value", fallback: 250))
                .shadow(color: .black, radius: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[2].arg[1].value", fallback: 20), x: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[2].arg[2].value", fallback: 0), y: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[2].arg[3].value", fallback: 0))
                .offset(x: screenWidth / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[3].arg[0].value.[0]", fallback: 2) - __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[3].arg[0].value.[1]", fallback: 50),y: -screenHeight / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[2].modifier[3].arg[1].value.[0]", fallback: 2) )
            
            
            GeometryReader{proxy in
                ZStack{
                    Circle()
                        .fill(Color.white)
                        .shadow(color: .gray.opacity(__designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)), radius: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 10), x: __designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[2].value", fallback: 0.0), y: __designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[3].value", fallback: 0.0))
                    
                    VStack(alignment: .leading){
                        Text(__designTimeString("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "用户名"))
                            .foregroundColor(.gray)
                        
                        TextField(__designTimeString("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value", fallback: "用户名"), text: $userName)
                            .padding(.horizontal)
                            .padding(.vertical, __designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[1].arg[1].value", fallback: 8.0))
                            .background(Color.gray.opacity(__designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.2)))
                            .cornerRadius(__designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[3].arg[0].value", fallback: 5.0))
                        
                        Spacer()
                            .frame(height: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[0].arg[0].value", fallback: 15))
                        
                        Text(__designTimeString("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[3].arg[0].value", fallback: "密码"))
                            .foregroundColor(.gray)
                        
                        SecureField(__designTimeString("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[4].arg[0].value", fallback: "密码"),text:$password)
                            .padding(.horizontal)
                            .padding(.vertical, __designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[4].modifier[1].arg[1].value", fallback: 8.0))
                            .background(Color.gray.opacity(__designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[4].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.2)))
                            .cornerRadius(__designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[4].modifier[3].arg[0].value", fallback: 5.0))
                        
                        Spacer()
                            .frame(height: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[5].modifier[0].arg[0].value", fallback: 30))
                        
                        Button(__designTimeString("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[6].arg[0].value", fallback: "立即登录")){
                            userVM.signIn{
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, __designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[6].modifier[1].arg[1].value", fallback: 8.0))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width:__designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[6].modifier[4].arg[0].value.arg[0].value.arg[0].value", fallback: 5),height:__designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].arg[1].value.[6].modifier[4].arg[0].value.arg[0].value.arg[1].value", fallback: 5))))
                    }
                    .frame(width: proxy.size.width / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.[0]", fallback: 2), height: proxy.size.width / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[1].value.[0]", fallback: 2), alignment:.leading)
                    .padding()
                    .offset(x: -proxy.size.width / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].modifier[2].arg[0].value.[0]", fallback: 6))
                }
            }
            .frame(width: screenHeight * __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.[0]", fallback: 2) / __designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.[1]", fallback: 3.3), height: screenHeight * __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].modifier[0].arg[1].value.[0]", fallback: 2) / __designTimeFloat("#15148.[1].[6].property.[0].[0].arg[0].value.[3].modifier[0].arg[1].value.[1]", fallback: 3.3), alignment: .center)
            .offset(x: screenWidth / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[3].modifier[1].arg[0].value.[0]", fallback: 3))
            
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [getColor(red: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[0].value", fallback: 149), green: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[1].value", fallback: 117), blue: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[2].value", fallback: 214)), getColor(red: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[0].value", fallback: 99), green: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[1].value", fallback: 117), blue: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[2].value", fallback: 253))]), startPoint: .top, endPoint: .bottom))
                .frame(width: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[1].arg[0].value", fallback: 60), height: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[1].arg[1].value", fallback: 60))
                .shadow(color: .gray, radius: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[2].arg[1].value", fallback: 40), x: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[2].arg[2].value", fallback: 0), y: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[2].arg[3].value", fallback: 0))
                .offset(x: -screenWidth / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[3].arg[0].value.[0]", fallback: 2) + __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[3].arg[0].value.[1]", fallback: 150),y: screenHeight / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[3].arg[1].value.[0]", fallback: 2) - __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[4].modifier[3].arg[1].value.[1]", fallback: 170))
            
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [getColor(red: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[0].value", fallback: 149), green: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[1].value", fallback: 117), blue: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[2].value", fallback: 214)), getColor(red: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[0].value", fallback: 99), green: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[1].value", fallback: 117), blue: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[2].value", fallback: 253))]), startPoint: .top, endPoint: .bottom))
                .frame(width: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[1].arg[0].value", fallback: 200), height: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[1].arg[1].value", fallback: 200))
                .shadow(color: .gray, radius: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[2].arg[1].value", fallback: 40), x: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[2].arg[2].value", fallback: 0), y: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[2].arg[3].value", fallback: 0))
                .offset(x: -screenWidth / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[3].arg[0].value.[0]", fallback: 2) + __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[3].arg[0].value.[1]", fallback: 70),y: screenHeight / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[3].arg[1].value.[0]", fallback: 2) - __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[5].modifier[3].arg[1].value.[1]", fallback: 90))
            
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [getColor(red: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[0].value", fallback: 149), green: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[1].value", fallback: 117), blue: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[0].arg[0].value.arg[0].value.arg[0].value.[0].arg[2].value", fallback: 214)), getColor(red: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[0].value", fallback: 99), green: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[1].value", fallback: 117), blue: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[0].arg[0].value.arg[0].value.arg[0].value.[1].arg[2].value", fallback: 253))]), startPoint: .top, endPoint: .bottom))
                .frame(width: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[1].arg[0].value", fallback: 100), height: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[1].arg[1].value", fallback: 100))
                .shadow(color: .gray, radius: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[2].arg[1].value", fallback: 40), x: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[2].arg[2].value", fallback: 0), y: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[2].arg[3].value", fallback: 0))
                .offset(x: -screenWidth / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[3].arg[0].value.[0]", fallback: 2) + __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[3].arg[0].value.[1]", fallback: 70),y: screenHeight / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[3].arg[1].value.[0]", fallback: 2) - __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[6].modifier[3].arg[1].value.[1]", fallback: 90))
            
            Button(__designTimeString("#15148.[1].[6].property.[0].[0].arg[0].value.[7].arg[0].value", fallback: "注册")){
                
            }
            .foregroundColor(.white)
            .frame(width: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[7].modifier[1].arg[0].value", fallback: 100), height: __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[7].modifier[1].arg[1].value", fallback: 100))
            .offset(x: -screenWidth / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[7].modifier[2].arg[0].value.[0]", fallback: 2) + __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[7].modifier[2].arg[0].value.[1]", fallback: 70),y: screenHeight / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[7].modifier[2].arg[1].value.[0]", fallback: 2) - __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[7].modifier[2].arg[1].value.[1]", fallback: 90))
            
            Button{
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: __designTimeString("#15148.[1].[6].property.[0].[0].arg[0].value.[8].arg[1].value.[0].arg[0].value", fallback: "xmark"))
            }
            .foregroundColor(.white)
            .offset(x: screenWidth / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[8].modifier[1].arg[0].value.[0]", fallback: 2) - __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[8].modifier[1].arg[0].value.[1]", fallback: 50),y: -screenHeight / __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[8].modifier[1].arg[1].value.[0]", fallback: 2) + (safeAreaInsets?.top ?? __designTimeInteger("#15148.[1].[6].property.[0].[0].arg[0].value.[8].modifier[1].arg[1].value.[1]", fallback: 0)))
        }
        .navigationBarHidden(__designTimeBoolean("#15148.[1].[6].property.[0].[0].modifier[0].arg[0].value", fallback: true))
    
#sourceLocation()
    }
}

import struct NewsApp.LoginView
#Preview {
    LoginView()
}



