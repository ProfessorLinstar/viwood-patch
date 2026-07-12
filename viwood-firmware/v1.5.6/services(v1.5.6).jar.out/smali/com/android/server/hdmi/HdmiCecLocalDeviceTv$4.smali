.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceTv.java"

# interfaces
.implements Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .locals 0

    .line 946
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSadDone(Ljava/util/List;)V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$fputmSupportedSads(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/util/List;)V

    .line 951
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 952
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$mnotifyArcStatusToAudioService(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;ZLjava/util/List;)V

    .line 953
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 954
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$fgetmSupportedSads(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$mnotifyArcStatusToAudioService(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;ZLjava/util/List;)V

    .line 955
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 951
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
