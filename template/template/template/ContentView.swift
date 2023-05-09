//
//  ContentView.swift
//  template
//
//  Created by biostr1 on 2023/05/09.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
            HStack(spacing : 0){
                Button(action: {
                    print("month")
                },label: {
                    Image(systemName: "calendar")
                }).imageScale(.large)
                .buttonStyle(BS_UP())

                Button(action: {
                    print("week")
                },label: {
                    Text("W")
                })
                .buttonStyle(BS_UP())

                Button(action: {
                    print("day")
                },label: {
                    Text("d")
                })
                .buttonStyle(BS_UP())
                
                Spacer()
                
                Button(action: {
                    print("settei")
                },label: {
                    Text("settei")
                })
                .buttonStyle(BS_UP())
            }

            Spacer()

            HStack(spacing : 0){
                Button(action: {
                    print("calender")
                },label: {
                    Text("calender")
                })
                .buttonStyle(BS_DOWN())

                Button(action: {
                    print("todo")
                },label: {
                    Text("todo")
                })
                .buttonStyle(BS_DOWN())

                Button(action: {
                    print("alarm")
                },label: {
                    Text("alarm")
                })
                .buttonStyle(BS_DOWN())
            }
        }
    }
}

struct BS_UP: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        configuration.label
            .frame(width: width/5, height: height/15)
            .background(.white)
            .border(Color(0xFF0000, alpha: 0.2))
    }
}

struct BS_DOWN: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        configuration.label
            .frame(width: width/3, height: height/10)
            .background(.white)
            .border(.black)
    }
}

extension Color {
  init(_ hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xFF) / 255,
      green: Double((hex >> 8) & 0xFF) / 255,
      blue: Double(hex & 0xFF) / 255,
      opacity: alpha
    )
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
