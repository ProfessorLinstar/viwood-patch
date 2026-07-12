.class public Lcom/android/server/DeviceIdleController$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 777
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 778
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 779
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
