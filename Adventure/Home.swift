//
//  Home.swift
//  advanture
//
//  Created by AHLAM on 08/04/1444 AH.
//

import SwiftUI
import AVFoundation
struct Homepage : View {
    @State var currentTab: Tab = .Home
    init(){ UITabBar.appearance().isHidden = true }
    var body: some View {
        
       
                    VStack(spacing: 0) {
                        
                    TabView(selection: $currentTab ){
                        
                       Home()
                            .tag(Tab.Home)
                           
                        Calender()
                            .tag(Tab.Cal)
                           
                        CameraView()
                            .tag(Tab.add)
                            
                        TimeLine()
                            .tag(Tab.Explor)
                           
                        
                    }
                      
                        HStack(spacing: 0){
                        ForEach(Tab.allCases,id:\.self){tab in
                            Button{
                                currentTab = tab
                            }label: {
                                Image(tab.rawValue)
                                   .resizable()
                                     .renderingMode(.template)
                                      .aspectRatio(contentMode: .fit)
                                      .frame(width:25,height:25)
                                    .background(
                                    Color("TextTwo")
                                        .opacity(0.1)
                                        .cornerRadius(15)
                                        .blur(radius: 2)
                                        .padding(-7)
                                        .opacity(currentTab == tab ? 1 : 0)
                                    
                                    
                                    )
                                    .padding(.vertical)
                                    .frame(maxWidth:.infinity)
                                    .foregroundColor(currentTab == tab ? Color("TextTwo"):Color.black.opacity(0.3))
                                   
                                
                           
                            }}}
                   
                    
                    }
                    
              
        
                      
                
        
        
        
        
    }
     
}
        
enum Tab : String , CaseIterable {
   
    case Home = "Home"
    case Cal = "Cal"
    case add = "add"
    case Explor = "Explor" }
            
struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
     //   Homepage()
        ContentView()
    }
}

  

