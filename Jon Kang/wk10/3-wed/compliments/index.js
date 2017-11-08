var bodyParser = require('body-parser');
var fs = require('fs');
var express = require ('express');
var app = express();
var complimentsFile = 'compliments.txt'
const PORT = 8888;

app.set('views', './views');
app.set('view engine', 'ejs');
app.use(express.static('public'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Functions
var convertFile = function(file)
{
  var allLines = []
  var lines = file.split("\n")
  lines.forEach(function(line)
  {
    allLines.push(line)
  })
  // Atom adds in trailing new line on save, have to disable it in 'whitespace' package
  // allLines = allLines.slice(0, -1)
  return allLines
}

var getRandomCompliment = function(convertedFile)
{
  var randomiseCompliment = convertedFile[Math.floor(Math.random() * convertedFile.length)]
  return randomiseCompliment
}

var getRandomColor = function()
{
  var colors = ['papayawhip', 'peachpuff', 'mistyrose', 'rebeccapurple', 'tomato', 'springgreen'];
  var randomiseColor = colors[Math.floor(Math.random() * colors.length)];
  return randomiseColor
}

// Routes
app.get('/', function(request, response)
{
  fs.readFile(complimentsFile, 'utf-8', function(err, data)
  {
    var compliments = convertFile(data)
    var randomCompliment = getRandomCompliment(compliments)
    var randomColor = getRandomColor()

    response.render('index', { randomCompliment, randomColor });
  })
});

app.get('/all-compliments', function(request, response)
{
  fs.readFile(complimentsFile, 'utf-8', function(err, data)
  {
    response.send(convertFile(data));
  })
})

app.post('/new-compliment', function(request, response)
{
  const compliment = request.body.new_compliment
  fs.appendFile(complimentsFile, `\n${compliment}`, 'utf-8', function(err, data)
  {
    if (err)
    {
      throw err;
    }
    else
    {
      console.log(`'${compliment}' added to compliments`);
    }
  })
  response.redirect('/all-compliments')
})

app.get('/:name', function(request, response)
{
  fs.readFile(complimentsFile, 'utf-8', function(err, data)
  {
    var personName = request.params.name
    var compliments = convertFile(data)
    var randomCompliment = getRandomCompliment(compliments)
    var randomColor = getRandomColor()

    response.render('name', { personName, randomCompliment, randomColor });
  })
});

app.listen(PORT);