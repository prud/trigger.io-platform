module("platform");

if (forge.is.android()) {
  asyncTest("Version data", 1, function() {
    forge.platform.getVersion(function(version) {
      forge.platform.getModel(function(model) {
        forge.platform.getAPILevel(function(level) {
          askQuestion("Is this device version " + version + ", API level "  + level + " and a " + model + "?", {
            Yes : function() {
              ok(true, "Success");
              start();
            },
            No : function() {
              ok(false, "User claims failure");
              start();
            }
          });
        });
      });
    });
  });
} else {
  asyncTest("Version data", 1, function() {
    forge.platform.getVersion(function(version) {
      forge.platform.getModel(function(model) {
        askQuestion("Is this device version " + version + " and a " + model + "?", {
          Yes : function() {
            ok(true, "Success");
            start();
          },
          No : function() {
            ok(false, "User claims failure");
            start();
          }
        });
      });
    });
  });
}