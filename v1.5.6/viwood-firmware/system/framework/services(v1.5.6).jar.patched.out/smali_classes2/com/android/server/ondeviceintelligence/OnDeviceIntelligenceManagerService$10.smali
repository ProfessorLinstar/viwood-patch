.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;
.super Landroid/os/Handler;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1060
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 1062
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resetTemporaryServices()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 1064
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p1, v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fputmTemporaryBroadcastKeys(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;[Ljava/lang/String;)V

    .line 1065
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    const-string p1, "android"

    invoke-static {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fputmBroadcastPackageName(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1067
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0, v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fputmTemporaryConfigNamespace(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 1069
    :cond_2
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid handler msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
