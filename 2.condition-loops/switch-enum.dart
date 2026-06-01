// Define enum 
enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy
}

void main(List<String> args) {
  const weather = Weather.sunny;

  switch (weather) {
    case Weather.sunny:
      print("Its a sunny day. Put sunscreen.");
      break;
    case Weather.snowy:
      print("Get your skis.");
      break;
    case Weather.rainy:
    case Weather.cloudy:
      print("Please bring umbrella.");
      break;
    default:
      print("Sorry I am not familiar with such weather.");
      break;
  }
}