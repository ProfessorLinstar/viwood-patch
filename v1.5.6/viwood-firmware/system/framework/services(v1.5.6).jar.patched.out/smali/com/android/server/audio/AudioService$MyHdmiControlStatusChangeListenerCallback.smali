.class public Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 13055
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onStatusChange(IZ)V
    .locals 3

    .line 13059
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiClientLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13060
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiManager(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 13062
    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    invoke-static {p0, p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateHdmiCecSinkLocked(Lcom/android/server/audio/AudioService;Z)V

    .line 13063
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
