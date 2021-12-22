#include <ESP8266HTTPClient.h>
#include <ESP8266WiFi.h>

//atur jaringan
const char* ssid = "wifi";
const char* host = "192.168.43.128";
const char* password = "elsyemalafa";

void setup() {
  Serial.begin(9600);
  
  WiFi.hostname("NodeMCU");
  WiFi.begin(ssid, password);

//  cek kondisi wifi
  while(WiFi.status() != WL_CONNECTED)
  {
//    nodemcu mencoba koneksi
    Serial.print("....");
    delay(500);
  }
//  jika berhasil akan menampilkan pesan
    Serial.println("WiFi Connected");
    
}

void loop() {
  int sensor = analogRead(0);
  Serial.println(sensor);

//  cek koneksi
  WiFiClient client;
  if(!client.connect(host, 80))
  {
    Serial.println("Connection Failed");
    return ;
  }

//  kirim data ke server
  String Link;
  HTTPClient http;
  Link = "192.168.43.128/uas_iot/kirimdata.php?sensor=" + String(sensor);
//  link dilakukan
  http.begin(client, Link);
//  GET
  http.GET();
  http.end();
  delay(1000);
}
