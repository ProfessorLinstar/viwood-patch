.class public Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# instance fields
.field public final mWakeLock:Lcom/android/server/hdmi/WakeLockWrapper;

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .locals 2

    .line 779
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Lcom/android/server/hdmi/PowerManagerWrapper;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "HdmiCecLocalDevicePlayback"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/PowerManagerWrapper;->newWakeLock(ILjava/lang/String;)Lcom/android/server/hdmi/WakeLockWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Lcom/android/server/hdmi/WakeLockWrapper;

    const/4 p0, 0x0

    .line 781
    invoke-interface {p1, p0}, Lcom/android/server/hdmi/WakeLockWrapper;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Lcom/android/server/hdmi/WakeLockWrapper;

    invoke-interface {v0}, Lcom/android/server/hdmi/WakeLockWrapper;->acquire()V

    .line 787
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "active source: %b. Wake lock acquired"

    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isHeld()Z
    .locals 0

    .line 798
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Lcom/android/server/hdmi/WakeLockWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/WakeLockWrapper;->isHeld()Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 1

    .line 792
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Lcom/android/server/hdmi/WakeLockWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/WakeLockWrapper;->release()V

    const/4 p0, 0x0

    .line 793
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Wake lock released"

    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
