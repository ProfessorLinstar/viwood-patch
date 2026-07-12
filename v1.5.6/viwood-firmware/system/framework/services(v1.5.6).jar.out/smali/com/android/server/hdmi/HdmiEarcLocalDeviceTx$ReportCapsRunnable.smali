.class public Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;
.super Ljava/lang/Object;
.source "HdmiEarcLocalDeviceTx.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;->this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;-><init>(Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;->this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;->this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    iget v1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(ZLjava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 141
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
