-- This script disables (or at least, is supposed to) HFP/HSP support on a per user basis for Linux systems using PipeWire with wireplumber as their audio subsystem. This needs to (currently) be placed in ~/.config/wireplumber/bluetooth.lua.d/ --

bluez_monitor.properties = {
    ["bluez5.headset-roles"] = "[ ]",
    ["bluez5.hfphsp-backend"] = "none"
}
bluez_monitor.rules = {
    apply_properties =  {
        ["bluez5.auto-connect"] = "[ a2dp_sink ]",
        ["bluez5.hw-volume"] = "[ a2dp_source ]"
    }
}
