.class public Lcom/android/server/hdmi/HdmiControlService$34;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static synthetic $r8$lambda$0I2VyMOtt3cUrQXGEunL8x9BKEw(Lcom/android/server/hdmi/HdmiControlService$34;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$34;->lambda$onChange$0(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 4535
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$34;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onChange$0(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .locals 0

    .line 4543
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$34;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minvokeCecSettingChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 3

    .line 4538
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$34;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4539
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$34;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecSettingChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4540
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4542
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$34;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecSettingChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$34$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$34$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService$34;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 4545
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
