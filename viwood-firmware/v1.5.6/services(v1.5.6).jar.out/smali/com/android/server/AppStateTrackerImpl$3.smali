.class public Lcom/android/server/AppStateTrackerImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "AppStateTrackerImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 447
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 452
    :cond_0
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 453
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v2, v1

    goto :goto_1

    :sswitch_0
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    goto :goto_1

    :sswitch_2
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 466
    :pswitch_0
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 467
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 468
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 471
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 473
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 474
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mupdateBackgroundRestrictedUidPackagesLocked(Lcom/android/server/AppStateTrackerImpl;)V

    .line 475
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 476
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 460
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 461
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    iput-boolean p1, v2, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    .line 462
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 463
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mupdateForceAllAppStandbyState(Lcom/android/server/AppStateTrackerImpl;)V

    return-void

    :catchall_1
    move-exception p0

    .line 462
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_2
    if-lez v3, :cond_5

    .line 456
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->doUserRemoved(I)V

    :cond_5
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_2
        -0x5bb23923 -> :sswitch_1
        0x1f50b9c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
