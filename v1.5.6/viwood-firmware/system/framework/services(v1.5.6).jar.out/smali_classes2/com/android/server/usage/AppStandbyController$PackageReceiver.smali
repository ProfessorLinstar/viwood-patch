.class public Lcom/android/server/usage/AppStandbyController$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStandbyController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public static synthetic $r8$lambda$Jsj21CbFCzE6_cFuxtyN786E4Ak(Lcom/android/server/usage/AppStandbyController$PackageReceiver;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->lambda$onReceive$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 2251
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0(I)V
    .locals 0

    .line 2294
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppsToRestoreToRare(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseSetArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 2254
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2255
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 2256
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v3

    .line 2257
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, -0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 2258
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2259
    :cond_0
    const-string v0, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2264
    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    aget-object v0, v0, v1

    .line 2265
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2266
    :cond_1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->clearCarrierPrivilegedApps()V

    .line 2267
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0, v2, v3}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mevaluateSystemAppException(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    .line 2271
    :cond_2
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2272
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v0

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v3, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2273
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2276
    :cond_3
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 2277
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2278
    :cond_4
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2279
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/AppStandbyController;->maybeUnrestrictBuggyApp(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 2280
    :cond_5
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2281
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/AppStandbyController;->clearAppIdleForPackage(Ljava/lang/String;I)V

    goto :goto_3

    .line 2284
    :cond_6
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppsToRestoreToRare(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseSetArray;

    move-result-object v0

    .line 2285
    invoke-virtual {v0, v3}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2286
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppIdleLock(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2287
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppIdleHistory(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;

    move-result-object v0

    .line 2288
    invoke-virtual {v0, v3}, Lcom/android/server/usage/AppIdleHistory;->readRestoreToRareAppsList(I)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2290
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v4}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppsToRestoreToRare(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseSetArray;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseSetArray;->addAll(ILandroid/util/ArraySet;)V

    .line 2294
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v0

    new-instance v4, Lcom/android/server/usage/AppStandbyController$PackageReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Lcom/android/server/usage/AppStandbyController$PackageReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController$PackageReceiver;I)V

    const-wide/32 v5, 0xa4cb800

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 2297
    :cond_7
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2300
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppsToRestoreToRare(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2301
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    const/16 v6, 0x102

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mrestoreAppToRare(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IJI)V

    .line 2303
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppsToRestoreToRare(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 2307
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmSystemExemptionAppOpMode(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 2308
    :try_start_1
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2309
    const-string p1, "android.intent.extra.UID"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2310
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmSystemExemptionAppOpMode(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    .line 2312
    :cond_a
    :goto_4
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
