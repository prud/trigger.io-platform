``platform``: Platform information
======================

The ``forge.platform`` namespace allows you to get platform information from within your app.

##API

!method: forge.platform.getVersion(success, error)
!platforms: iOS, Android
!description: Get the OS version.
!param: success `function(version)` invoked with with the version string as its only argument (e.g. '7.0.4')
!param: error `function(content)` called with details of any error which may occur

!method: forge.platform.getModel(success, error)
!platforms: iOS, Android
!description: Get the device model name.
!param: success `function(model)` invoked with with the model name as its only argument (e.g. 'iPhone 5s')
!param: error `function(content)` called with details of any error which may occur

!method: forge.platform.getAPILevel(success, error)
!platforms: Android
!description: Get the [Android API Level](http://developer.android.com/guide/topics/manifest/uses-sdk-element.html#ApiLevels).
!param: success `function(level)` invoked with with the API level as its only argument
!param: error `function(content)` called with details of any error which may occur