struct Home :View {
@State private var search : String = ""
var body: some View {
   
        VStack{
            HStack(spacing:0){
                Text("Ready For Your \nNext ")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextOne"))
                
                + Text(" Trip?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextTwo"))
                    .bold()
                Spacer()
                
                NavigationLink {
                    profile()
                } label: {
                    Image("profile")
                        .resizable()
                        .frame(width:80 ,height:80 )
                        .clipShape(Circle())
                        .cornerRadius(10)
                }
                
                
            }.padding(.horizontal)
            
            
            
            HStack{
                
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color("AccentColor"))
                        .padding(.trailing ,8)
                    TextField("Search",text :$search)
                    Button(action:{}) {
                        Image(systemName: "mic")
                        
                    }
                }
                .padding()
                .background(Color("O"))
                .cornerRadius(15)
                .padding(.horizontal)
                
            }
            
            HStack{
                Text("Activity")
                    .bold()
                    .font(.title2)
                    .foregroundColor(Color("TextTwo"))
                Spacer()
                
                
                Text("see all")
                    .foregroundColor(Color("TextTwo"))
                
                
                
            }.padding(.horizontal)
            
            HStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("c"))
                        .frame(width:60 ,height: 60)
                        .cornerRadius(15)
                        .padding(.leading ,300)
                    Rectangle()
                        .foregroundColor(Color("c"))
                        .frame(width:60 ,height: 60)
                        .cornerRadius(15)
                        .padding(.leading ,150)
                    Rectangle()
                        .foregroundColor(Color("c"))
                        .frame(width:60 ,height: 60)
                        .cornerRadius(15)
                    Rectangle()
                        .foregroundColor(Color("c"))
                        .frame(width:60 ,height: 60)
                        .cornerRadius(15)
                        .padding(.trailing ,160)
                    Rectangle()
                        .foregroundColor(Color("c"))
                    
                        .frame(width:60 ,height: 60)
                        .cornerRadius(15)
                        .padding(.trailing ,310)
                    
                    Image("camp")
                        .resizable()
                        .frame(width:40 ,height:40 )
                        .padding(.trailing ,310)
                    Image("hiking")
                        .resizable()
                        .frame(width:40 ,height:40 )
                        .padding(.trailing ,160)
                    Image("boat")
                        .resizable()
                        .frame(width:40 ,height:40 )
                        .padding(.trailing ,1)
                    Image("diving")
                        .resizable()
                        .frame(width:40 ,height:40 )
                        .padding(.leading ,150)
                    Image("houses")
                        .resizable()
                        .frame(width:40 ,height:40 )
                    .padding(.leading ,300)}
                
                
            } .padding(.horizontal)
            
           
            HStack{
                Text("Top Trip")
                    .bold()
                    .font(.title2)
                    .foregroundColor(Color("TextTwo"))
                Spacer()
                
                Text("see all")
                    .foregroundColor(Color("TextTwo"))
                
                
                
            }.padding(.horizontal )
            
            ScrollView (.horizontal ,showsIndicators: false){
                HStack(){
                    
                    VStack{
                        NavigationLink {
                            Booking()
                        } label: {
                            Image("camping")
                                .resizable()
                                .frame(width: 150 ,height: 150)
                                .cornerRadius(20)
                                .padding(.leading,30)
                        }
                        
                        .padding(.trailing , 30)
                        Text("Camping")
                            .font(.title3)
                           // .fontWeight(.bold)
                            .padding(.trailing , 50)
                            .foregroundColor(Color("tex"))
                        
                        HStack{
                            Image("star")
                            Text("4.9")
                                .foregroundColor(Color("TextTwo"))
                            .padding(.trailing , 80) }
                        
                    }
                    
                    .frame(width: 180)
                    .padding()
                    .background(Color("c"))
                    .cornerRadius(20)
                    
                    
                    VStack{
                        
                        Image("hik")
                            .resizable()
                            .frame(width: 150 ,height: 150)
                            .cornerRadius(20)
                            .padding(.trailing , 10)
                        Text("Hiking")
                            .font(.title3)
                         //   .fontWeight(.bold)
                            .foregroundColor(Color("tex"))
                            .padding(.trailing , 80)
                        
                        HStack{
                            Image("star")
                            Text("4.5")
                                .foregroundColor(Color("TextTwo"))
                                .padding(.trailing , 80)
                            
                        }
                    }.frame(width: 180)
                        .padding()
                        .background(Color("c"))
                        .cornerRadius(20)
                    
                    VStack{
                        
                        Image("horse ride")
                            .resizable()
                            .frame(width: 150 ,height: 150)
                            .cornerRadius(20)
                            .padding(.trailing , 10)
                        Text("horse ride")
                            .font(.title3)
                         //   .fontWeight(.bold)
                            .padding(.trailing , 50)
                            .foregroundColor(Color("tex"))
                        
                        HStack{
                            Image("star")
                            Text("4.4")
                                .foregroundColor(Color("TextTwo"))
                                .padding(.trailing , 80)
                            
                        }
                    }.frame(width: 180)
                        .padding()
                        .background(Color("c"))
                        .cornerRadius(20)
                    
                    VStack{
                        
                        Image("Bout Trip")
                            .resizable()
                            .frame(width: 150 ,height: 150)
                            .cornerRadius(20)
                            .padding(.trailing , 10)
                        Text("Bout Trip")
                            .font(.title3)
                         //   .fontWeight(.bold)
                            .padding(.trailing , 50)
                            .foregroundColor(Color("tex"))
                        
                        HStack{
                            Image("star")
                            Text("3.9")
                                .foregroundColor(Color("TextTwo"))
                                .padding(.trailing , 80)
                            
                        }
                    }.frame(width: 180)
                        .padding()
                        .background(Color("c"))
                        .cornerRadius(20)
                    
                    VStack{
                        
                        Image("div")
                            .resizable()
                            .frame(width: 150 ,height: 150)
                            .cornerRadius(20)
                            .padding(.trailing , 10)
                        Text("Diving")
                            .font(.title3)
                          //  .fontWeight(.bold)
                            .padding(.trailing , 80)
                            .foregroundColor(Color("tex"))
                        
                        HStack{
                            Image("star")
                            Text("3.8")
                                .foregroundColor(Color("TextTwo"))
                                .padding(.trailing , 80)
                            
                        }
                    }.frame(width: 180)
                        .padding()
                        .background(Color("c"))
                        .cornerRadius(20)
                }
            }
            
        }}}

