.class public final Lcom/android/server/pm/PreferredActivityHelper;
.super Ljava/lang/Object;
.source "PreferredActivityHelper.java"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$Aks2ICOp_hNourBwhBzdiqPyMQM(Lcom/android/server/pm/PreferredActivityHelper;ILjava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->lambda$updateDefaultHomeNotLocked$0(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bKq6HYe2CK6GmfD6XXGEZix7pRI(Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->lambda$restoreDefaultApps$2(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ipe1UDUqF_Trmw2ff0zpCaFof-Y(Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->lambda$restorePreferredActivities$1(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 78
    iput-object p2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    return-void
.end method


# virtual methods
.method public addPersistentPreferredActivity(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;I)V
    .locals 5

    .line 390
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_4

    .line 395
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->checkDataPathAndSchemeSpecificParts()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result v0

    if-nez v0, :cond_0

    .line 401
    const-string p0, "PackageManager"

    const-string p1, "Cannot set a preferred activity with no filter actions"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 404
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_1

    .line 405
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding persistent preferred activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x4

    const-string v2, "PackageManager"

    invoke-direct {v0, v1, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 411
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;Z)V

    .line 410
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 413
    iget-object p2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 414
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 416
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 418
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 414
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 396
    :cond_3
    const-string p0, "246749702"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 397
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid intent data paths or scheme specific parts in the filter."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 392
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "addPersistentPreferredActivity can only be run by the system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V
    .locals 9

    .line 186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 187
    const-string v5, "add preferred activity"

    const/4 v3, 0x1

    move-object v0, p1

    move/from16 v2, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 194
    const-string p0, "PackageManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring addPreferredActivity() from uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result p1

    if-nez p1, :cond_2

    .line 202
    const-string p0, "PackageManager"

    const-string p1, "Cannot set a preferred activity with no filter actions"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_2
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz p1, :cond_3

    .line 206
    const-string p1, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance p1, Landroid/util/LogPrinter;

    const/4 v0, 0x4

    const-string v1, "PackageManager"

    invoke-direct {p1, v0, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p2, p1, v0}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 210
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p2}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz p9, :cond_4

    if-eqz v1, :cond_4

    .line 214
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 216
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 218
    iget-object p3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3, v2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 219
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 221
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PreferredActivityHelper;->isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    return-void

    .line 222
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    return-void

    .line 219
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    .locals 2

    .line 422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)Z

    move-result p1

    .line 430
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 433
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 434
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 430
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 424
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "clearPackagePersistentPreferredActivities can only be run by the system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearPackagePreferredActivities(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .locals 5

    .line 311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 312
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    invoke-interface {p1, p2, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result v2

    const/16 v4, 0x8

    if-ge v2, v4, :cond_2

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring clearPackagePreferredActivities() from uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 331
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 330
    invoke-interface {p1, v1, v0, v2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    return-void

    .line 334
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 335
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Ljava/lang/String;I)V

    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;I)V
    .locals 3

    .line 121
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 124
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 125
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V

    .line 127
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 128
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 124
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V
    .locals 2

    .line 439
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)Z

    move-result p1

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz p1, :cond_0

    .line 449
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 450
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 451
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 447
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 441
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "clearPersistentPreferredActivity can only be run by the system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findPersistentPreferredActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 10

    .line 696
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 703
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 704
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 705
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object v2, p1

    move v4, p3

    .line 708
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v8

    move-object v0, v3

    move-object v9, v5

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move v5, p3

    move v6, v1

    .line 706
    invoke-interface/range {v2 .. v8}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v3

    move v7, v5

    move-wide v5, v3

    move-object v4, v9

    move-object v3, v0

    .line 710
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    const/4 v8, 0x0

    move v9, p3

    move-object v7, v0

    .line 712
    invoke-interface/range {v2 .. v9}, Lcom/android/server/pm/Computer;->findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    .line 697
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "findPersistentPreferredActivity can only be run by the system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;
    .locals 13

    .line 87
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :goto_1
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PackageManager"

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is holding mLock"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_1
    invoke-interface/range {p1 .. p11}, Lcom/android/server/pm/Computer;->findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object p1

    .line 106
    iget-boolean p2, p1, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    if-eqz p2, :cond_3

    .line 107
    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz p2, :cond_2

    .line 108
    const-string p2, "Preferred activity bookkeeping changed; writing restrictions"

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 112
    :cond_3
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez p0, :cond_4

    if-eqz p9, :cond_5

    :cond_4
    iget-object p0, p1, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez p0, :cond_5

    .line 113
    const-string p0, "No preferred activity to return"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_5
    iget-object p0, p1, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public getDefaultAppsBackup(I)[B
    .locals 5

    .line 553
    const-string v0, "da"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 557
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 559
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 560
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 561
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 562
    invoke-interface {v3, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object p0

    .line 565
    invoke-static {v3, p0}, Lcom/android/server/pm/Settings;->writeDefaultApps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 567
    invoke-interface {v3, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 569
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 571
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz p1, :cond_0

    .line 572
    const-string p1, "PackageManager"

    const-string v0, "Unable to write default apps for backup"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v2

    .line 554
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call getDefaultAppsBackup()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getHomeFilter()Lcom/android/server/pm/WatchedIntentFilter;
    .locals 1

    .line 379
    new-instance p0, Lcom/android/server/pm/WatchedIntentFilter;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Ljava/lang/String;)V

    .line 380
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 381
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    return-object p0
.end method

.method public getLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 11

    .line 748
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 751
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 752
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying last chosen activity for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    int-to-long v3, p4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    .line 753
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move v10, v5

    move-wide v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    .line 755
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredActivities(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 1

    .line 645
    invoke-static {p2}, Lcom/android/server/pm/WatchedIntentFilter;->toWatchedIntentFilterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 646
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/pm/PreferredActivityHelper;->getPreferredActivitiesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result p0

    .line 647
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 648
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 649
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p3}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public final getPreferredActivitiesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 6

    .line 660
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 661
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 665
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 667
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 669
    invoke-virtual {v2}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 670
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 671
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreferredActivity;

    if-nez v3, :cond_2

    goto :goto_0

    .line 673
    :cond_2
    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_3

    .line 675
    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v5, v5, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v5, :cond_1

    .line 677
    :cond_3
    invoke-interface {p1, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 676
    invoke-interface {p1, v4, p0, v0}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 682
    new-instance v4, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v3}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p3, :cond_1

    .line 685
    iget-object v3, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v3, v3, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return v1
.end method

.method public getPreferredActivityBackup(I)[B
    .locals 5

    .line 497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 501
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 503
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v2

    .line 504
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 505
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 506
    const-string/jumbo v3, "pa"

    invoke-interface {v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, p1, v4}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;IZ)V

    .line 510
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 512
    const-string/jumbo p0, "pa"

    invoke-interface {v2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 514
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 522
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 510
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 516
    :goto_0
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz p1, :cond_0

    .line 517
    const-string p1, "PackageManager"

    const-string v0, "Unable to write preferred activities for backup"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v1

    .line 498
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call getPreferredActivityBackup()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z
    .locals 0

    .line 456
    const-string p0, "android.intent.action.MAIN"

    invoke-virtual {p1, p0}, Lcom/android/server/pm/WatchedIntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.intent.category.HOME"

    invoke-virtual {p1, p0}, Lcom/android/server/pm/WatchedIntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.intent.category.DEFAULT"

    .line 457
    invoke-virtual {p1, p0}, Lcom/android/server/pm/WatchedIntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$restoreDefaultApps$2(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 1

    .line 590
    invoke-static {p1}, Lcom/android/server/pm/Settings;->readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 593
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->setDefaultBrowser(Ljava/lang/String;I)V

    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 599
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->setPendingDefaultBrowserLPw(Ljava/lang/String;I)V

    .line 601
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_1
    return-void
.end method

.method public final synthetic lambda$restorePreferredActivities$1(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    .line 537
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 538
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    return-void

    :catchall_0
    move-exception p0

    .line 537
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$updateDefaultHomeNotLocked$0(ILjava/lang/Boolean;)V
    .locals 0

    .line 173
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 174
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    :cond_0
    return-void
.end method

.method public replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 10

    .line 231
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_8

    .line 235
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataAuthorities()I

    move-result v0

    if-nez v0, :cond_7

    .line 236
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataPaths()I

    move-result v0

    if-nez v0, :cond_7

    .line 237
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v0

    if-gt v0, v6, :cond_7

    .line 238
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_7

    .line 244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 245
    const-string/jumbo v5, "replace preferred activity"

    const/4 v3, 0x1

    move-object v0, p1

    move/from16 v2, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 250
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 254
    const-string p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring replacePreferredActivity() from uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 254
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 258
    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 259
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 263
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 264
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 267
    invoke-virtual {v0, p2}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 268
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_5

    const/4 v3, 0x0

    .line 269
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreferredActivity;

    .line 270
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const/high16 v5, 0xfff0000

    const/4 v6, 0x4

    if-eqz v4, :cond_3

    .line 271
    const-string v4, "PackageManager"

    const-string v7, "Checking replace of preferred:"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v4, Landroid/util/LogPrinter;

    const-string v7, "PackageManager"

    invoke-direct {v4, v6, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v7, "  "

    invoke-virtual {p2, v4, v7}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 273
    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v4, v4, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v4, :cond_2

    .line 274
    const-string v4, "PackageManager"

    const-string v7, "  -- CUR; not mAlways!"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    .line 276
    :cond_2
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- CUR: mMatch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v8, v8, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- CUR: mSet="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 278
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 277
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- CUR: mComponent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- NEW: mMatch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v8, p3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- CUR: mSet="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- CUR: mComponent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_3
    :goto_2
    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v7, v4, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v7, :cond_5

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, p5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v8, v4, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    and-int/2addr v5, p3

    if-ne v8, v5, :cond_5

    .line 288
    invoke-virtual {v4, p4}, Lcom/android/server/pm/PreferredComponent;->sameSet([Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 290
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz p0, :cond_4

    .line 291
    const-string p0, "PackageManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Replacing with same preferred activity "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance p0, Landroid/util/LogPrinter;

    const-string p3, "PackageManager"

    invoke-direct {p0, v6, p3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string p3, "  "

    invoke-virtual {p2, p0, p3}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 296
    :cond_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :cond_5
    if-eqz v1, :cond_6

    .line 300
    :try_start_4
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V

    .line 303
    :cond_6
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 306
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-string v8, "Replacing preferred"

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, v2

    move-object v2, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    return-void

    .line 303
    :goto_3
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 239
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "replacePreferredActivity expects filter to have no data authorities, paths, or types; and at most one scheme."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "replacePreferredActivity expects filter to have only 1 action."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetApplicationPreferences(I)V
    .locals 6

    .line 613
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 618
    :try_start_0
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 619
    iget-object v4, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v2, v3, p1}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 621
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 622
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 623
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 625
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 626
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 627
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    .line 628
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->resetRuntimePermissionsForUser(I)V

    .line 629
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 630
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->resetNetworkPolicies(I)V

    .line 632
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 634
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    .line 629
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception p0

    .line 621
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 634
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    throw p0
.end method

.method public final resetNetworkPolicies(I)V
    .locals 1

    .line 639
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->resetUserState(I)V

    return-void
.end method

.method public restoreDefaultApps([BI)V
    .locals 2

    .line 581
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 586
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 587
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 588
    const-string p1, "da"

    new-instance v1, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PreferredActivityHelper;)V

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 606
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz p1, :cond_0

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception restoring default apps: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 582
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call restoreDefaultApps()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;)V
    .locals 2

    .line 468
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    const-string v1, "PackageManager"

    if-eq p0, v0, :cond_1

    .line 473
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz p0, :cond_2

    .line 474
    const-string p0, "Didn\'t find start tag during restore"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 479
    :cond_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 480
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz p0, :cond_2

    .line 481
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Found unexpected tag "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 487
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p0

    const/4 p3, 0x4

    if-ne p0, p3, :cond_4

    goto :goto_1

    .line 488
    :cond_4
    invoke-interface {p4, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;->apply(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    return-void
.end method

.method public restorePreferredActivities([BI)V
    .locals 2

    .line 526
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 531
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 532
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 533
    const-string/jumbo p1, "pa"

    new-instance v1, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PreferredActivityHelper;)V

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 541
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz p1, :cond_0

    .line 542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception restoring preferred activities: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 527
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call restorePreferredActivities()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHomeActivity(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;I)V
    .locals 9

    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 354
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-interface {p1, v0, p3}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    .line 359
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 360
    new-array v6, v1, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    .line 362
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 363
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 364
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    aput-object v5, v6, v2

    if-nez v3, :cond_1

    .line 366
    invoke-virtual {v5, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 374
    invoke-virtual {p0}, Lcom/android/server/pm/PreferredActivityHelper;->getHomeFilter()Lcom/android/server/pm/WatchedIntentFilter;

    move-result-object v4

    const/high16 v5, 0x100000

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PreferredActivityHelper;->replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    return-void

    :cond_3
    move-object v7, p2

    move v8, p3

    .line 371
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Component "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be home on user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;)V
    .locals 14

    move-object/from16 v1, p2

    move/from16 v0, p4

    move-object/from16 v11, p5

    .line 722
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 725
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 726
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_1

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLastChosenActivity intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " resolvedType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " flags="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " filter="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " match="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p6

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " activity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p7

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PackageManager"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v2, Landroid/util/PrintStreamPrinter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v2, v4}, Landroid/util/PrintStreamPrinter;-><init>(Ljava/io/PrintStream;)V

    const-string v4, "    "

    invoke-virtual {v11, v2, v4}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v3, p3

    move/from16 v12, p6

    move-object/from16 v13, p7

    :goto_0
    const/4 v2, 0x0

    .line 735
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    int-to-long v4, v0

    move-object v0, p1

    move-object v2, v3

    move-wide v3, v4

    move v5, v10

    .line 736
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide v4, v3

    move-object/from16 v3, p3

    .line 739
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;

    .line 742
    const-string v8, "Setting last chosen"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v10

    move-object v2, v11

    move v3, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    return-void
.end method

.method public updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is holding mLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 345
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 346
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z
    .locals 13

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is holding mLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isSystemReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 148
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getHomeIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/32 v5, 0xc0000

    move-object v2, p1

    move v7, p2

    .line 149
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    move v12, v7

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    move-object v4, v3

    move-object v3, v2

    move-object v2, p0

    .line 151
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    move v7, v12

    if-eqz p0, :cond_2

    .line 154
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_2

    .line 155
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 156
    :goto_0
    iget-object p1, v2, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, v7}, Lcom/android/server/pm/PackageManagerService;->getActiveLauncherPackageName(I)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 160
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-interface {v3, p1}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 161
    iget-object p2, v2, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    if-nez p0, :cond_5

    return v1

    .line 171
    :cond_5
    iget-object p1, v2, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance p2, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, v2, v7}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PreferredActivityHelper;I)V

    invoke-virtual {p1, p0, v7, p2}, Lcom/android/server/pm/PackageManagerService;->setActiveLauncherPackage(Ljava/lang/String;ILjava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method
