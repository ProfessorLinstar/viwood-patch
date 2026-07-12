.class public Lcom/android/server/am/OomAdjuster$1;
.super Landroid/content/BroadcastReceiver;
.source "OomAdjuster.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$1;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 573
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$1;->this$0:Lcom/android/server/am/OomAdjuster;

    iget-object p1, p1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 574
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster$1;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->handleUserSwitchedLocked()V

    .line 575
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