struct Calender : View {
    var body: some View{
        
        
        VStack(spacing: 60){
            
            Text("Your Booking")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("TextTwo"))
            
            VStack(alignment: .leading){
                HStack(spacing: 5){
                    Image(systemName: "trash")
                        .foregroundColor(Color("TextTwo"))
                    Image(systemName: "square.and.pencil")
                        .foregroundColor(Color("TextTwo"))
                        
                }.padding(.leading, 310)
                
                HStack{
                    
                    VStack (alignment:.leading ,spacing: 10){
                        HStack{
                            Image("div")
                                .resizable()
                                .frame(width: 145 , height: 156)
                                .cornerRadius(30)
                            VStack(alignment:.leading){
                                Text("your booking")
                                    .font(.caption)
                                    .foregroundColor(Color("TextTwo"))
                                    .bold()
                                Text("Morning Diving")
                                    .font(.title)
                                    .foregroundColor(Color("TextOne"))
                                    .bold()
                            }
                        }
                        
                        
                        HStack(){
                            Image (systemName: "calendar.badge.plus")
                                .foregroundColor(Color(hue: 0.265, saturation: 0.462, brightness: 0.599))
                            Text("Thu ,9 November")
                                .font(.caption)
                                .foregroundColor(Color("sup"))
                        }
                        .padding(.trailing ,186.0)
                        
                        HStack{
                            Image(systemName: "mappin")
                                .foregroundColor(Color("TextTwo"))
                            Text(" Jeddah")
                                .font(.caption)
                                .foregroundColor(Color("sup"))
                            
                        }
                        HStack{
                            Image(systemName:"person")
                                .foregroundColor(Color("TextTwo"))
                            Text(" 4 person")
                                .font(.caption)
                                .foregroundColor(Color("sup"))
                        }
                        
                    }
                    
                }
                VStack{
                    HStack(spacing: 5){
                        Image(systemName: "trash")
                            .foregroundColor(Color("TextTwo"))
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(Color("TextTwo"))
                        
                    }.padding(.leading, 300)
                    
                    HStack{
                        
                        VStack (alignment:.leading,spacing: 10){
                            HStack{
                                Image("hik-B")
                                    .resizable()
                                    .frame(width: 145 , height: 156)
                                    .cornerRadius(30)
                                  //  .padding(.trailing,100)
                                VStack(alignment:.leading){
                                    Text("your booking")
                                        .font(.caption)
                                        .foregroundColor(Color("TextTwo"))
                                        .bold()
                                    Text("Hiking")
                                        .font(.title)
                                        .foregroundColor(Color("TextOne"))
                                        .bold()
                                }
                            }.padding(.trailing,130)
                            
                            
                            HStack{
                                Image (systemName: "calendar.badge.plus")
                                    .foregroundColor(Color(hue: 0.265, saturation: 0.462, brightness: 0.599))
                                Text("Thu ,15 November")
                                    .font(.caption)
                                    .foregroundColor(Color("sup"))
                            }
                            .padding(.trailing ,186.0)
                            
                            HStack{
                                Image(systemName: "mappin")
                                    .foregroundColor(Color("TextTwo"))
                                Text(" Riyadh")
                                    .font(.caption)
                                    .foregroundColor(Color("sup"))
                                
                            }
                            HStack{
                                Image(systemName:"person")
                                    .foregroundColor(Color("TextTwo"))
                                Text(" 2person")
                                    .font(.caption)
                                    .foregroundColor(Color("sup"))
                            }
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
            }
                
        }
        
            
    }
}
struct TimeLine : View {
    @State var index = 0
    var body: some View {
        VStack{
            HStack{
                Text("")
                Spacer()
                Image(systemName: "message")
                    .foregroundColor(Color("TextOne"))
                
                NavigationLink{
                    CameraView()
                } label: {
                    
                    Image(systemName: "plus.circle")
                      .foregroundColor(Color("TextOne"))
                }
               
                Image(systemName: "heart")
                    .foregroundColor(Color("TextOne"))
                
            }.font(.system(size: 30))
             .padding()
            HStack(){
                
                Button(action:{
                    self.index=0
                }){
                    Text("Friends")
                        .foregroundColor(self.index == 0 ? Color.white : .gray)
                        .padding(.vertical ,10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color ("TextTwo") : Color.clear)
                        .cornerRadius(30)
                        
                }
                Button(action:{
                    self.index=1
                }){
                    Text("Explore")
                        .foregroundColor(self.index == 1 ? Color.white : .gray)
                        .padding(.vertical ,10)
                      .padding(.horizontal)
                        .background(self.index == 1 ? Color ("TextTwo") : Color.clear)
                        .cornerRadius(30)
                    
                }
                
                
            }
            
             
        
                .cornerRadius(20)
              
            
            ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .leading){
                HStack{
                 
                    Image("Ahmad")
                        .resizable()
                        .aspectRatio(contentMode:.fill)
                        .frame(width:50,height:50)
                        .clipShape(Circle())
                    Text("Ahmad")
                }
                Image("Ahmadpic")
                    .resizable()
                    .frame(width:360, height:270)
                    .cornerRadius(30)
                
                
                HStack{
                    
                    Image(systemName:"face.smiling")
                        .foregroundColor(Color(hue: 0.143, saturation: 1.0, brightness: 1.0))
                    Image(systemName:"heart")
                        .foregroundColor(Color.red)
                }.padding()
            }
           
                VStack(alignment: .leading){
                    HStack{
                        Image("Sara")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width:50,height:50)
                            .clipShape(Circle())
                        Text("sara")
                    }
                    Image("Sarapic")
                        .resizable()
                        .frame(width:360, height:270)
                        .cornerRadius(30)
                    
                    
                    HStack{
                        
                        Image(systemName:"face.smiling")
                            .foregroundColor(Color(hue: 0.143, saturation: 1.0, brightness: 1.0))
                        Image(systemName:"heart")
                            .foregroundColor(Color.red)
                    }.padding()
                }
                VStack(alignment: .leading){
                    HStack{
                        Image("Jack")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width:50,height:50)
                            .clipShape(Circle())
                        Text("Jack")
                    }
                    Image("Jackpic")
                        .resizable()
                        .frame(width:360, height:270)
                        .cornerRadius(30)
                    
                    
                    HStack{
                        
                        Image(systemName:"face.smiling")
                            .foregroundColor(Color(hue: 0.143, saturation: 1.0, brightness: 1.0))
                        Image(systemName:"heart")
                            .foregroundColor(Color.red)
                    }.padding()
                }
                
                VStack(alignment: .leading){
                    HStack{
                        Image("Lora")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width:50,height:50)
                            .clipShape(Circle())
                        Text("Lora")
                    }
                    Image("Lorapic")
                        .resizable()
                        .frame(width:360, height:270)
                        .cornerRadius(30)
                    
                    
                    HStack{
                        
                        Image(systemName:"face.smiling")
                            .foregroundColor(Color(hue: 0.143, saturation: 1.0, brightness: 1.0))
                        Image(systemName:"heart")
                            .foregroundColor(Color.red)
                    }.padding()
                }
                VStack(alignment: .leading){
                    HStack{
                        Image("cate")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width:50,height:50)
                            .clipShape(Circle())
                        Text("cate")
                    }
                    Image("catepic")
                        .resizable()
                        .frame(width:360, height:270)
                        .cornerRadius(30)
                    
                    
                    HStack{
                        
                        Image(systemName:"face.smiling")
                            .foregroundColor(Color(hue: 0.143, saturation: 1.0, brightness: 1.0))
                        Image(systemName:"heart")
                            .foregroundColor(Color.red)
                    }.padding()
                }
                VStack(alignment: .leading){
                    HStack{
                        Image("farah")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width:50,height:50)
                            .clipShape(Circle())
                        Text("farah")
                    }
                    Image("farahpic")
                        .resizable()
                        .frame(width:360, height:270)
                        .cornerRadius(30)
                    
                    
                    HStack{
                        
                        Image(systemName:"face.smiling")
                            .foregroundColor(Color(hue: 0.143, saturation: 1.0, brightness: 1.0))
                        Image(systemName:"heart")
                            .foregroundColor(Color.red)
                    }.padding()
                }
            }}
        
    }
    
    
}




