var fs = require('fs');
var http = require('http');
var buffer = fs.readFileSync('postcode.html');
// var postcodes = fs.readFileSync('Australian_Post_Codes_Lat_Lon.csv');

var convertCsv = function(csv)
{
  var lines = csv.split("\n");
  var result = [];
  var headers = lines[0].split(",");

  for(var column = 1; column < lines.length; column++)
  {
	  var obj = {};
	  var currentLine = lines[column].split(",");

	  for(var row = 0; row < headers.length; row++)
    {
		  obj[headers[row]] = currentLine[row];
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
