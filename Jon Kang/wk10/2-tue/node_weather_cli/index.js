var express = require ('express');
var app = express();
const request = require('request');
const url = "http://api.openweathermap.org/data/2.5/weather?id=7839805&units=metric&APPID=2238008fbaff4c10330517bafb6b3b5a"

request(url, function(err, response, body)
{
  data = JSON.parse(body).main.temp;
  console.log(`${data} degrees celcius`);
});