struct Booking: View {
    @State private var quantity: Int = 1
    var body: some View {
        
        VStack(){
                
                Image("camping")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.top)
                  
           
                VStack(alignment: .leading){
                    
                    Text("Camping")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("tex"))
                    
                    HStack{
                        Image("loc")
                        Text("Riyadh")
                        Spacer()
                        Image("like")
                     //   .padding()
                        
                    }
                    
                    
                    HStack(spacing: 20){
                        VStack{
                            Image("star")
                            Text("4.9")
                                .font(.system(size: 13))
                                .foregroundColor(Color("TextTwo"))
                        }
                        VStack{
                            Image("price")
                            Text("100$")
                                .font(.system(size: 13))
                                .foregroundColor(Color("TextTwo"))
                        }
                        VStack{
                            Image("sun")
                            Text("25C")
                                .font(.system(size: 13))
                            .foregroundColor(Color("TextTwo")) } }
                    
                    ScrollView (.vertical ,showsIndicators: false){
                        Text("About")
                        
                            .padding(.trailing,260)
                            .fontWeight(.medium)
                            .bold()
                            .padding(.vertical,8)
                            
                            .foregroundColor(Color("TextTwo"))
                        Text("One of the best camping places in Saudi Arabia is the Al-Thumama desert, located specifically in the north of Riyadh,and it is famous as the right destination for those who love hiking and camping tours,especialy those who want to escape from the city's congestion and meditate")
                            .lineSpacing(1)
                            .font(.system(size: 20))
                            .opacity(0.6)
                            .foregroundColor(Color("TextOne"))
                
                    
                    
                }
                    //.padding(.leading)
                
                
            }
            .padding(.top)
            .padding(.horizontal,50)
            .frame(width: 430, height: 400)
            .background(Color.white)
            .cornerRadius(44.0)
            .offset(y:-90)
                 
           
            
