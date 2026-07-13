.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# static fields
.field public static final sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

.field public static final sObserverLeakDetectedUid:Landroid/util/ArraySet;


# instance fields
.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mCache:Landroid/util/SparseArray;

.field public mCacheReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mFactoryTest:Z

.field public final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field public mSyncManager:Lcom/android/server/content/SyncManager;

.field public final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$AjFPVUPaMmwlWLE_QdM3Oj2y3xo(Lcom/android/server/content/ContentService;IILandroid/content/SyncInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->lambda$getCurrentSyncsAsUser$1(IILandroid/content/SyncInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tRDtME3FEONNmxLTGpqbA3aw8SU(Lcom/android/server/content/ContentService;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService;->lambda$new$0(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCache(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minvalidateCacheLocked(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsObserverDeathDispatcher()Lcom/android/internal/os/BinderDeathDispatcher;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsObserverLeakDetectedUid()Landroid/util/ArraySet;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 184
    new-instance v0, Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-direct {v0}, Lcom/android/internal/os/BinderDeathDispatcher;-><init>()V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    .line 188
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10

    .line 316
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 177
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 199
    new-instance v0, Lcom/android/server/content/ContentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 318
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 322
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 323
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 324
    new-instance p2, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-interface {p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;)V

    .line 328
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 329
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string p1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string/jumbo p1, "package"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 337
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 342
    const-class p1, Landroid/accounts/AccountManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/AccountManagerInternal;

    iput-object p1, p0, Lcom/android/server/content/ContentService;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-void
.end method

.method public static normalizeSyncable(I)I
    .locals 0

    .line 0
    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 10

    const/4 v0, 0x1

    .line 940
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 944
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 947
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 951
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 952
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 955
    :cond_0
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 959
    :cond_1
    invoke-virtual {p0, v1, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 961
    invoke-virtual {p0, p4, p5}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v5

    .line 962
    invoke-static {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v7

    .line 964
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide p4

    .line 966
    :try_start_0
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 968
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    move-object v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    invoke-static {p4, p5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p4, p5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 972
    throw p0

    .line 945
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 942
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Account must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 3

    .line 1293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1294
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz p2, :cond_0

    .line 1297
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1301
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1302
    throw p0

    .line 1301
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .locals 8

    .line 770
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 776
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 777
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 779
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 780
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v3

    .line 784
    :try_start_0
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    .line 785
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 786
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v7, v5, v6, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 787
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 789
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelRequest() by uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v1, v0}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 793
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p1

    invoke-virtual {p1, v7, v1}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    const-string p1, "API"

    invoke-virtual {p0, v7, v1, p1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    invoke-static {v3, v4}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v3, v4}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 797
    throw p0
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1

    .line 725
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 2

    if-eqz p2, :cond_1

    .line 744
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must be non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 747
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    if-eqz p3, :cond_2

    .line 751
    const-string p0, "ContentService"

    const-string p1, "cname not null."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 757
    :cond_2
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 760
    :try_start_0
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 761
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    const-string p1, "API"

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 765
    throw p0
.end method

.method public final checkUriPermission(Landroid/net/Uri;IIII)I
    .locals 7

    .line 519
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public final clampPeriod(J)J
    .locals 4

    .line 655
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    .line 657
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested poll frequency of "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds being rounded up to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    return-wide p1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "ContentService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 242
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 244
    const-string p2, "-a"

    invoke-static {p3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 248
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 250
    :try_start_2
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v0, :cond_1

    .line 251
    const-string p2, "SyncManager not available yet"

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_6

    .line 253
    :cond_1
    invoke-virtual {v0, p1, v3, p2}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 255
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 256
    const-string p2, "Observer tree:"

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x2

    .line 258
    :try_start_3
    new-array v7, v0, [I

    .line 259
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v5, ""

    const-string v6, "  "

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 261
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 262
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    move v0, p3

    .line 263
    :goto_1
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 264
    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    .line 266
    :cond_2
    new-instance v0, Lcom/android/server/content/ContentService$2;

    invoke-direct {v0, p0, v8}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, p3

    .line 280
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 281
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    const-string v2, "  pid "

    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v1, " observers"

    invoke-virtual {v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 285
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 286
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 287
    const-string p1, "Total number of nodes: "

    invoke-virtual {v3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget p1, v7, p3

    invoke-virtual {v3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 288
    const-string p1, "Total number of observers: "

    invoke-virtual {v3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x1

    aget p1, v7, p1

    invoke-virtual {v3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 290
    sget-object p1, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-virtual {p1, v3}, Lcom/android/internal/os/BinderDeathDispatcher;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 291
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 292
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 293
    :try_start_4
    sget-object p1, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 294
    :try_start_5
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 295
    const-string p2, "Observer leaking UIDs: "

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 297
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 299
    :try_start_6
    iget-object p1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 300
    :try_start_7
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 301
    const-string p2, "Cached content:"

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 303
    :goto_3
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p3, p2, :cond_4

    .line 304
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 306
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p2, v0

    goto :goto_4

    .line 309
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 310
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 312
    :try_start_8
    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 314
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    move-object p1, v0

    goto :goto_7

    .line 310
    :goto_4
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_4
    move-exception v0

    move-object p2, v0

    .line 297
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 292
    :goto_5
    :try_start_d
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 312
    :goto_6
    :try_start_f
    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 313
    throw p1

    :goto_7
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw p1
.end method

.method public final enforceCrossUserPermission(ILjava/lang/String;)V
    .locals 1

    .line 1450
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1452
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final enforceNonFullCrossUserPermission(ILjava/lang/String;)V
    .locals 1

    .line 1466
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1471
    :cond_0
    iget-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 1477
    :cond_1
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceShell(Ljava/lang/String;)V
    .locals 2

    .line 1951
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1953
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-shell user attempted to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1328
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1329
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1331
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_1

    .line 1333
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 1334
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .locals 3

    .line 1389
    const-string v0, "ContentService"

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1394
    invoke-virtual {p0, p2, p3}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1395
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1397
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1398
    :try_start_0
    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    .line 1400
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    monitor-exit p2

    return-object p0

    :catchall_0
    move-exception p0

    .line 1401
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .locals 1

    .line 1182
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .locals 5

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 1197
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1200
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1201
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 1203
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    .line 1204
    invoke-virtual {v4, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1208
    new-instance v2, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/content/ContentService;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0

    :catchall_0
    move-exception p0

    .line 1206
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1207
    throw p0
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 1

    .line 1040
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 9

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    .line 1055
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1058
    :cond_0
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 1062
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1064
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v6, p2

    move v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1068
    throw p0
.end method

.method public getMasterSyncAutomatically()Z
    .locals 1

    .line 1111
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result p0

    return p0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .locals 3

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1127
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1130
    throw p0
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3

    if-eqz p1, :cond_3

    .line 1014
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1017
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v1, "no permission to read the sync settings"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 1021
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    .line 1022
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1023
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1025
    :cond_0
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1026
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1029
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1031
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1035
    throw p0

    .line 1015
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1012
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Account must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProcStateForStatsd(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x14

    return p0

    :pswitch_2
    const/16 p0, 0x13

    return p0

    :pswitch_3
    const/16 p0, 0x12

    return p0

    :pswitch_4
    const/16 p0, 0x11

    return p0

    :pswitch_5
    const/16 p0, 0x10

    return p0

    :pswitch_6
    const/16 p0, 0xe

    return p0

    :pswitch_7
    const/16 p0, 0xd

    return p0

    :pswitch_8
    const/16 p0, 0xc

    return p0

    :pswitch_9
    const/16 p0, 0xb

    return p0

    :pswitch_a
    const/16 p0, 0xa

    return p0

    :pswitch_b
    const/16 p0, 0x9

    return p0

    :pswitch_c
    const/16 p0, 0x8

    return p0

    :pswitch_d
    const/4 p0, 0x7

    return p0

    :pswitch_e
    const/4 p0, 0x6

    return p0

    :pswitch_f
    const/4 p0, 0x5

    return p0

    :pswitch_10
    const/4 p0, 0x4

    return p0

    :pswitch_11
    const/4 p0, 0x3

    return p0

    :pswitch_12
    const/4 p0, 0x2

    return p0

    :pswitch_13
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 1

    .line 1318
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1319
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1318
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1320
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRestrictionLevelForStatsd(I)I
    .locals 0

    .line 0
    const/16 p0, 0xa

    if-eq p1, p0, :cond_5

    const/16 p0, 0x14

    if-eq p1, p0, :cond_4

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_3

    const/16 p0, 0x28

    if-eq p1, p0, :cond_2

    const/16 p0, 0x32

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 857
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 858
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 860
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 864
    throw p0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 841
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 843
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 847
    throw p0
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 1

    .line 806
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object p0

    return-object p0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 3

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 825
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 827
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 830
    throw p0
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1

    .line 869
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    .line 884
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 887
    :cond_0
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 891
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 893
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    .line 894
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 897
    throw p0
.end method

.method public final getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .locals 5

    if-eqz p2, :cond_0

    .line 1564
    const-string/jumbo v0, "v_exemption"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1567
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eq v2, v1, :cond_0

    return v2

    .line 1572
    :cond_0
    const-class p2, Landroid/app/ActivityManagerInternal;

    .line 1573
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    .line 1577
    :cond_1
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    .line 1578
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v2

    const/4 v3, 0x2

    if-le v1, v3, :cond_5

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    if-le v1, v3, :cond_4

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return v0

    .line 1587
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/content/ContentService;->getProcStateForStatsd(I)I

    move-result v0

    .line 1588
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/content/ContentService;->getRestrictionLevelForStatsd(I)I

    move-result p0

    const/16 p2, 0x1d4

    .line 1586
    invoke-static {p2, p1, v0, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZI)V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v3
.end method

.method public final getSyncExemptionForCaller(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1557
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final getSyncManager()Lcom/android/server/content/SyncManager;
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v2, v3}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 223
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object p0

    .line 224
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .locals 1

    .line 1214
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .locals 2

    .line 1225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1229
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no permission to read the sync stats for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4, p3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1231
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v1, "no permission to read the sync stats"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x1

    .line 1235
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1238
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_1

    return-object v1

    .line 1242
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1246
    :try_start_0
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1248
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must call sync status with valid authority"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1252
    :goto_0
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1253
    throw p0

    .line 1226
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleIncomingUser(Landroid/net/Uri;IIIZI)I
    .locals 8

    const/4 v0, -0x2

    if-ne p6, v0, :cond_0

    .line 1407
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p6

    :cond_0
    move v5, p6

    const/4 p6, -0x1

    .line 1410
    const-string v6, "No access to "

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-ne v5, p6, :cond_1

    .line 1411
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    if-ltz v5, :cond_6

    .line 1415
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p6

    if-eq v5, p6, :cond_5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1416
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result p0

    if-eqz p0, :cond_5

    .line 1419
    iget-object p0, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    return v5

    :cond_2
    if-eqz p5, :cond_3

    .line 1423
    iget-object p0, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    return v5

    :cond_3
    if-eqz p5, :cond_4

    .line 1430
    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    .line 1433
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": neither user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " nor current process has "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return v5

    .line 1414
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid user: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasAccountAccess(ZLandroid/accounts/Account;I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    const-wide/32 v1, 0xc0722ff

    .line 1495
    invoke-static {v1, v2, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 1499
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1501
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {p0, p2, p3}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1503
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1504
    throw p0
.end method

.method public final hasAuthorityAccess(Ljava/lang/String;II)Z
    .locals 4

    .line 1516
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/32 v2, 0xc589c26

    .line 1519
    invoke-static {v2, v3, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 1526
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 1527
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1341
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    goto :goto_1

    .line 1344
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_4

    const/4 p1, 0x0

    .line 1348
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 1349
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 1350
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_2

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1352
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    .line 1359
    :cond_4
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 3

    .line 1160
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->isSyncActive_enforcePermission()V

    .line 1162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 1163
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    .line 1164
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1167
    :cond_0
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_1

    return v2

    .line 1171
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1173
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1177
    throw p0
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1

    .line 1258
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .locals 2

    .line 1265
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->isSyncPendingAsUser_enforcePermission()V

    .line 1266
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no permission to retrieve the sync settings for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4, p3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x1

    .line 1270
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1273
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_1

    return v1

    .line 1277
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1281
    :try_start_0
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1283
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid authority specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1287
    :goto_0
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1288
    throw p0
.end method

.method public final synthetic lambda$getCurrentSyncsAsUser$1(IILandroid/content/SyncInfo;)Z
    .locals 0

    .line 1208
    iget-object p3, p3, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$new$0(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 0

    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    .locals 27

    move-object/from16 v7, p1

    .line 436
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 437
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 438
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 441
    new-instance v24, Lcom/android/server/content/ContentService$ObserverCollector;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/content/ContentService$ObserverCollector;-><init>()V

    .line 445
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 447
    array-length v9, v7

    const/16 v25, 0x0

    move/from16 v12, v25

    :goto_0
    if-ge v12, v9, :cond_4

    aget-object v1, v7, v12

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v6, p5

    move v3, v11

    move v2, v15

    .line 449
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v4

    .line 451
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 452
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 453
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 454
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v5, 0x1a

    move/from16 v6, p6

    if-ge v6, v5, :cond_1

    .line 459
    const-string v5, "Failed to find provider"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 463
    :cond_0
    const-string v2, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring notify for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move/from16 v6, p6

    .line 471
    :goto_1
    invoke-virtual {v0, v1, v4}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-virtual {v8, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move/from16 v6, p6

    .line 477
    :goto_2
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v2

    .line 478
    :try_start_0
    invoke-static {v1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v18

    .line 479
    iget-object v3, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/16 v19, 0x0

    move-object/from16 v20, p2

    move/from16 v21, p3

    move/from16 v22, p4

    move-object/from16 v17, v1

    move-object/from16 v16, v3

    move/from16 v23, v4

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    .line 481
    monitor-exit v2

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move-object/from16 v0, p0

    .line 484
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 487
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/content/ContentService$ObserverCollector;->dispatch()V

    .line 489
    invoke-virtual {v0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    move/from16 v4, v25

    .line 490
    :goto_4
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 491
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    .line 492
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 493
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_5

    .line 499
    invoke-virtual {v0, v11}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v13

    const/4 v9, 0x0

    move v14, v11

    move-object/from16 v16, v8

    move-object v8, v3

    move-object/from16 v3, v16

    move-object/from16 v16, p7

    .line 497
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-wide/from16 p2, v1

    goto :goto_9

    :cond_5
    move-object/from16 v26, v8

    move-object v8, v3

    move-object/from16 v3, v26

    .line 504
    :goto_5
    iget-object v9, v0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 505
    :try_start_2
    array-length v13, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 v14, v25

    :goto_6
    if-ge v14, v13, :cond_7

    move-wide/from16 p2, v1

    :try_start_3
    aget-object v1, v7, v14

    .line 506
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 507
    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_6
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v1, p2

    goto :goto_6

    :cond_7
    move-wide/from16 p2, v1

    .line 510
    monitor-exit v9

    add-int/lit8 v4, v4, 0x1

    move-object v1, v8

    move-object v8, v3

    move-object v3, v1

    move-wide/from16 v1, p2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-wide/from16 p2, v1

    :goto_8
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_9

    :cond_8
    move-wide/from16 p2, v1

    .line 513
    invoke-static/range {p2 .. p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_9
    invoke-static/range {p2 .. p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    throw v0
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 351
    :goto_0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_1

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onBootPhase(I)V

    :cond_1
    return-void
.end method

.method public onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1973
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1984
    new-instance v0, Lcom/android/server/content/ContentShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentShellCommand;-><init>(Landroid/content/IContentService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onStartUser(I)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onStartUser(I)V

    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onStopUser(I)V

    :cond_0
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    :cond_0
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 3

    const/4 v0, 0x1

    .line 1366
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1367
    const-string v0, "ContentService"

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1372
    invoke-virtual {p0, p2, p4}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1373
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1375
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1376
    :try_start_0
    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 1379
    invoke-virtual {p0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1381
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .locals 8

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 373
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    .line 375
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v7

    .line 378
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 379
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 p1, 0x1a

    if-ge p5, p1, :cond_1

    .line 384
    const-string p1, "Failed to find provider"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    const-string p1, "ContentService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring content changes for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 382
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_2
    :goto_0
    iget-object p0, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    move-object v4, v0

    move v6, v2

    move v5, v3

    move v3, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 399
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 369
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must pass a valid uri and observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    .line 977
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 981
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 984
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 988
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 989
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 996
    :cond_1
    invoke-virtual {p0, v1, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 998
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v3

    .line 1000
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removePeriodicSync() by uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p3, p1}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    invoke-static {v3, v4}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1005
    throw p0

    .line 982
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 979
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Account must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 2

    .line 1307
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 1310
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1313
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1314
    throw p0

    .line 1313
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 13

    move-object/from16 v5, p3

    const/4 v0, 0x1

    .line 612
    invoke-static {v5, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 613
    invoke-static {v5}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 614
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 616
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 618
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    invoke-virtual {p0, p2, v3, v2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 625
    :cond_1
    invoke-virtual {p0, v3, v5}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 626
    invoke-virtual {p0, v3, v5}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v7

    .line 630
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v11

    .line 632
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    const/4 v6, -0x2

    move v8, v3

    move-object v1, p1

    move-object v4, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    invoke-static {v11, v12}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v11, v12}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 637
    throw p0
.end method

.method public resetTodayStats()V
    .locals 2

    .line 1959
    const-string/jumbo v0, "resetTodayStats"

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    .line 1961
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    .line 1962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1964
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1966
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1967
    throw p0

    :cond_0
    return-void
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 1

    .line 1073
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    return-void
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .locals 10

    .line 1082
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-static {p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result v7

    .line 1091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1092
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 p3, 0x1

    .line 1093
    invoke-virtual {p0, p3, p1, v8}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    invoke-virtual {p0, p2, v8, p4}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_1

    :goto_0
    return-void

    .line 1100
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1102
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move-object v4, p1

    move-object v6, p2

    move v5, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1106
    throw p0

    .line 1083
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 1

    .line 1135
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 9

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1146
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1148
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1150
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1151
    invoke-virtual {p0, v7}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    move v4, p1

    move v5, p2

    .line 1150
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1154
    throw p0
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1

    .line 902
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 11

    .line 908
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 911
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 917
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    const/4 v0, 0x1

    .line 918
    invoke-virtual {p0, v0, p1, v7}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 921
    :cond_0
    invoke-virtual {p0, p2, v7, p4}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    .line 927
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v9

    .line 929
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v3, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 933
    throw p0

    .line 909
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must be non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    .locals 1

    .line 651
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v2, p2

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no permission to request sync as user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 673
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 682
    invoke-virtual {v0, v3, v5}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 683
    invoke-virtual {v0, v3, v5}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v7

    .line 687
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v17

    .line 689
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v14

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v10

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 692
    iget-object v1, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 697
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 699
    invoke-virtual {v0, v10, v11}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v12

    .line 701
    invoke-virtual {v0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v10

    move-object v11, v1

    move-object/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object/from16 v16, v5

    .line 704
    invoke-virtual {v0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x2

    move v8, v3

    move-object/from16 v10, p3

    move-object/from16 v5, v16

    .line 704
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :goto_1
    invoke-static/range {v17 .. v18}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static/range {v17 .. v18}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 711
    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {p0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 416
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 411
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must pass a valid observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final validateExtras(ILandroid/os/Bundle;)V
    .locals 0

    .line 1541
    const-string/jumbo p0, "v_exemption"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_1

    const/16 p0, 0x7d0

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 1549
    :cond_0
    const-string p0, "ContentService"

    const-string p1, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid extras specified."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
