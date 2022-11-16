import SwiftUI

struct ContentView: View {
    
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard = "card2"
    @State var cpuCard = "card2"
     
    var body: some View {
        
        ZStack{
            
            Image("background").ignoresSafeArea()
            
            VStack{
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    
                    var playerRand = Int.random(in: 2...14)
                    var cpuRand = Int.random(in: 2...14)
                    
                    //Updating cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Updating score
                    if playerRand > cpuRand {
                        playerScore += 1}
                    else if playerRand == cpuRand{}
                    else {cpuScore += 1}
                    
                    
                }, label: {Image("dealbutton")})
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text("")
                        Text(String(playerScore))
                    }
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text("")
                        Text(String(cpuScore))
                    }
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    playerCard = "card2"
                    cpuCard = "card2"
                    playerScore = 0
                    cpuScore = 0
                }, label: {Text("RESET")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)})
                
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