            NavigationLink {
            BookingPay()
            } label: {
                Text("Booking")
                    .font(.title3.weight(.semibold))
                    .foregroundColor(.white)
                    .frame(width: 200,height: 60)
                    .background(Color("TextTwo"))
                    .cornerRadius(20)
                    .padding(.bottom , 150)
                    
            }
            .padding(.leading)
            
        } }}




struct BookingPay: View {
    @State var selected = "23"
    @State var selected2 = "24"
    @State private var quantityExampleOne: Int = 1
    var body: some View {
        VStack{
            
                Text("Booking")
                .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextTwo"))
                  //.padding(.bottom,700)
                
                    
                HStack(spacing: 10){
                    
                    ForEach(dates){i in
                        Button(action: {
                            
                            self.selected = i.date
                            
                        }) {
                            
                            
                            VStack(spacing: 0){
                                
                                Text(i.day)
                                    .foregroundColor(Color("gray"))
                                Text(i.date)
                            }.padding()
                        }.font(.title2)
                            .foregroundColor(self.selected == i.date ? Color.white: Color("TextTwo"))
                            .background(self.selected == i.date ? Color("TextOne"): Color.clear)
                            .cornerRadius(10)
                        
                        
                    }
                    
                    
                }
                //.padding(.bottom,560 )
                
                VStack(spacing: 10){
                    
                    
                    Text("Pick a Slot")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("TextTwo"))
                        
                    
                    
                    ForEach(Clock){i in
                        
                        Button(action: {
                            
                            self.selected2 = i.tim
                        }){
                            
                            VStack(spacing:10){
                                
                                Text(i.tim)
                                Text(i.Txt)
                               .foregroundColor(Color("gray"))
                                
                            }
                            //.padding(10)
                            
                            
                        }.font(.title2)
                            .frame(width: 250, height: 80)
                            .foregroundColor(self.selected2 == i.tim ? Color.white: Color("TextTwo"))
                            .background(self.selected2 == i.tim ? Color("TextOne") : Color.clear)
                            .cornerRadius(15)
                        
                    }
                    
                    
                    Button("Continue to pay") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.title.weight((.semibold)))
                    .foregroundColor(.white)
                    .frame(width: 290,height :80)
                    .background(Color("TextTwo"))
                    .cornerRadius(30)
                    .padding(.top,90)
                    
                    
                    .padding()
                    HStack{
                        Text("Person \(quantityExampleOne)")
                            .font(.title3.weight((.semibold)))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("TextTwo"))
                            .position(x:350,y:-180)
                            .padding(.leading,-150)
                        
                        Stepper("", value: $quantityExampleOne, in: 0...10, step:1 )
                            .position(x:70,y:-140)
                            .padding(.trailing,270)
                        
                            .foregroundColor(Color(hue: 0.086, saturation: 0.91,brightness: 0.385))
                        
                    }
                    
                    
                }//.padding(.top, 230)
                
            }

            }
}

            
 struct datetype : Identifiable{

            var id : Int
            var date :String
            var day :String
            }
            var dates = [datetype(id:0 , date:"23", day:"Mon"),
            datetype(id:1 , date:"24", day:"Tue"),
            datetype(id:2 , date:"25", day:"Wed"),
            datetype(id:3 , date:"26", day:"Thu"),
            datetype(id:4 , date:"27", day:"Fri")]


            struct timetype :Identifiable{

            var id : Int
            var tim : String
            var Txt : String

            }

            var Clock = [timetype(id: 0, tim: "9:00- 11:00" , Txt: "Not Available"),
            timetype(id: 1, tim: "12:00- 2:00" , Txt: "Available"),
            timetype(id: 2, tim: "3:00- 5:00" , Txt: "Available"),
            timetype(id: 3, tim: "6:00- 8:00" , Txt: "Not Available")]
        
