//
//  CardView.swift
//  Hike
//
//  Created by Nickelfox on 02/01/24.
//

import SwiftUI

struct CardView: View {
    
    @State var imageNumber:Int = 1
    @State var randomNumber:Int = 1
    @State var isShowingSheet:Bool = false
    
    func randomImage(){
        print("--- Button pressed----")
        print("old image Number - \(imageNumber)")
        repeat{
            randomNumber = Int.random(in: 1...5)
            print("action : random number generated is: \(randomNumber)")
        }while randomNumber == imageNumber
    
        imageNumber = randomNumber
        print("new image number: \(imageNumber)")
        print("\n")
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack{
                //Mark :  1 - Header
                VStack(alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .font(.system(size: 50))
                            .fontWeight(.black)
                            .foregroundStyle(
                                LinearGradient(colors: [.CustomGrayLight,.CustomGrayMedium],
                                               startPoint: .top,
                                           endPoint: .bottom))
                        Spacer()
                        Button(action: {
                            isShowingSheet.toggle()
                            print("Button presed")
                        }, label: {
                            CustomButtonView()
                        })
                        .sheet(isPresented: $isShowingSheet, content: {
                            SettingView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        })
                    }
                    
                    Text("Fun and enjoy outdoor activity for friends and families.")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                }
                .padding(.horizontal,30)
                //End of header
                ZStack{
                   CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 1), value: imageNumber)
                }
                Button(action: {
                    // Generate a random number
                    randomImage()
                    print("Explore More Button pressed")
                }, label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(
                            colors: [.CustomGreenLight,.CustomGreenMedium],
                            startPoint: .top,
                            endPoint: .bottom))
                        .shadow(color: .black, radius: 0.25,
                                x:1,y:2)
                })
                .buttonStyle(GradientButtonStyle())
                
            }
        }
            .frame(width: 320, height:570)
    }
}
#Preview {
    CardView()
}

