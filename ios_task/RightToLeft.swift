//
//  ContentView.swift
//  ios_task
//
//  Created by Md IMRAN on 4/8/23.
//

import SwiftUI

struct RightToLeft: View {
    
    @State var itemCount = 20
    
    
    var body: some View {
        VStack {
            ScrollView(.horizontal){
                HStack {
                    ForEach(0 ... itemCount, id: \.self) { index in
                        
                        Image("image")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
            }
            .flipsForRightToLeftLayoutDirection(true)
            .environment(\.layoutDirection, .rightToLeft)
            .onChange(of: Date(), perform: { newValue in
                fetchData()
            })
            .onAppear {
                fetchData()
            }
        }
        .padding()
    }
    func fetchData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.itemCount += 20
//            print("Item count\(itemCount)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RightToLeft()
    }
}
