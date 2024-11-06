@_private(sourceFile: "ProfilePage.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ProfilePage {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/pages/ProfilePage.swift", line: 12)
        VStack {
            AppBarView {
                Text(__designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "我的")).frame(maxWidth: .infinity)
            }
            
            ScrollView {
                LazyVStack {
                    HStack {
                        Image(systemName: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "person.crop.circle.fill"))
                            .resizable()
                            .frame(width: __designTimeInteger("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 80), height: __designTimeInteger("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 80))
                            .background(.white)
                            .clipShape(Circle())
                        
                        VStack {
                            Text(__designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "182****0000"))
                                .font(.system(size: __designTimeInteger("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 18)))
                                .foregroundColor(getColor(all: __designTimeInteger("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 51)))
                            
                            Spacer()
                            
                            Text(__designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value", fallback: "以坚持学习22天"))
                                .font(.system(size: __designTimeInteger("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: 12)))
                                .foregroundColor(contentColor)
                            
                        }
                        .padding(.vertical)
                        Spacer()
                    }
                    .padding()
                    
                    MineItemView(image: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "my_point"), title: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[1].value", fallback: "学习积分"))
                    MineItemView(image: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "browse_record"), title: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[2].arg[1].value", fallback: "浏览记录"))
                    MineItemView(image: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[3].arg[0].value", fallback: "learn_archives"), title: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[3].arg[1].value", fallback: "学习档案"), showDivider: __designTimeBoolean("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[3].arg[2].value", fallback: false))
                    
                    Color.gray.opacity(__designTimeFloat("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[4].modifier[0].arg[0].value", fallback: 0.1))
                    
                    MineItemView(image: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[5].arg[0].value", fallback: "common_problem"), title: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[5].arg[1].value", fallback: "常见问题"))
                    MineItemView(image: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[6].arg[0].value", fallback: "version_information"), title: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[6].arg[1].value", fallback: "版本信息"))
                    MineItemView(image: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[7].arg[0].value", fallback: "setting"), title: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[7].arg[1].value", fallback: "个人设置"))
                    MineItemView(image: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[8].arg[0].value", fallback: "online_service_icon"), title: __designTimeString("#130229.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[8].arg[1].value", fallback: "联系我们"))
                }
            }
            Spacer()
        }
    
#sourceLocation()
    }
}

import struct NewsApp.ProfilePage
#Preview {
    ProfilePage().ignoresSafeArea()
}



