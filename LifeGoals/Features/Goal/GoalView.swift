//
//  GoalView.swift
//  LifeGoals
//
//  Created by tobi adegoroye on 23/10/2022.
//

import SwiftUI
import SwiftUIMargin

struct GoalView: View {
    let data = (1...9).map { "Item \($0)" }
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                Button(){
                    
                }label: {
                    Text("Edit")
                        .font(.system(size: 24))
                }.padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 320))
                   LazyVGrid(columns: columns) {
                        
                       ForEach(data, id: \.self) { item in
                           CellItem()
 
                       }
                       

                   }.background(.yellow)
                              .navigationBarTitle(
                                  Text("Goals")
                                      .font(.system(.largeTitle, design: .rounded)))
                              .font(.system(.largeTitle, design: .rounded))
                              .toolbar {
                                  Button {
                                      print("Help tapped!")
                                  } label: {
                                      Symbols.plus
                                          .font(.system(size: 30)).fontWeight(.black)
                                          .font(
                                              .system(.headline,design: .rounded)
                                              .bold()
                  
                                          )
                                          .tint(Theme.toolbarButton)
                                  }
                  
                              }
            }
         }
       }
 
}


struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}

//var body: some View {
//    NavigationView {
//        VStack {
//            LazyVGrid(columns: columns, spacing: 20) {
//                ForEach(data, id: \.self) { item in
//                    Text(item)
//                }
//            }
//            .padding(.horizontal)
//            .navigationBarTitle(
//                Text("Goals")
//                    .font(.system(.largeTitle, design: .rounded)))
//            .font(.system(.largeTitle, design: .rounded))
//            .toolbar {
//                Button {
//                    print("Help tapped!")
//                } label: {
//                    Symbols.plus
//                        .font(.system(size: 30)).fontWeight(.black)
//                        .font(
//                            .system(.headline,design: .rounded)
//                            .bold()
//
//                        )
//                        .tint(Theme.toolbarButton)
//                }
//
//            }
//
//        }
//    }
//}

struct CellItem: View {
    var body: some View {
        VStack{
            VStack(alignment:.leading, spacing: 8){
                Image(systemName: "pencil").padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 128))
                    .font(.system(size: 24))
                
                Text("3").padding(EdgeInsets(top: -30, leading: 140, bottom: 10, trailing: 0)).font(.system(size: 20))

                
                
                Text("Personal")
                    .font(.system(size: 14))
                    .background(.orange)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 10, trailing: 20))
                    .font(.system(size: 20))

            }.padding(16)
            
        }.frame(maxWidth: .infinity)
            .background(Color.red, in: RoundedRectangle(cornerRadius: 19,style: .continuous))
            .padding(.vertical, 20)
            .padding(.leading,8)
            .padding(.trailing,8)

    }
}