struct profile: View {
  @State var index = 0
    var body: some View {
       
        
         VStack{
             
             HStack{
                 
                 Text("")
                 Spacer()
                 Image(systemName: "message")
                 .foregroundColor(Color("TextTwo"))
                 .font(.system(size: 25))
                    
             }.padding(.horizontal)
             
             VStack(){
                 HStack(spacing: 20){
                     Image("profile")
                         .resizable()
                         .frame(width:100 ,height:100 )
                         .clipShape(Circle())
                         .cornerRadius(10)
                     
                     Text("Sara Nasser")
                 }
               
                 HStack(spacing: 5){
                  
                     Image(systemName: "square.and.pencil")
                     
                     Text("Edit profile")
                         .padding(.trailing,110)
                         .font(.caption)
                 }}.padding(.trailing , 100)
               .padding()
             
             HStack(){
                 
                 VStack{
                     Text("725")
                         .font(.system(size: 14))
                     Text("followers")
                         .font(.system(size: 8))
                         .foregroundColor(Color("TextTwo"))
                     
                 }.frame(width: 60)
                     .padding()
                     .background(Color("c"))
                     .cornerRadius(10)
                 
                 VStack{
                     Text("560")
                         .font(.system(size: 14))
                     Text("followeing")
                         .font(.system(size: 8))
                         .foregroundColor(Color("TextTwo"))
                     
                 }.frame(width: 50)
                     .padding()
                     .background(Color("c"))
                     .cornerRadius(10)
                 VStack{
                     Text("7")
                         .font(.system(size: 14))
                     Text("Done List")
                        
                         .font(.system(size: 8))
                   .foregroundColor(Color("TextTwo"))
                     
                 }.frame(width: 60)
                     .padding()
                     .background(Color("c"))
                     .cornerRadius(10)
                 
             } .padding(.leading)
              
             HStack(spacing: 0){
                 
                 Button(action:{
                     self.index=0
                 }){
                     Text("All")
                         .font(.system(size: 15))
                         .foregroundColor(self.index == 0 ? Color.white : .gray)
                         .padding(.vertical ,5)
                         .padding(.horizontal)
                         .background(self.index == 0 ? Color ("TextTwo") : Color.clear)
                         .cornerRadius(15)
                     
                 }
                 
                 Button(action:{
                     self.index=1
                 }){
                     Text("Photo")
                         .font(.system(size: 15))
                         .foregroundColor(self.index == 1 ? Color.white : .gray)
                         .padding(.vertical ,5)
                         .padding(.horizontal)
                         .background(self.index == 1 ? Color ("TextTwo") : Color.clear)
                         .cornerRadius(15)
                     
                 }
                 Button(action:{
                     self.index=2
                 }){
                     Text("Video")
                         .font(.system(size: 15))
                         .foregroundColor(self.index == 2 ? Color.white : .gray)
                         .padding(.vertical ,5)
                         .padding(.horizontal)
                         .background(self.index == 2 ? Color ("TextTwo") : Color.clear)
                         .cornerRadius(15)
                     
                 }
             
             }.padding(.top)
             //    .padding()
             ScrollView(.vertical , showsIndicators: false){
                 HStack(alignment: .top ){
                     VStack{
                         Image("pr")
                             .resizable()
                             .frame(width: 190 , height: 200)
                             .cornerRadius(25)
                         
                         Image("pr1")
                             .resizable()
                             .frame(width: 190 , height: 200)
                             .cornerRadius(25)
                         Image("pr4")
                             .resizable()
                             .frame(width: 190 , height: 200)
                             .cornerRadius(25)
                         Image("p6")
                             .resizable()
                             .frame(width: 190 , height: 200)
                             .cornerRadius(25)

                     }
                     VStack{
                         Image("p7")
                             .resizable()
                             .frame(width: 190 , height: 200)
                             .cornerRadius(25)
                         
                         Image("pr3")
                             .resizable()
                             .frame(width: 190 , height: 200)
                             .cornerRadius(25)
                         Image("pr5")
                             .resizable()
                             .frame(width: 190 , height: 200)
                             .cornerRadius(25)
                         Image("pr2")
                             .resizable()
                             .frame(width: 190 , height: 200)
                             .cornerRadius(25)

                     }
                    
                        
                         
                     }
                 }
             
             
             
             
             
         }
         

     }
 }
       
        

