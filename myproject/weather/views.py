import requests
from django.shortcuts import render
from django.conf import settings

def get_weather(city):
    api_key = settings.OPENWEATHER_API_KEY
    url = f'http://api.openweathermap.org/data/2.5/weather?q={city},IR&units=metric&appid={api_key}'
    response = requests.get(url)
    
    if response.status_code == 200:
        data = response.json()
        weather = {
            'city': city,
            'temperature': data['main']['temp'],
            'description': data['weather'][0]['description'],
            'icon': data['weather'][0]['icon'],
            'wind_speed': data['wind']['speed'],
            'humidity': data['main']['humidity'],
            'pressure': data['main']['pressure']
        }
        return weather
    else:
        return None

def weather_view(request):
    city = request.GET.get('city', 'Tehran')  # پیش‌فرض شهر تهران
    weather = get_weather(city)
    
    return render(request, 'weather/weather.html', {'weather': weather})
