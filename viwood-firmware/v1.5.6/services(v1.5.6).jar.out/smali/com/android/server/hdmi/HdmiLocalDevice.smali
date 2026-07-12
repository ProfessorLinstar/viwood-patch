.class public abstract Lcom/android/server/hdmi/HdmiLocalDevice;
.super Ljava/lang/Object;
.source "HdmiLocalDevice.java"


# instance fields
.field public final mDeviceType:I

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 34
    iput p2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 35
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    return-void
.end method
