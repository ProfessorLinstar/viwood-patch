.class public abstract synthetic Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$7;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"


# static fields
.field public static final synthetic $SwitchMap$android$sysprop$HdmiProperties$playback_device_action_on_routing_control_values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 696
    invoke-static {}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->values()[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$7;->$SwitchMap$android$sysprop$HdmiProperties$playback_device_action_on_routing_control_values:[I

    :try_start_0
    sget-object v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->WAKE_UP_AND_SEND_ACTIVE_SOURCE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$7;->$SwitchMap$android$sysprop$HdmiProperties$playback_device_action_on_routing_control_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->WAKE_UP_ONLY:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$7;->$SwitchMap$android$sysprop$HdmiProperties$playback_device_action_on_routing_control_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->NONE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
