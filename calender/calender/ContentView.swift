//
//  ContentView.swift
//  calender
//
//  Created by biostr1 on 2023/05/09.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State private var isShownModalView = false
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
            
            Text("date")
            
            HStack(spacing : 40){
                Text("月")
                Text("火")
                Text("水")
                Text("木")
                Text("金")
                Text("土")
                Text("日")
            }
            
            ScrollView {
                VStack(spacing : 0){
                    ForEach(1..<100) { index1 in
                        HStack(spacing : 0) {
                            ForEach(1..<8) { index2 in
                                Button(action: {
                                    self.isShownModalView = true
                                }, label: {
                                    Text(date(index1: index1, index2: index2))
                                }).sheet(isPresented: $isShownModalView, onDismiss: {
                                    print("close")
                                },
                                content: {
                                    ModalView()
                                })
                                .buttonStyle(BS_Calender())
                            }
                        }
                    }
                }
            }
            
            

            HStack(spacing : -0.5){
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

struct ModalView: View {
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        Button("OK") {
            self.presentationMode.wrappedValue.dismiss()
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

struct BS_Calender: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        configuration.label
            .frame(width: width/7, height: height/10)
            .background(.white)
            .border(.black)
    }
}

func date(index1: Int, index2: Int) -> String {
    let calendar = Calendar(identifier: .gregorian)
    
    var First_date = calendar.date(from: DateComponents(year: 2001, month: 1, day: 1, hour: 0, minute: 0, second: 0))
    
    var add_date = calendar.date(byAdding: DateComponents(day:(index1 - 1) * 7 + index2 - 1), to:First_date!)
    
    var calendar_date = Calendar.current.dateComponents([.year, .month, .day], from: add_date!)
    
    return String(calendar_date.day!)
}

struct ModalView_Preciews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
