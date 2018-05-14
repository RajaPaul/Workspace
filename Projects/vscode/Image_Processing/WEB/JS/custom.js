var app = angular.module('customApp', ["ngRoute"]);

app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "main.htm"
    })
    .when("/red", {
        templateUrl : "red.htm"
    })
    .when("/green", {
        templateUrl : "green.htm"
    })
    .when("/blue", {
        templateUrl : "blue.htm"
    });
});

app.controller('customCtrl', function($scope,$http) {
$scope.name='Panda Banta'
$http.get("dbconnect.py").then( function(response) {
    
    $scope.posts = response.data.records;
    debugger;
  });
    
});