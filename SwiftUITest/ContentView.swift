//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Diki Dwi Diro on 07/02/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
            ZStack{
                
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    Image("logo")
                        .padding(.top, 16.0)
                    
                    Spacer()
                    HStack{
                        Spacer()
                        ZStack{
                            Image(playerCard)
                        }
                        Spacer()
                            Image(cpuCard)
                        Spacer()
                    }
                    
                    Spacer()
                    Button {
                        // Get random number of each card between 2 and 14
                        let playerRand = Int.random(in: 2...14)
                        let cpuRand = Int.random(in:2...14)
                        
                        // Update both of the card
                        playerCard = "card" + String(playerRand)
                        cpuCard = "card" + String(cpuRand)
                        
                        // Increment if one of the card is greater than another
                        if playerRand  > cpuRand {
                            playerScore += 1
                        }
                        else if cpuRand > playerRand {
                            cpuScore += 1
                        }
                        
                        if playerScore == 20 || cpuScore == 20 {
                            
                        }
                    } label: {
                        Image("shuffleButton")
                    }
                    Spacer()

                    HStack(){
                        Spacer()
                        VStack{
                            Text("Player")
                                .font(.headline)
                                .padding()
                            Text(String(playerScore))
                                .font(.largeTitle)
                        }
                        Spacer()
                        
                         VStack{
                             Text("CPU")
                                 .font(.headline)
                                 .padding()
                             Text(String(cpuScore))
                                 .font(.largeTitle)
                         }
                        Spacer()
                    }
                    .padding(.bottom, 20.0)
                    .foregroundColor(Color.white)
                    Spacer()
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
