module("platform");

asyncTest("Get OS version", 1, function() {
        forge.platform.getVersion(function () {
                ok(true, "Got OS version");
                start();
        }, function () {
                ok(false, "API Error");
                start();
        });
});

asyncTest("Get device model", 1, function() {
        forge.platform.getModel(function () {
                ok(true, "Got device model");
                start();
        }, function () {
                ok(false, "API Error");
                start();
        });
});

if (forge.is.android()) {
        asyncTest("Get Android API level", 1, function() {
                forge.platform.getAPILevel(function () {
                        ok(true, "Got Android API level");
                        start();
                }, function () {
                        ok(false, "API Error");
                        start();
                });
        });
}