var scase = angular.module('s-case', ['ui.bootstrap']);

angular.module('s-case').controller('ModalDemoCtrl', function ($scope, $uibModal, $log) {

  $scope.animationsEnabled = true;

  $scope.open = function (what) {

    var modalInstance = null;

    if(what === 'dev') {
      modalInstance = $uibModal.open({
        animation: $scope.animationsEnabled,
        templateUrl: '/myModalContent.html',
        controller: 'ModalInstanceCtrl',
      });
    } else {
      modalInstance = $uibModal.open({
        animation: $scope.animationsEnabled,
        templateUrl: '/myModalContent2.html',
        controller: 'ModalInstanceCtrl',
      });
    }

    modalInstance.result.then(function () {
    }, function () {
      $log.info('Modal dismissed at: ' + new Date());
    });
  };

});

// Please note that $modalInstance represents a modal window (instance) dependency.
// It is not the same as the $uibModal service used above.

angular.module('s-case').controller('ModalInstanceCtrl', function ($scope, $uibModalInstance) {

  $scope.showVideo = true;

  $scope.next = function () {
    $scope.showVideo = false;
  };

  $scope.cancel = function () {
    $uibModalInstance.dismiss('cancel');
  };
});
