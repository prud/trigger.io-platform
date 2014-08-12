package io.trigger.forge.android.modules.platform;

import io.trigger.forge.android.core.ForgeTask;

import com.google.gson.JsonPrimitive;

public class API {
  public static void getVersion(final ForgeTask task) {
    task.success(new JsonPrimitive(android.os.Build.VERSION.RELEASE));
  }

  public static void getModel(final ForgeTask task) {
    task.success(new JsonPrimitive(android.os.Build.MODEL));
  }

  public static void getAPILevel(final ForgeTask task) {
    task.success(new JsonPrimitive(android.os.Build.VERSION.SDK_INT));
  }
  
  public static void getManufacturer(final ForgeTask task) {
	task.success(new JsonPrimitive(android.os.Build.MANUFACTURER));
  }
}