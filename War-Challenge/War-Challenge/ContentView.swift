//
//  ContentView.swift
//  War-Challenge
//
//  Created by Rahim Abbas on 8/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var PlayerCard = "card6"
    @State var CpuCard = "card9"
    @State var PlayerScore = 0
    @State var CpuScore = 0
    
    var body: some View {
        ZStack()
        {
            Image("background").ignoresSafeArea()
            
          VStack()
            {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack()
                {
                    Spacer()
                    
                    Image(PlayerCard)
                    
                    Spacer()
                    
                    Image(CpuCard)
                    
                    Spacer()
                }
                
                Spacer()
                
                //Image("dealbutton")
                Button(action:
                        {
                    let player_rand=Int.random(in: 2...14)
                    let cpu_rand=Int.random(in: 2...14)
                        PlayerCard="card" + String(player_rand)
                        CpuCard="card" + String(cpu_rand)
                    
                        //PlayerScore+=100
                        //CpuScore+=100
                    if player_rand>cpu_rand
                    {
                        PlayerScore+=100
                    }
                    else if cpu_rand>player_rand
                    {
                        CpuScore+=100
                    }
                    
//                    if(PlayerScore==1000)
//                    {
//                       print("PLAYER 1 WINS")
//                    }
//                    if(CpuScore==1000)
//                    {
//                        print("CPU WINS")
//                    }
                }
                       , label:
                        {
                    Image("dealbutton")
                })
                .frame(width: 100.0, height: 100.0)
                
                Spacer()
                HStack()
                {
                    Spacer()
                    VStack()
                    {
                        Text("PLAYER")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text(String(PlayerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack()
                    {
                        Text("CPU")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text(String(CpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
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