struct CameraView: View {
    
    @StateObject var camera = CameraModel()
    
    var body: some View{
        
        ZStack{
            
            // Going to Be Camera preview...
            CameraPreview(camera: camera)
                .ignoresSafeArea(.all, edges: .all)
            
            VStack{
                
                if camera.isTaken{
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: camera.reTake, label: {

                            Image(systemName: "arrow.triangle.2.circlepath.camera")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                        })
                        .padding(.trailing,10)
                    }
                }
                
                Spacer()
                
                HStack{
                    
                    // if taken showing save and again take button...
                    
                    if camera.isTaken{
                        
                        Button(action: {if !camera.isSaved{camera.savePic()}}, label: {
                            Text(camera.isSaved ? "Saved" : "Save")
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .padding(.vertical,10)
                                .padding(.horizontal,20)
                                .background(Color.white)
                                .clipShape(Capsule())
                        })
                        .padding(.leading)
                        
                        Spacer()
                    }
                    else{
                        
                        Button(action: camera.takePic, label: {
                            
                            ZStack{
                                
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 65, height: 65)
                                
                                Circle()
                                    .stroke(Color.white,lineWidth: 2)
                                    .frame(width: 75, height: 75)
                            }
                        })
                    }
                }
                .frame(height: 75)
            }
        }
        .onAppear(perform: {
            
            camera.Check()
        })
        .alert(isPresented: $camera.alert) {
            Alert(title: Text("Please Enable Camera Access"))
        }
    }
}


