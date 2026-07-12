.class public Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$5;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 0

    .line 0
    return-void
.end method

.method public isHeld()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 0

    .line 0
    return-void
.end method
