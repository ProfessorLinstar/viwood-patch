.class public abstract Lcom/android/server/hdmi/HdmiEarcLocalDevice;
.super Lcom/android/server/hdmi/HdmiLocalDevice;
.source "HdmiEarcLocalDevice.java"


# instance fields
.field public mEarcStatus:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    return-void
.end method

.method public static create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiEarcLocalDevice;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    new-instance p1, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object p1
.end method


# virtual methods
.method public disableDevice()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract handleEarcCapabilitiesReported([B)V
.end method

.method public abstract handleEarcStateChange(I)V
.end method
