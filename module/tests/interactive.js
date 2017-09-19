module("platform");

asyncTest("Version data", 1, function() {
    forge.platform.getVersion(function(version) {
        forge.platform.getModel(function(model) {
            forge.platform.getAPILevel(function(level) {
                forge.platform.getManufacturer(function(man) {
                    askQuestion("Is this device version " + version + ", API level "  + level + " and a " + man + " " + model + "?", {
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
});
