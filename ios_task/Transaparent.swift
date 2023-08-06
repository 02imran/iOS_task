//
//  Transaparent.swift
//  ios_task
//
//  Created by Md IMRAN on 4/8/23.
//

import SwiftUI

struct Transaparent: View {
    var body: some View {
        VStack {
            ZStack {
                Group {
                    Rectangle()
                        .fill(Color("color2"))
                        .frame(width: UIScreen.main.bounds.width - 20, height: 200)
                        .cornerRadius(40)
                    
                    Rectangle()
                        .fill(Color("color"))
                        .frame(width: UIScreen.main.bounds.width - 20, height: 200)
                        .cornerRadius(40)
                        .padding(.bottom)
                    
                    
                }
            }
                
        }
        .padding(.horizontal)
    }
}

struct Transaparent_Previews: PreviewProvider {
    static var previews: some View {
        Transaparent()
    }
}
