//
//  SettingView.swift
//  Hike
//
//  Created by Nickelfox on 03/01/24.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List{
            Section{
                HStack{
                    Spacer()
                    // MARK - SECTION - HEADER
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80,weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66))
                            .fontWeight(.black)
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80,weight: .black))
                    Spacer()
                    
                    // MARK - SECTION - ICON
                    
                   
                }
                .foregroundStyle(
                    LinearGradient(colors: [.CustomGreenLight,.CustomGreenMedium,.CustomGreenDark],
                                   startPoint: .top,
                                   endPoint: .bottom))
                .padding(.top,8)
                
                VStack (spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the Boot! It's a time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.CustomGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
               .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }// Header end
            .listRowSeparator(.hidden)
            
            // MARK - SECTION - ABOUT
            Section(header: Text("ABOUT THE APP"),
                    footer :HStack{
                Spacer()
                Text("Copyright @ All right reserved")
                Spacer()
            }.padding(.vertical,8)){
              //CustomListRowView()
            }
            
        }// List End
        
    }
}

#Preview {
    SettingView()
}
