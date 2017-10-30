var fs = require('fs');
var http = require('http');
var buffer = fs.readFileSync('postcode.html');
// var postcodes = fs.readFileSync('Australian_Post_Codes_Lat_Lon.csv');

var convertCsv = function(csv)
{
  var lines = csv.split("\n");
  var result = [];
  var headers = lines[0].split(",");

  for(var i = 1; i < lines.length; i++)
  {
	  var obj = {};
	  var currentline = lines[i].split(",");

	  for(var j = 0; j < headers.length; j++)
    {
		  obj[headers[j]] = currentline[j];
	  }
	  result.push(obj);
  }
  return JSON.stringify(result);
};

var app = function(request, response)
{
  var path = request.url;
  if (path === '/postcode')
  {
    console.log('a request was made');
    response.write(buffer);
    response.end();
  }
  else if (path === '/view')
  {
    console.log('a request was made');
    fs.readFile('Australian_Post_Codes_Lat_Lon.csv', 'utf-8', function(err, data)
    {
      response.write(convertCsv(data));
      response.end();
    });
  }
  else
  {
    console.log('a request was made');
    response.write('hello world');
    response.end();
  }
};

var server = http.createServer(app);
server.listen(8888);

// JSON.stringify();