// Camera Model...

class CameraModel: NSObject,ObservableObject,AVCapturePhotoCaptureDelegate{
    
    @Published var isTaken = false
    
    @Published var session = AVCaptureSession()
    
    @Published var alert = false
    
    // since were going to read pic data....
    @Published var output = AVCapturePhotoOutput()
    
    // preview....
    @Published var preview : AVCaptureVideoPreviewLayer!
    
    // Pic Data...
    
    @Published var isSaved = false
    
    @Published var picData = Data(count: 0)
    
    func Check(){
        
        // first checking camerahas got permission...
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            setUp()
            return
            // Setting Up Session
        case .notDetermined:
            // retusting for permission....
            AVCaptureDevice.requestAccess(for: .video) { (status) in
                
                if status{
                    self.setUp()
                }
            }
        case .denied:
            self.alert.toggle()
            return
            
        default:
            return
        }
    }
    
    func setUp(){
        
        // setting up camera...
        
        do{
            
            // setting configs...
            self.session.beginConfiguration()
            
            // change for your own...
            
            let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back)
            
            let input = try AVCaptureDeviceInput(device: device!)
            
            // checking and adding to session...
            
            if self.session.canAddInput(input){
                self.session.addInput(input)
            }
            
            // same for output....
            
            if self.session.canAddOutput(self.output){
                self.session.addOutput(self.output)
            }
            
            self.session.commitConfiguration()
        }
        catch{
            print(error.localizedDescription)
        }
    }
    
    // take and retake functions...
    
    func takePic(){
        
        self.output.capturePhoto(with: AVCapturePhotoSettings(), delegate: self)
        
        DispatchQueue.global(qos: .background).async {
            
            self.session.stopRunning()
            
            DispatchQueue.main.async {
                
                withAnimation{self.isTaken.toggle()}
            }
        }
    }
    
    func reTake(){
        
        DispatchQueue.global(qos: .background).async {
            
            self.session.startRunning()
            
            DispatchQueue.main.async {
                withAnimation{self.isTaken.toggle()}
                //clearing ...
                self.isSaved = false
                self.picData = Data(count: 0)
            }
        }
    }
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        
        if error != nil{
            return
        }
        
        print("pic taken...")
        
        guard let imageData = photo.fileDataRepresentation() else{return}
        
        self.picData = imageData
    }
    
    func savePic(){
        
        guard let image = UIImage(data: self.picData) else{return}
        
        // saving Image...
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        
        self.isSaved = true
        
        print("saved Successfully....")
    }
}

// setting view for preview...

struct CameraPreview: UIViewRepresentable {
    
    @ObservedObject var camera : CameraModel
    
    func makeUIView(context: Context) ->  UIView {
     
        let view = UIView(frame: UIScreen.main.bounds)
        
        camera.preview = AVCaptureVideoPreviewLayer(session: camera.session)
        camera.preview.frame = view.frame
        
        // Your Own Properties...
        camera.preview.videoGravity = .resizeAspectFill
        view.layer.addSublayer(camera.preview)
        
        // starting session
        camera.session.startRunning()
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}

