app = angular.module 'app', []

app.controller('MainController', ($scope) -> 
  
  $scope.order = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN',]

  $scope.days = 
    MON: 0
    TUE: 0
    WED: 0
    THU: 0
    FRI: 0
    SAT: 0
    SUN: 0

  sum = () ->
    total = 0
    for day, count of $scope.days
      total += parseInt count
    total

  $scope.$watchCollection('days', () ->
    $scope.sum = sum()
  )

)