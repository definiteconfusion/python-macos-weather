import Charts
import SwiftUICharts
import SwiftUI

struct ContentView: View {
    let tWeath1: Double
    let tWeath2: Double
    let tWeath3: Double
    let tWeath4: Double
    let tWeath5: Double
    let tWeath6: Double
    let tWeath7: Double
    let tWeath8: Double
    let tWeath9: Double
    let tWeath10: Double
    let tWeath11: Double
    let tWeath12: Double
    let tWeath13: Double
    let tWeath14: Double
    let tWeath15: Double
    let tWeath16: Double
    let tWeath17: Double
    let tWeath18: Double
    let tWeath19: Double
    let tWeath20: Double
    let tWeath21: Double
    let tWeath22: Double
    let tWeath23: Double
    
    let tempLst: [Double]
    
    let grad = LinearGradient(gradient: Gradient(colors: [.blue, .white, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
    var humidity: String
    var windSpd: String
    var windDir: String
    var temp: Int
    var weDesc: String
    var rate: Int
    var strRate: String
    var icoImg: String
    var time: String
    var compassImage: String
    var hour: String
    var AmP: String
    var Testmode: Bool
    
    let weath1 = Color(red: 194/255, green: 227/255, blue: 246/255)
    let weath2 = Color(red: 162/255, green: 210/255, blue: 235/255)
    let weath3 = Color(red: 131/255, green: 194/255, blue: 224/255)
    let weath4 = Color(red: 99/255, green: 177/255, blue: 212/255)
    let weath5 = Color(red: 68/255, green: 161/255, blue: 201/255)
    let weath6 = Color(red: 36/255, green: 144/255, blue: 190/255)
    let weath7 = Color(red: 3/255, green: 127/255, blue: 179/255)
    let weath8 = Color(red: 2/255, green: 111/255, blue: 158/255)
    let weath9 = Color(red: 2/255, green: 94/255, blue: 137/255)
    let weath10 = Color(red: 1/255, green: 78/255, blue: 116/255)
    
    let clrs: [Color]
    
    init() {
        tWeath1 = Double(weathT1()) ?? 0
        tWeath2 = Double(weathT2()) ?? 0
        tWeath3 = Double(weathT3()) ?? 0
        tWeath4 = Double(weathT4()) ?? 0
        tWeath5 = Double(weathT5()) ?? 0
        tWeath6 = Double(weathT6()) ?? 0
        tWeath7 = Double(weathT7()) ?? 0
        tWeath8 = Double(weathT8()) ?? 0
        tWeath9 = Double(weathT9()) ?? 0
        tWeath10 = Double(weathT10()) ?? 0
        tWeath11 = Double(weathT11()) ?? 0
        tWeath12 = Double(weathT12()) ?? 0
        tWeath13 = Double(weathT13()) ?? 0
        tWeath14 = Double(weathT14()) ?? 0
        tWeath15 = Double(weathT15()) ?? 0
        tWeath16 = Double(weathT16()) ?? 0
        tWeath17 = Double(weathT17()) ?? 0
        tWeath18 = Double(weathT18()) ?? 0
        tWeath19 = Double(weathT19()) ?? 0
        tWeath20 = Double(weathT20()) ?? 0
        tWeath21 = Double(weathT21()) ?? 0
        tWeath22 = Double(weathT22()) ?? 0
        tWeath23 = Double(weathT23()) ?? 0
        
        tempLst = [tWeath1, tWeath2, tWeath3, tWeath4, tWeath5, tWeath6, tWeath7, tWeath8, tWeath9, tWeath10, tWeath11, tWeath12, tWeath13, tWeath14, tWeath15, tWeath16, tWeath17, tWeath18, tWeath19, tWeath20, tWeath21, tWeath22, tWeath23]
        
        Testmode = Bool(test())!
        humidity = "\(humFunc())"
        windSpd = "\(wndSpdFunc())"
        windDir = "\(wndDirFunc())"
        compassImage = "\(cmpImage())"
        temp = Int(tempFuncP())!
        weDesc = "\(descFunc())"
        rate = Int(weathRate())!
        strRate = "\(strRTE())"
        icoImg = "\(imgRun())"
        time = "\(TmE())"
        hour = "\(HrE())"
        AmP = "\(aMp())"
        clrs = [weath1, weath2, weath3, weath4, weath5, weath6, weath7, weath8, weath9, weath10]
    }
    
    
    var body: some View {
        VStack {
            if Testmode == true{
                Text("Testing Mode is Enabled, data may not reflect actual weather conditions")
                    .font(.custom("Inter Regular", size: 15))
                    .foregroundColor(.white)
                    .padding(.bottom,100)
            }
                HStack {
                        Text(weDesc)
                            .font(.custom("Inter Regular", size: 26))
                            .foregroundColor(.white)
                        Image(systemName: "\(icoImg)")
                            .font(.custom("SF Pro", size: 26))
                            .foregroundColor(.white)
                            .padding(.trailing, 25)
                        Text("\(hour):\(time)\(AmP)")
                            .font(.custom("Inter Regular", size: 26))
                            .foregroundColor(.white)
                    }
                    Text("\(temp)°F")
                        .font(.custom("SF Pro", size: 106))
                        .foregroundColor(.white)
            HStack{
                ZStack {
                    LineChartView(data: tempLst, title: "Temperature", style: ChartStyle(backgroundColor: .white, accentColor: .white, gradientColor: GradientColor(start: .red, end: clrs[rate - 1]), textColor: .white, legendTextColor: .white, dropShadowColor: .black))
                    
                    
                }
                VStack{
                    HStack{
                        ZStack{
                            Image("\(compassImage)")
                                .resizable()
                                .frame(width: 70, height: 70)
                            Text("\(windDir)")
                                .padding(.top, 10)
                                .font(.custom("Inter Regular", size: 20))
                                .foregroundColor(.white)
                        
                    }
                        Text("\(windSpd)mph")
                            .font(.custom("Inter Regular", size: 20))
                            .foregroundColor(.white)
                            .padding(.top, 10)
                    }
                    HStack{
                        Image(systemName: "humidity")
                            .foregroundColor(.white)
                            .font(.custom("SF Pro", size: 30))
                        Text("\(humidity)%")
                            .font(.custom("Inter Regular", size: 20))
                            .foregroundColor(.white)
                    }
//                    .padding(.bottom,100)
            }
                .padding(.bottom, 100)
            }
            
                .padding(.bottom,100)
                }
        .frame(width: 400, height: 775)
                .background(clrs[rate - 1])
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
