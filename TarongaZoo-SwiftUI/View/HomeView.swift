//
//  HomeView.swift
//  TarongaZoo-SwiftUI
//
//  Created by JunHyuk Lim on 22/9/2022.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPERTIES
    let events : [Event] = Bundle.main.decode("events.json")
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            Group {
                List {
                    //MARK: - CoverImage
                    CoverImageView()
                        .frame(height:300)
                        .cornerRadius(10)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .padding()
                    
                    //MARK: - What's On? EVENT
                    Text("Whats On?")
                    ForEach(events) { event in
                        EventListItemView(event: event)
                    }
                } //: LIST
            } //: GROUP
            .navigationTitle("🦒TarongaZoo")
            .navigationBarTitleDisplayMode(.large)
        } //: NAVIGATION VIEW
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
