# SWIFTUI 
## Simple List View Design Example Project

  * SwiftUI List View Design


## Step1: List View Box Modifier
```swift
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

```

## Step2: Row View Design

```swift

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


```

## Step3: Content View Code

```swift
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

```



# Output Screenshot: 
![image text](http://arifhossen.net/github_images/swiftui-simple-listview-design.png)


