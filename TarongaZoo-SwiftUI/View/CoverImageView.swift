//
//  CoverImageView.swift
//  TarongaZoo-SwiftUI
//
//  Created by JunHyuk Lim on 23/9/2022.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    
    let coverImages : [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView().previewLayout(.fixed(width: 400, height: 300))
    }
}
