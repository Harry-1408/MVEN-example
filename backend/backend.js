var mysql = require('mysql');
var express = require('express')
var app = express();

// app.set('port', (process.env.PORT || 3000));
var server = require('http').createServer(app);  
var io = require('socket.io').listen(3300);
const cors = require('cors')

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "Harsh"
});

app.use(cors());

// con.connect(function (err) {
//   if (err) throw err;
//   con.query("SELECT * FROM order_summary", function (err, result, fields) {
//     if (err) throw err;
//     console.log(result[1]);
//   });
// });

app.get('/order', function(req,res){
  con.query("SELECT * FROM order_summary WHERE status != 'finished'", function (err, result, fields) {
    if (err) throw err;
    res.send(result);
  });
})

app.put('/orderupdate', function(req,res){
  console.log(req.query.id)
  con.query("UPDATE order_summary SET status = '"+ req.query.status + "' where id =" + req.query.id, function (err, result, fields) {
    if (err) throw err;
    console.log(result)
    // res.send(result);
    con.query("SELECT * FROM order_summary WHERE status != 'finished'", function (err, result, fields) {
      if (err) throw err;
      res.send(result);
    });
  });
})
// app.listen(app.get('port'), function () {
//   console.log('Server started: http://localhost:' + app.get('port') + '/');
// });

// define interactions with client
io.sockets.on('connection',async function (socket) {
  //send data to client
  var result_;
  setInterval(async function () {
    await con.query("SELECT * FROM order_summary WHERE status != 'finished'", function (err, result, fields) {
      if (err) throw err;
      result_ = result
    })
    console.log(result_)
    socket.emit('stream', { 'title': result_ });
  }, 100);
});


server.listen(3000);  

