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
                    Text("M")
                })
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
            .frame(width: width/4, height: height/15)
            .background(.white)
            .border(.black)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
