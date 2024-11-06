//
//  ProfilePage.swift
//  NewsApp
//
//  Created by swan on 2024/11/5.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        VStack {
            AppBarView {
                Text("我的").frame(maxWidth: .infinity)
            }
            
            ScrollView {
                LazyVStack {
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .background(.white)
                            .clipShape(Circle())
                        
                        VStack {
                            Text("182****0000")
                                .font(.system(size: 18))
                                .foregroundColor(getColor(all: 51))
                            
                            Spacer()
                            
                            Text("以坚持学习22天")
                                .font(.system(size: 12))
                                .foregroundColor(contentColor)
                            
                        }
                        .padding(.vertical)
                        Spacer()
                    }
                    .padding()
                    
                    MineItemView(image: "my_point", title: "学习积分")
                    MineItemView(image: "browse_record", title: "浏览记录")
                    MineItemView(image: "learn_archives", title: "学习档案", showDivider: false)
                    
                    Color.gray.opacity(0.1)
                    
                    MineItemView(image: "common_problem", title: "常见问题")
                    MineItemView(image: "version_information", title: "版本信息")
                    MineItemView(image: "setting", title: "个人设置")
                    MineItemView(image: "online_service_icon", title: "联系我们")
                }
            }
            Spacer()
        }
    }
}

#Preview {
    ProfilePage().ignoresSafeArea()
}
