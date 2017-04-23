var request = require('superagent');
var Router = require('react-router');

var Request = function(){
  var baseURL = "http://localhost:9393/api/v1";

  this.get = function(route, payload, next){
    request
    .get(baseURL + route)
    .query(payload)
    .set("Accept", 'application/json')
    .set("Content-Type", 'application/json')
    .end(function(err, res){
      return next(err, JSON.parse(res.text), res);
    });
  };

  this.put = function(route, payload, next){
    request
    .put(baseURL + route)
    .send(payload)
    .set("Accept", 'application/json')
    .set("Content-Type", 'application/json')
    .end(function(err, res){
      return next(err, JSON.parse(res.text), res);
    });
  };

  this.post = function(route, payload, next){
    request
    .post(baseURL + route)
    .send(payload)
    .set("Accept", 'application/json')
    .set("Content-Type", 'application/json')
    .end(function(err, res){
      return next(err, JSON.parse(res.text), res);
    });
  };

  this.del = function(route, payload, next){
    request
    .del(baseURL + route)
    .query(payload)
    .set("Accept", 'application/json')
    .set("Content-Type", 'application/json')
    .end(function(err, res){
      return next(err, JSON.parse(res.text), res);
    });
  }

};


module.exports = Request;
