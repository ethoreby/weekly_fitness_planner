app = angular.module 'app', []

days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN']

app.controller('MainController', ($scope) -> 
  console.log($scope)
)