import config
import requests
import time
import datetime
testMode = config.testMode()
current_time = time.localtime()
TME = datetime.datetime.now().minute
print(TME)
if True:
    if len(str(TME)) == 1:
        TME = "0" + str(TME)
    HR  = current_time.tm_hour
    if HR > 12:
        HRE = HR - 12
        M = "pm"
    elif HR == 0:
        HRE = 12
        M = "am"
    else:
        HRE = HR
        M = "am"
    api_key = "fe03598630a8c24a85565765c2a1cb4e"
    city = "Sloansville"
    url = f"http://api.weatherstack.com/current?access_key={api_key}&query={city}"
    if testMode == False:
        response = requests.get(url)
        data = response.json()
        print("Testing mode disabled API request made")
    elif testMode == True:
        data = {"request":{"type":"City","query":"Sloansville, USA United States of America","language":"en","unit":"m"},"location":{"name":"Sloansville","country":"USA United States of America","region":"New York","lat":"42.763","lon":"-74.372","timezone_id":"America\/New_York","localtime":"2023-06-24 23:47","localtime_epoch":1687650420,"utc_offset":"-4.0"},"current":{"observation_time":"03:47 AM","temperature":22,"weather_code":248,"weather_icons":["https:\/\/cdn.worldweatheronline.com\/images\/wsymbols01_png_64\/wsymbol_0007_fog.png"],"weather_descriptions":["Patches Of Fog"],"wind_speed":4,"wind_degree":10,"wind_dir":"N","pressure":1010,"precip":0,"humidity":90,"cloudcover":75,"feelslike":22,"uv_index":1,"visibility":16,"is_day":"no"}}
        print("Testing mode enabled no API request made")
    def rateWeather(data):
        temperature = data["current"]["temperature"]
        weather_descriptions = data["current"]["weather_descriptions"]
        humidity = data["current"]["humidity"]
        rating = 0
        if temperature > 20 and temperature < 30:
            rating += 3
        elif temperature >= 30:
            rating += 5
        if "rain" in weather_descriptions or "shower" in weather_descriptions:
            rating -= 2
        if humidity > 75:
            rating -= 1
        rating = min(max(rating, 1), 10)
        return rating
    def tempFunk(data):
        temperature = data["current"]["temperature"]
        temperature = round((temperature * (9 / 5)) + 32)
        return temperature
    def descFunk(data):
        desc = data["current"]["weather_descriptions"][0]
        desc = desc.capitalize()
        return desc
    isDay = data["current"]["is_day"] != "no"



    desc = descFunk(data)
    desKeys = {
        "Sunny":{
            "yes": "sun.max",
            "no": "moon.stars",
        },
        "Clear": {
            "yes": "sun.max",
            "no": "moon.stars",
        },
        "Partly cloudy": {
            "yes": "cloud.moon",
            "no": "cloud.sun",
        },
        "Cloudy": {
            "yes": "cloud",
            "no": "cloud.moon",
        },
        "Overcast": {
            "yes": "cloud",
            "no": "cloud.moon",
        },
        "Rain": {
            "yes": "cloud.rain",
            "no": "cloud.moon.rain.fill",
        },
        "Shower": {
            "yes": "cloud.heavyrain",
            "no": "cloud.moon.rain.fill",
        },
        "Patches of fog": {
            "yes": "cloud.sun",
            "no": "cloud.moon",
        }
    }
    img = None
    for key, descrip in desKeys.items():
        if desc == key:
            img = descrip
    if img == None:
        img = "network"

    windDir = data["current"]["wind_dir"]
    windSpd = data["current"]["wind_speed"]
    humidity = data["current"]["humidity"]
    temp = tempFunk(data)
    rating = rateWeather(data)
    strRating = str(rateWeather(data))
    location = city


    directions = {
        "NE": "NorthEast",
        "SE":"SouthEast",
        "SW":"SouthWest",
        "NW":"NorthWest",
        "N":"North",
        "E":"East",
        "S":"South",
        "W":"West",
    }
    for key, direc in directions.items():
        if key in windDir:
            cmpImg = direc