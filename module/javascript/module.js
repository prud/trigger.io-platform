//Expose the native API to javascript
forge.platform = {
    getVersion: function (success, error) {
      forge.internal.call('platform.getVersion', {}, success, error);
    },
    getModel: function (success, error) {
      forge.internal.call('platform.getModel', {}, success, error);
    },
    getAPILevel: function (success, error) {
      forge.internal.call('platform.getAPILevel', {}, success, error);
    }
};