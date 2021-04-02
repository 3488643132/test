//
//  IndexCategoryPartList.swift
//  互动教程
//
//  Created by Apple on 2021/2/3.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import SwiftUI

struct IndexCategoryPartList: View {
    var body: some View {
        VStack(alignment: .leading)
        {
            Text("category List")
             .font(.system(size: 16))
             .padding(.leading,20)
             .foregroundColor(Color.init(red: 0.4, green: 0.4, blue: 0.4))
            
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 122/255, blue: 109/255),Color(red: 229/255, green: 199/255, blue: 113/255)]), startPoint: .leading, endPoint: .trailing))
                    .offset(x:20,y: 0)
                
                ScrollView(Axis.Set.horizontal,showsIndicators: false){
                    HStack{
                        NavigationLink(destination: PageMessagesView(title:"Designing")){
                            VStack{
                                Image(systemName: "pencil")
                                    .font(.system(size: 20))

                                    .foregroundColor(.white)
                                
                                Text("Design")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    .padding(.trailing,10)
                            }
                        }
                        .padding(.trailing,20)
                        NavigationLink(destination: PageCategories(title: "Coding"))
                        {
                            VStack{
                                Image(systemName: "keyboard.chevron.compact.down")
                                    .foregroundColor(.white)
                                .font(.system(size: 20))

                                Text("Coding")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                            }
                        }
                        .padding(.trailing,20)

                        NavigationLink(destination: PageCategories(title: "Officing")){
                            VStack{
                                Image(systemName: "envelope")
                                    .font(.system(size: 20))

                                    .foregroundColor(.white)
                                Text("Office")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                            }
                        }
                        .padding(.trailing,20)

                        NavigationLink(destination: PageCategories(title: "Others").navigationBarHidden(true).navigationBarTitle("")){
                            VStack{
                                Image(systemName: "livephoto")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                Text("Others")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                            }
                            .padding(.trailing,10)
                            
                        }
                        .padding(.trailing,20)

                    }
                    .padding(Edge.Set.init(arrayLiteral: .top,.bottom),20)
                }
                .offset(x:30,y: 0)
                .cornerRadius(5)
            
            }
        }
    .padding(.top,10)
    }
}

struct IndexCategoryPartList_Previews: PreviewProvider {
    static var previews: some View {
        IndexCategoryPartList()
    }
}
