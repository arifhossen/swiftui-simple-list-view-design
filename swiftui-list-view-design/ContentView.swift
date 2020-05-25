//
//  ContentView.swift
//  swiftui-list-view-design
//
//  Created by Arif Hossen on 25/5/20.
//  Copyright © 2020 Arif Hossen. All rights reserved.
//
import SwiftUI


struct BoxModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 80, maxHeight: .infinity, alignment: .topLeading)
            
            .background(Color.white)
            .foregroundColor(Color.black)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
        )
            .shadow(color: Color.white.opacity(0.5), radius: 10.0)
            .cornerRadius(10)
        
        
    }
}

struct RowView: View {
      var body: some View {
        
       HStack{
           Image("arifhossen-profile02")
               .resizable()
               .clipShape(Circle())
               .frame(width: 100, height: 100)
           
           VStack(alignment: .leading) {
               Text("Md.Arif Hossen")
                .fontWeight(.bold)
               Text("Senior iOS Developer")
                   .font(.subheadline)
               Text("Company: Graaho Ltd")
                   .font(.subheadline)
               Text("Cell: +8801714355911")
                   .font(.subheadline)
               
           }
       }
       .modifier(BoxModifier())
    }
}


struct ContentView: View {
    //1
    // var tutors: [Tutor] = []
    
    var body: some View {
        
        VStack{
            
            Image("swiftui-logo")
            
            Text("Simple List view Design Example")
                .foregroundColor(.green)
                .font(.system(size: 20))
            
            Spacer().frame(height:30)
            
            List(0..<10) { item in
                
               RowView()
                
            }//end List Main VStack
                
                .onAppear {
                    UITableView.appearance().separatorStyle = .none
                    UITableView.appearance().showsVerticalScrollIndicator = false
                    
            }.onDisappear{
                UITableView.appearance().separatorStyle = .singleLine
            }
           
            
        }
        
    
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        //2
        ContentView()
    }
}
#endif
