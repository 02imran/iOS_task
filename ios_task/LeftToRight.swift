//
//  LeftToRight.swift
//  ios_task
//
//  Created by Md IMRAN on 7/8/23.
//

import SwiftUI

struct LeftToRight: View {
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

struct LeftToRight_Previews: PreviewProvider {
    static var previews: some View {
        LeftToRight()
    }
}
