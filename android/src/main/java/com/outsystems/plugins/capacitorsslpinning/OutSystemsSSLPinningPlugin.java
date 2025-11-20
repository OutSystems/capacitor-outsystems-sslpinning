package com.capacitorjs.plugins.screenreader;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "OutSystemsSSLPinning")
public class OutSystemsSSLPinningPlugin extends Plugin {

    @Override
    public void load() {
        // TODO implement
    }

    @PluginMethod
    public void checkCertificate(PluginCall call) {
        // TODO implement
        call.resolve();
    }
}
