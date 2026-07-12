.class public final Lcom/android/server/am/AppExitInfoTracker$KillHandler;
.super Landroid/os/Handler;
.source "AppExitInfoTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V
    .locals 1

    .line 1665
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1666
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1671
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1715
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 1703
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 1704
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1709
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v1, p1}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$maddExitInfoLocked(Lcom/android/server/am/AppExitInfoTracker;Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    .line 1710
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->recycleRawRecord(Landroid/app/ApplicationExitInfo;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1710
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1697
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1698
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ApplicationExitInfo;

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$mperformLogToStatsdLocked(Lcom/android/server/am/AppExitInfoTracker;Landroid/app/ApplicationExitInfo;)V

    .line 1699
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 1689
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 1690
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1691
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker;->handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V

    .line 1692
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1693
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->recycleRawRecord(Landroid/app/ApplicationExitInfo;)V

    return-void

    :catchall_2
    move-exception p0

    .line 1692
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 1681
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 1682
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1683
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker;->handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V

    .line 1684
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1685
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->recycleRawRecord(Landroid/app/ApplicationExitInfo;)V

    return-void

    :catchall_3
    move-exception p0

    .line 1684
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    .line 1677
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->onProcDied(IILjava/lang/Integer;Ljava/lang/Long;)V

    return-void

    .line 1673
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->onProcDied(IILjava/lang/Integer;Ljava/lang/Long;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1005
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
