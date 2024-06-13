import requests
try:
    api_key = "d2f6acfaf746421c932161547232306"
    city = "Sloansville"
    url = f"http://api.weatherapi.com/v1/forecast.json?key={api_key}&q={city}"
    response = requests.get(url)
    data = response.json()
    temp = data["current"]["temp_f"]
    condit = data["current"]["condition"]
    temperatureList = []
    timeList = []
    for forecast in data["forecast"]["forecastday"]:
        for hour in forecast["hour"]:
            temperature = hour["temp_f"]
            time = hour["time"]
            temperatureList.append(temperature)

    weathT1 = temperatureList[0]
    weathT2 = temperatureList[1]
    weathT3 = temperatureList[2]
    weathT4 = temperatureList[3]
    weathT5 = temperatureList[4]
    weathT6 = temperatureList[5]
    weathT7 = temperatureList[6]
    weathT8 = temperatureList[7]
    weathT9 = temperatureList[8]
    weathT10 = temperatureList[9]
    weathT11 = temperatureList[10]
    weathT12 = temperatureList[11]
    weathT13 = temperatureList[12]
    weathT14 = temperatureList[13]
    weathT15 = temperatureList[14]
    weathT16 = temperatureList[15]
    weathT17 = temperatureList[16]
    weathT18 = temperatureList[17]
    weathT19 = temperatureList[18]
    weathT20 = temperatureList[19]
    weathT21 = temperatureList[20]
    weathT22 = temperatureList[21]
    weathT23 = temperatureList[22]
    weathT24 = temperatureList[23]
except:
    weathT1 = "0"
    weathT2 = "0"
    weathT3 = "0"
    weathT4 = "0"
    weathT5 = "0"
    weathT6 = "0"
    weathT7 = "0"
    weathT8 = "0"
    weathT9 = "0"
    weathT10 = "0"
    weathT11 = "0"
    weathT12 = "0"
    weathT13 = "0"
    weathT14 = "0"
    weathT15 = "0"
    weathT16 = "0"
    weathT17 = "0"
    weathT18 = "0"
    weathT19 = "0"
    weathT20 = "0"
    weathT21 = "0"
    weathT22 = "0"
    weathT23 = "0"
    weathT24 = "0"






timeList.append(time)

temperatureList = temperatureList
timeList = timeList
print(temperatureList)
