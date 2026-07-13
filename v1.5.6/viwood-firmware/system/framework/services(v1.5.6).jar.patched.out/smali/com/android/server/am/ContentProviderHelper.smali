.class public Lcom/android/server/am/ContentProviderHelper;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"


# static fields
.field public static final PROCESS_STATE_STATS_FORMAT:[I


# instance fields
.field public final mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

.field public final mLaunchingProviders:Ljava/util/ArrayList;

.field public final mProcessStateStatsLongs:[J

.field public final mProviderMap:Lcom/android/server/am/ProviderMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSystemProvidersInstalled:Z


# direct methods
.method public static synthetic $r8$lambda$7SqNWgaMV7-OpTBuN-1CMmNHiyU(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->lambda$checkContentProviderAssociation$4(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Cuz--ZRyWbI5VNWXF2ERo-dfHW4(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ContentProviderHelper;->lambda$getMimeTypeFilterAsync$0(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JV9jTPlBHAPZLxkKAqq24ds-FLE(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ContentProviderHelper;->lambda$getMimeTypeFilterAsync$1(Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WgT9vu5eZilG5Q2yFu6AlQnBbWA(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->lambda$decProviderCountLocked$3(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ybb6ASgJllmnwf29cCLpR_JR-Yg(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ContentProviderHelper;->lambda$installEncryptionUnawareProviders$2(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x220

    const/16 v1, 0x2820

    const/16 v2, 0x20

    .line 1712
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    const/4 v0, 0x1

    .line 1718
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    .line 126
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p2, :cond_0

    .line 127
    new-instance p2, Lcom/android/server/am/ProviderMap;

    invoke-direct {p2, p1}, Lcom/android/server/am/ProviderMap;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-void
.end method

.method public static resolveParentUserIdForCloneProfile(I)I
    .locals 2

    .line 1141
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1142
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1144
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1148
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 5

    .line 1004
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string v2, "appNotRespondingViaProvider()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    check-cast p1, Lcom/android/server/am/ContentProviderConnection;

    .line 1008
    const-string v0, "ContentProviderHelper"

    if-nez p1, :cond_0

    .line 1009
    const-string p0, "ContentProviderConnection is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1015
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_1

    .line 1016
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const-wide/16 v2, 0x40

    .line 1013
    const-string v4, "appNotRespondingViaProvider: "

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 1018
    :try_start_0
    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-nez p1, :cond_2

    .line 1020
    const-string p0, "Failed to find hosting ProcessRecord"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1024
    :cond_2
    :try_start_1
    const-string v0, "ContentProvider not responding"

    invoke-static {v0}, Lcom/android/internal/os/TimeoutRecord;->forContentProvider(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    .line 1026
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1028
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1029
    throw p0
.end method

.method public final canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;I)Z
    .locals 0

    .line 1985
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1988
    :cond_0
    const-class p0, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 1989
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    if-eqz p0, :cond_1

    .line 1995
    invoke-interface {p0, p1}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;)Z

    move-result p0

    return p0

    .line 1991
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SdkSandboxManagerLocal not found when checking whether SDK sandbox uid may access the contentprovider."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final canClearIdentity(III)Z
    .locals 1

    .line 1111
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, p3, :cond_0

    return v0

    .line 1114
    :cond_0
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    const/4 p3, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1117
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public checkAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    .line 1895
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1896
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 1897
    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V
    .locals 7

    .line 726
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    .line 730
    const-string p3, "getContentProviderImpl: before checkContentProviderPermission"

    invoke-virtual {p0, p7, p8, p3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 732
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eqz p1, :cond_0

    .line 733
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p0

    move-object v6, p1

    move-object v1, p2

    move v4, p4

    move v5, p5

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 731
    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 737
    const-string p0, "getContentProviderImpl: after checkContentProviderPermission"

    invoke-virtual {v0, p7, p8, p0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    return-void

    .line 735
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 727
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Content provider lookup "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: association not allowed with package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1158
    iget-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v1, "ContentProviderHelper"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    .line 1163
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1165
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1167
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1168
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    move v5, p2

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1175
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    const-wide/32 v0, 0xc0e00

    invoke-interface {p2, p1, v0, v1, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v2, p2

    goto :goto_3

    :catch_0
    const/4 p2, 0x0

    goto :goto_2

    :goto_3
    if-nez v2, :cond_2

    .line 1185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find provider "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; expected to find a valid ContentProvider for this authority"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1189
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1192
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter p1

    .line 1193
    :try_start_1
    iget-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p2, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find PID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 1197
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1198
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1198
    :goto_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_1

    .line 1664
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 1665
    :cond_0
    const-string p0, "<null>"

    return-object p0

    .line 1667
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p2

    new-instance v0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V

    invoke-virtual {p2, v0}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;
    .locals 14

    move/from16 v3, p3

    move/from16 v9, p5

    .line 1584
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/ContentProviderHelper;->canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1585
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentProvider access not allowed from sdk sandbox UID. ProviderInfo: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-virtual {p1}, Landroid/content/pm/ProviderInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    .line 1591
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v4, p4

    invoke-virtual {v1, v4}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v12

    .line 1592
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v12, v1, :cond_2

    .line 1593
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v1, v3, p1, v12, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v11

    :cond_1
    const/4 v1, 0x1

    move v13, v1

    goto :goto_0

    :cond_2
    move v13, v10

    .line 1599
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkContentProviderPermissionLocked "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v12, :cond_3

    goto :goto_1

    :cond_3
    move v10, v13

    goto :goto_1

    :cond_4
    move/from16 v2, p2

    move/from16 v1, p4

    .line 1610
    :goto_1
    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v4, v2, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v4

    if-nez v4, :cond_5

    return-object v11

    .line 1615
    :cond_5
    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v4, v2, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v4

    if-nez v4, :cond_6

    return-object v11

    .line 1621
    :cond_6
    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v4, :cond_9

    .line 1623
    array-length v5, v4

    :cond_7
    if-lez v5, :cond_9

    add-int/lit8 v5, v5, -0x1

    .line 1626
    aget-object v6, v4, v5

    .line 1627
    invoke-virtual {v6}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1628
    iget-object v8, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v12, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v7, v2, v3, v8, v12}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v7

    if-nez v7, :cond_8

    return-object v11

    .line 1633
    :cond_8
    invoke-virtual {v6}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 1634
    iget-object v7, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v6, v2, v3, v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v6

    if-nez v6, :cond_7

    return-object v11

    :cond_9
    if-nez v10, :cond_a

    .line 1641
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1642
    invoke-interface {p0, v3, p1, v1, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    if-eqz p0, :cond_a

    return-object v11

    .line 1647
    :cond_a
    iget-boolean p0, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez p0, :cond_b

    .line 1648
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " that is not exported from UID "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 1649
    :cond_b
    const-string p0, "android.permission.MANAGE_DOCUMENTS"

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1650
    const-string p0, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    goto :goto_2

    .line 1652
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " requires "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1654
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: opening provider "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_d

    move-object/from16 v0, p6

    goto :goto_3

    .line 1655
    :cond_d
    const-string v0, "(null)"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1657
    const-string v0, "ContentProviderHelper"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public checkContentProviderUriPermission(Landroid/net/Uri;III)I
    .locals 13

    .line 1205
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "ContentProviderHelper"

    const/4 v8, -0x1

    if-eqz v0, :cond_0

    .line 1206
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to check Uri permission because caller is holding WM lock; assuming permission denied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v7, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8

    .line 1211
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x0

    .line 1215
    :try_start_0
    const-string v5, "*checkContentProviderUriPermission*"

    const/4 v3, 0x0

    move-object v1, p0

    move v6, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v3, :cond_2

    .line 1219
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1220
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_1

    .line 1239
    :try_start_2
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1242
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1243
    throw p0

    .line 1225
    :cond_1
    :try_start_3
    new-instance v5, Landroid/content/AttributionSource;

    .line 1226
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v4, v0, v11}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v0, v3, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move/from16 v12, p4

    invoke-interface {v0, v5, p1, v4, v12}, Landroid/content/IContentProvider;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1239
    :try_start_4
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1242
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1243
    throw p0

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    .line 1239
    :try_start_5
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object p0, v0

    .line 1242
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1243
    throw p0

    .line 1242
    :cond_3
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_4
    move-exception v0

    move-object p1, v0

    move-object v3, v11

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v3, v11

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v3, v11

    goto :goto_3

    .line 1234
    :goto_1
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while determining type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_4

    .line 1239
    :try_start_7
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object p0, v0

    .line 1242
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1243
    throw p0

    .line 1242
    :cond_4
    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    .line 1231
    :goto_3
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content provider dead retrieving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_5

    .line 1239
    :try_start_9
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object p0, v0

    .line 1242
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1243
    throw p0

    .line 1242
    :cond_5
    :goto_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :goto_5
    if-eqz v3, :cond_6

    .line 1239
    :try_start_a
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object p0, v0

    .line 1242
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1243
    throw p0

    .line 1242
    :cond_6
    :goto_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1244
    throw p1
.end method

.method public final checkGetAnyTypePermission(II)Z
    .locals 1

    .line 1096
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "android.permission.GET_ANY_PROVIDER_TYPE"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkTime(JLjava/lang/String;)V
    .locals 2

    .line 1942
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x32

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    .line 1945
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Slow operation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms so far, now at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 6

    .line 1910
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 1911
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 1912
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eq v4, p1, :cond_0

    goto :goto_1

    .line 1916
    :cond_0
    iget v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    move p2, v1

    :cond_1
    if-nez p2, :cond_2

    .line 1920
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isBad()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasConnectionOrHandle()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v1

    goto :goto_1

    .line 1923
    :cond_2
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1509
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessStateController;->removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z

    return v0

    .line 1514
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->totalRefCount()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    .line 1515
    invoke-virtual {p1, p4}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    return v0

    :cond_1
    if-eqz p5, :cond_2

    .line 1521
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p5, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V

    const-wide/16 p0, 0x1388

    invoke-virtual {p2, p5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1525
    :cond_2
    invoke-virtual {p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    :goto_0
    return p3
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 0

    .line 2008
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 2017
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProviderMap;->dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public dumpProvidersLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 3

    .line 1951
    new-instance p1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 1952
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 1954
    const-string p1, "ACTIVITY MANAGER CONTENT PROVIDERS (dumpsys activity providers)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p1, p2, p5, p6}, Lcom/android/server/am/ProviderMap;->dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    move-result p1

    .line 1959
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 1961
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    const/4 p5, 0x0

    move v0, p5

    move p5, p3

    move p3, p1

    :goto_0
    if-ltz p5, :cond_3

    .line 1962
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p6, :cond_0

    .line 1963
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    .line 1967
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1969
    :cond_1
    const-string p1, "  Launching content providers:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p1, p4

    move p3, p1

    move v0, p3

    .line 1973
    :cond_2
    const-string v2, "  Launching #"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1974
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 1979
    const-string p0, "  (nothing)"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1260
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-wide/32 v6, 0x10000c00

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1264
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    return-object v2

    .line 1272
    :cond_0
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const-string v5, "ActivityManager_MU"

    if-eqz v4, :cond_1

    .line 1273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateApplicationProvidersLocked, app.info.uid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1277
    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1278
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessProviderRecord;->ensureProviderCapacity(I)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v4, :cond_a

    .line 1281
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroid/content/pm/ProviderInfo;

    .line 1282
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v12, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v11, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v14, v12, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v9, v10, v11, v13, v14}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v15

    .line 1284
    invoke-virtual {v0, v12}, Lcom/android/server/am/ContentProviderHelper;->isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z

    move-result v9

    const/16 v16, 0x1

    if-eqz v9, :cond_2

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eqz v9, :cond_2

    .line 1289
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_4

    .line 1294
    :cond_2
    iget-object v9, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v9

    .line 1295
    iget-object v10, v12, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v11, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    move v10, v7

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v10, v16

    :goto_3
    if-eqz v9, :cond_5

    if-nez v10, :cond_5

    .line 1300
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1306
    :cond_5
    new-instance v14, Landroid/content/ComponentName;

    iget-object v9, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v10, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v9, v14, v10}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v9

    if-nez v9, :cond_6

    .line 1309
    new-instance v10, Lcom/android/server/am/ContentProviderRecord;

    iget-object v11, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct/range {v10 .. v15}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V

    .line 1310
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v9, v14, v10}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    move-object v9, v10

    .line 1312
    :cond_6
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v10, :cond_7

    .line 1313
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateApplicationProvidersLocked, cpi.uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_7
    iget-object v10, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 1316
    iget-boolean v9, v12, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v9, :cond_8

    const-string v9, "android"

    iget-object v10, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1321
    :cond_8
    iget-object v9, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v13, v9, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1, v10, v13, v14, v9}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1324
    :cond_9
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1327
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v2

    :cond_b
    return-object v3

    :catch_0
    return-object v2
.end method

.method public getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
    .locals 9

    .line 136
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "getContentProvider"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eqz p2, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, v4, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given calling package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v2, p3

    move v8, p4

    move v7, p5

    .line 150
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0

    .line 138
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "null IApplicationThread when getting content provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "ContentProviderHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;
    .locals 10

    .line 156
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v3, "Do not have permission in call getContentProviderExternal()"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v8, "getContentProvider"

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move v5, p2

    .line 159
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eqz p4, :cond_0

    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    goto :goto_0

    .line 163
    :cond_0
    const-string v1, "*external*"

    move-object v4, v1

    move-object v0, p0

    move-object v2, p3

    move-object v1, p1

    .line 162
    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0
.end method

.method public getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;
    .locals 9

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v8, p5

    .line 168
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;
    .locals 48

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v13, p8

    .line 180
    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12

    .line 181
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v10

    const/4 v2, 0x0

    if-eqz v14, :cond_1

    .line 186
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when getting content provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object/from16 v22, v12

    goto/16 :goto_39

    :cond_1
    move-object v3, v2

    .line 196
    :goto_0
    const-string v0, "getContentProviderImpl: getProviderByName"

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 198
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 208
    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 210
    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v6

    .line 211
    :goto_1
    invoke-virtual {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_3

    .line 213
    :cond_5
    :goto_2
    iget-object v7, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v7, v15, v13}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v7

    .line 217
    invoke-virtual {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 218
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 220
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 223
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 225
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    if-ne v3, v13, :cond_4

    move v3, v6

    :goto_3
    if-nez v7, :cond_b

    if-eqz v13, :cond_b

    .line 233
    iget-object v7, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v7, v15, v6}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v7

    if-eqz v7, :cond_a

    const/16 v17, 0x1

    .line 235
    iget-object v5, v7, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 237
    iget-object v6, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v18, v3

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move/from16 v19, v4

    iget-object v4, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v7

    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-wide/from16 v21, v8

    iget v8, v5, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v2, :cond_6

    move/from16 v4, p4

    goto :goto_4

    .line 240
    :cond_6
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_4
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 239
    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, v5

    move-object/from16 v3, v20

    const/4 v5, 0x0

    :goto_5
    const/4 v6, 0x0

    goto :goto_7

    .line 243
    :cond_7
    invoke-virtual {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v19, :cond_8

    .line 245
    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    move-object v3, v5

    move v5, v0

    move-object v0, v3

    move-object/from16 v3, v20

    goto :goto_5

    :cond_8
    move-object v0, v5

    move v5, v13

    move/from16 v6, v18

    move-object/from16 v3, v20

    goto :goto_7

    :cond_9
    move v5, v13

    move/from16 v6, v18

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    move/from16 v18, v3

    move-object/from16 v20, v7

    move-wide/from16 v21, v8

    const/16 v17, 0x1

    move v5, v13

    move/from16 v6, v18

    move-object/from16 v3, v20

    :goto_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_b
    move/from16 v18, v3

    move-wide/from16 v21, v8

    const/16 v17, 0x1

    move-object v3, v7

    move v5, v13

    move/from16 v6, v18

    goto :goto_6

    :goto_7
    if-eqz v3, :cond_d

    .line 256
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_d

    .line 257
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 264
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 265
    const-string v7, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " was killed by AM but isn\'t really dead"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move/from16 v18, v4

    move-object/from16 v19, v7

    goto :goto_9

    :cond_c
    move/from16 v18, v4

    :goto_8
    const/16 v19, 0x0

    goto :goto_9

    :cond_d
    const/16 v18, 0x0

    goto :goto_8

    :goto_9
    if-eqz v2, :cond_e

    .line 272
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    :goto_a
    move/from16 v20, v4

    goto :goto_b

    :cond_e
    const/4 v4, -0x1

    goto :goto_a

    :goto_b
    const/4 v4, 0x7

    const-wide/16 v7, 0x0

    if-eqz v18, :cond_16

    .line 275
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_f

    .line 278
    invoke-virtual {v3, v2}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 279
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 280
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    move/from16 v4, p4

    move/from16 v11, v17

    move-wide/from16 v8, v21

    const/4 v10, 0x0

    .line 279
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 286
    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v13

    .line 288
    iput-object v10, v13, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 289
    iget v1, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v0, 0x1dd

    const/4 v3, 0x1

    const/4 v4, 0x1

    move/from16 v8, v20

    move/from16 v2, p4

    move-object/from16 v6, p5

    move/from16 v7, v20

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    .line 297
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v13

    :cond_f
    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    const/16 v16, 0x0

    .line 303
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 304
    invoke-interface {v1, v15, v7, v8, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_10

    .line 305
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 310
    :catch_0
    :cond_10
    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 311
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move v14, v4

    move-wide/from16 v8, v21

    move-object/from16 v1, p0

    move/from16 v4, p4

    .line 310
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 313
    iget-object v4, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v21

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    :try_start_4
    const-string v4, "getContentProviderImpl: incProviderCountLocked"

    invoke-virtual {v1, v8, v9, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 320
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-wide v6, v10

    move-wide v10, v8

    const/4 v9, 0x1

    move/from16 v8, p7

    move-object/from16 v27, v3

    move-wide/from16 v25, v6

    move-object/from16 v22, v12

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v3, v0

    move-object v12, v4

    move v0, v5

    move-object/from16 v4, p3

    move/from16 v5, p4

    :try_start_5
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v9

    move-object v8, v2

    move-wide v12, v10

    .line 324
    const-string v2, "getContentProviderImpl: before updateOomAdj"

    invoke-virtual {v1, v12, v13, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 325
    iget-object v2, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getVerifiedAdj()I

    move-result v2

    .line 326
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 327
    invoke-virtual {v4, v8, v5}, Lcom/android/server/am/OomAdjuster;->evaluateProviderConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 328
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/am/ProcessStateController;->runUpdate(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v5

    goto :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :cond_11
    move/from16 v5, v17

    :goto_c
    if-eqz v5, :cond_12

    .line 336
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    if-eq v2, v4, :cond_12

    iget-object v2, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 337
    invoke-virtual {v1, v2}, Lcom/android/server/am/ContentProviderHelper;->isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v6, 0x0

    goto :goto_d

    :cond_12
    move v6, v5

    .line 340
    :goto_d
    iget-object v2, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v2, v15}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v2, "getContentProviderImpl: after updateOomAdj"

    invoke-virtual {v1, v12, v13, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 342
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    if-eqz v2, :cond_13

    .line 343
    const-string v2, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adjust success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-nez v6, :cond_15

    .line 354
    const-string v2, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is crashing; detaching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move/from16 v5, p7

    move-object v2, v9

    .line 356
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v3

    if-nez v2, :cond_14

    .line 378
    :try_start_6
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 361
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    :catchall_2
    move-exception v0

    goto/16 :goto_39

    .line 366
    :cond_14
    :try_start_7
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v14, p0

    move-object/from16 v10, p5

    move/from16 v30, v0

    move-object/from16 v19, v2

    move-object/from16 v29, v8

    move-object/from16 v2, v16

    move/from16 v11, v20

    const/4 v6, 0x0

    move-object/from16 v20, v1

    goto :goto_e

    :cond_15
    move-object v1, v3

    move-object/from16 v28, v9

    .line 368
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    .line 369
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v3, v27

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move v4, v0

    const/16 v0, 0x1dd

    move-object/from16 v27, v3

    const/4 v3, 0x1

    move v6, v4

    const/4 v4, 0x1

    move-object/from16 v14, p0

    move/from16 v30, v6

    move-object/from16 v29, v8

    move/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v6, p5

    move-object/from16 v20, v1

    move v1, v2

    move/from16 v2, p4

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v10, v6

    move v11, v7

    move/from16 v6, v18

    move-object/from16 v2, v28

    .line 378
    :goto_e
    :try_start_8
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v6

    move-object/from16 v0, v27

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object/from16 v22, v12

    :goto_f
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_16
    move-wide/from16 v25, v21

    move-object/from16 v22, v12

    move-wide/from16 v12, v25

    move-object v14, v1

    move-object/from16 v29, v2

    move/from16 v30, v5

    move-wide/from16 v25, v10

    move/from16 v11, v20

    const/16 v16, 0x0

    move-object/from16 v10, p5

    move-object/from16 v20, v3

    move-object/from16 v2, v16

    :goto_10
    if-nez v18, :cond_36

    .line 384
    :try_start_9
    const-string v1, "getContentProviderImpl: before resolveContentProvider"

    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 385
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-wide/16 v2, 0xc00

    move/from16 v5, v30

    :try_start_a
    invoke-interface {v1, v15, v2, v3, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 389
    const-string v1, "getContentProviderImpl: after resolveContentProvider"

    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catch_1
    :goto_11
    move-object v3, v0

    goto :goto_12

    :catch_2
    move/from16 v5, v30

    goto :goto_11

    :goto_12
    if-nez v3, :cond_17

    .line 393
    :try_start_b
    monitor-exit v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 398
    :cond_17
    :try_start_c
    iget-object v0, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v0, v1, v2, v4, v6}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v2, v29

    if-nez v2, :cond_18

    move/from16 v1, p4

    goto :goto_13

    .line 401
    :cond_18
    iget v1, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_13
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 400
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    move/from16 v35, v17

    goto :goto_14

    :cond_19
    move-object/from16 v2, v29

    :cond_1a
    const/16 v35, 0x0

    :goto_14
    if-eqz v35, :cond_1b

    const/4 v5, 0x0

    .line 405
    :cond_1b
    iget-object v0, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 406
    const-string v0, "getContentProviderImpl: got app info for user"

    invoke-virtual {v14, v12, v13, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    xor-int/lit8 v6, v35, 0x1

    move/from16 v4, p4

    move-wide v8, v12

    move-object v1, v14

    move-object v7, v15

    move/from16 v14, v18

    move-object/from16 v0, v19

    .line 408
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    move-object v12, v1

    move-object v4, v3

    move v15, v5

    move-object v13, v7

    move-object v3, v2

    move-wide v1, v8

    .line 411
    iget-object v5, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v5, :cond_1d

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string/jumbo v6, "system"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_15

    .line 415
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to launch content provider before system ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_1d
    :goto_15
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 422
    :try_start_d
    iget-boolean v5, v12, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    if-nez v5, :cond_1f

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string/jumbo v5, "system"

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 423
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_16

    .line 424
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot access system provider: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' before system providers are installed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    move-object v1, v12

    goto/16 :goto_28

    .line 427
    :cond_1f
    :goto_16
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 431
    :try_start_e
    iget-object v5, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v6, 0x0

    invoke-virtual {v5, v15, v6}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v5

    if-nez v5, :cond_20

    .line 432
    const-string v0, "ContentProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    monitor-exit v22
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 438
    :cond_20
    :try_start_f
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v6, "getContentProviderImpl: before getProviderByClass"

    invoke-virtual {v12, v1, v2, v6}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 440
    iget-object v6, v12, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v6, v5, v15}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v6

    .line 441
    const-string v7, "getContentProviderImpl: after getProviderByClass"

    invoke-virtual {v12, v1, v2, v7}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v6, :cond_22

    .line 448
    iget-object v7, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v7, :cond_21

    if-eqz v0, :cond_21

    goto :goto_17

    :cond_21
    const/16 v18, 0x0

    goto :goto_18

    :cond_22
    :goto_17
    move/from16 v18, v17

    :goto_18
    if-eqz v18, :cond_25

    .line 450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 455
    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4, v3, v15, v0}, Lcom/android/server/am/ContentProviderHelper;->requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 457
    monitor-exit v22
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 461
    :cond_23
    :try_start_10
    const-string v0, "getContentProviderImpl: before getApplicationInfo"

    invoke-virtual {v12, v1, v2, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 462
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v9, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-object/from16 v34, v5

    move-object/from16 v19, v6

    const-wide/16 v5, 0x400

    :try_start_11
    invoke-interface {v0, v9, v5, v6, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 465
    const-string v5, "getContentProviderImpl: after getApplicationInfo"

    invoke-virtual {v12, v1, v2, v5}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v0, :cond_24

    .line 467
    const-string v0, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package info for content provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 475
    :try_start_12
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 468
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    :catchall_5
    move-exception v0

    goto :goto_19

    .line 470
    :cond_24
    :try_start_13
    iget-object v5, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v0, v15}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v33

    .line 471
    new-instance v30, Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-object/from16 v31, v0

    move-object/from16 v32, v4

    :try_start_14
    invoke-direct/range {v30 .. v35}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    move-object/from16 v4, v32

    .line 475
    :try_start_15
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v5, v30

    goto :goto_1c

    :catch_3
    move-object/from16 v4, v32

    goto :goto_1a

    :catch_4
    move-object/from16 v34, v5

    move-object/from16 v19, v6

    goto :goto_1a

    :goto_19
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    throw v0

    .line 475
    :catch_5
    :goto_1a
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    :cond_25
    move-object/from16 v34, v5

    move-object/from16 v19, v6

    :goto_1b
    move-object/from16 v5, v19

    .line 479
    :goto_1c
    const-string v0, "getContentProviderImpl: now have ContentProviderRecord"

    invoke-virtual {v12, v1, v2, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v3, :cond_26

    .line 481
    invoke-virtual {v5, v3}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_26

    move-object/from16 v6, v16

    move/from16 v7, v17

    .line 486
    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    monitor-exit v22
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 489
    :cond_26
    :try_start_16
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_28

    .line 490
    const-string v0, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LAUNCHING REMOTE PROVIDER (myuid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_27

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1d

    :cond_27
    const/4 v7, 0x0

    :goto_1d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " pruid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    .line 492
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 490
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_28
    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v0, :cond_2a

    .line 500
    iget-object v7, v12, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_29

    goto :goto_1f

    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_2a
    :goto_1f
    if-lt v6, v0, :cond_33

    .line 507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 510
    :try_start_17
    iget-object v0, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 512
    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x1f

    invoke-virtual {v0, v6, v15, v7}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    goto :goto_20

    :catchall_6
    move-exception v0

    goto/16 :goto_26

    .line 517
    :cond_2b
    :goto_20
    :try_start_18
    const-string v0, "getContentProviderImpl: before set stopped state"

    invoke-virtual {v12, v1, v2, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 519
    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 521
    invoke-virtual {v5}, Lcom/android/server/am/ContentProviderRecord;->toString()Ljava/lang/String;

    move-result-object v7

    .line 519
    invoke-virtual {v0, v6, v15, v10, v7}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v0, "getContentProviderImpl: after set stopped state"

    invoke-virtual {v12, v1, v2, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto :goto_21

    :catch_6
    move-exception v0

    .line 524
    :try_start_19
    const-string v6, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed trying to unstop package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_21
    const-string v0, "getContentProviderImpl: looking for process record"

    invoke-virtual {v12, v1, v2, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 530
    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 533
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    if-eqz v6, :cond_2e

    .line 534
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v7

    if-nez v7, :cond_2e

    .line 535
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    if-eqz v7, :cond_2c

    .line 536
    const-string v7, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Installing in existing process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_2c
    iget-object v7, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v8, v5}, Lcom/android/server/am/ProcessStateController;->addPublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 540
    const-string v7, "getContentProviderImpl: scheduling install"

    invoke-virtual {v12, v1, v2, v7}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 541
    iget-object v7, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    const/4 v8, 0x7

    invoke-virtual {v7, v0, v8}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 544
    :try_start_1a
    invoke-interface {v6, v4}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :catch_7
    :cond_2d
    move-wide v8, v1

    .line 548
    :try_start_1b
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v30, v5

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 554
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    move-wide v6, v8

    const/4 v9, 0x0

    move-wide/from16 v23, v6

    move v7, v11

    const-wide/16 v10, 0x0

    move-object v6, v0

    const/16 v0, 0x1dd

    move-object v8, v3

    const/4 v3, 0x1

    move-object/from16 v32, v4

    const/4 v4, 0x1

    move-object/from16 v21, v6

    move-object/from16 v29, v8

    move-object/from16 v13, v30

    move-object/from16 v36, v34

    move-object/from16 v6, p5

    move v8, v2

    move/from16 v2, p4

    move-wide/from16 v46, v23

    move/from16 v23, v14

    move/from16 v24, v15

    move-wide/from16 v14, v46

    .line 548
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    move-wide/from16 v27, v14

    move-object/from16 v0, v21

    goto/16 :goto_25

    :cond_2e
    move-object/from16 v29, v3

    move-object/from16 v32, v4

    move-object v13, v5

    move v7, v11

    move/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v36, v34

    move-wide v14, v1

    move/from16 v2, p4

    .line 557
    iget-object v0, v13, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v5, 0x2

    move v4, v5

    goto :goto_22

    :cond_2f
    const/4 v4, 0x1

    .line 561
    :goto_22
    iget-object v1, v13, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v9

    .line 562
    const-string v1, "getContentProviderImpl: before start process"

    invoke-virtual {v12, v14, v15, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 564
    iget-object v1, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    move-object/from16 v3, v32

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "content provider"

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5, v2, v6, v8}, Lcom/mediatek/server/am/AmsExt;->onReadyToStartComponent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 567
    const-string/jumbo v5, "skipped"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 568
    const-string v1, "ContentProviderHelper"

    const-string/jumbo v5, "suppress app launched for content provider"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_23

    .line 571
    :cond_30
    iget-object v1, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v8, Lcom/android/server/am/HostingRecord;

    const-string v10, "content provider"

    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v37, v1

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v10, v11}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    move-object/from16 v38, v5

    move-object/from16 v39, v6

    move-object/from16 v42, v8

    invoke-virtual/range {v37 .. v45}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    move-object v1, v2

    .line 578
    :goto_23
    const-string v2, "getContentProviderImpl: after start process"

    invoke-virtual {v12, v14, v15, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v1, :cond_31

    .line 580
    const-string v0, "ContentProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": process is bad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 604
    :try_start_1c
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 584
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_24
    const/16 v16, 0x0

    return-object v16

    :cond_31
    move-object/from16 v2, p2

    .line 586
    :try_start_1d
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v5, :cond_32

    .line 587
    const-string v5, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Logging provider access for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", stopped="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", firstLaunch="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move-object v0, v1

    .line 590
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x14

    const-wide/16 v10, 0x0

    move-object v6, v0

    const/16 v0, 0x1dd

    move-object/from16 v32, v3

    const/4 v3, 0x3

    move/from16 v2, p4

    move-wide/from16 v27, v14

    move-object v14, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    .line 598
    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    move-wide/from16 v6, v25

    .line 599
    invoke-virtual {v0, v6, v7, v14}, Lcom/android/server/am/AppStartInfoTracker;->handleProcessContentProviderStart(JLcom/android/server/am/ProcessRecord;)V

    move-object v0, v14

    .line 601
    :goto_25
    iput-object v0, v13, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 602
    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 604
    :try_start_1e
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :goto_26
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    throw v0

    :cond_33
    move-wide/from16 v27, v1

    move-object/from16 v29, v3

    move-object/from16 v32, v4

    move-object v13, v5

    move/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v36, v34

    .line 608
    :goto_27
    const-string v0, "getContentProviderImpl: updating data structures"

    move-wide/from16 v8, v27

    invoke-virtual {v12, v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v18, :cond_34

    .line 613
    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v13}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 616
    :cond_34
    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object/from16 v7, p2

    invoke-virtual {v0, v7, v13}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 617
    iget-object v0, v12, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-wide v10, v8

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object v15, v7

    move-object v1, v12

    move-object v3, v13

    move-object/from16 v2, v29

    move-object/from16 v7, p6

    move/from16 v13, p8

    move-object v12, v0

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v2

    move-object v13, v3

    move v4, v5

    move-wide v8, v10

    if-eqz v2, :cond_35

    const/4 v7, 0x1

    .line 620
    iput-boolean v7, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :cond_35
    move-object v3, v13

    move/from16 v5, v24

    move-object/from16 v0, v32

    goto :goto_29

    .line 427
    :goto_28
    :try_start_1f
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    :try_start_20
    throw v0

    :catchall_7
    move-exception v0

    goto :goto_28

    :cond_36
    move/from16 v4, p4

    move-wide v8, v12

    move-object v1, v14

    move/from16 v23, v18

    move/from16 v5, v30

    move-object/from16 v3, v20

    .line 623
    :goto_29
    const-string v6, "getContentProviderImpl: done!"

    invoke-virtual {v1, v8, v9, v6}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 625
    iget-object v6, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 626
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v10, 0x0

    .line 625
    invoke-virtual {v6, v5, v10, v4, v7}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    if-eqz p1, :cond_3a

    .line 630
    monitor-enter v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 631
    :try_start_21
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v4, :cond_39

    .line 632
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_37

    .line 633
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for provider "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": launching app became null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 638
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 637
    invoke-static {v1, v2, v0, v15}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    .line 641
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    :try_start_22
    monitor-exit v22
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_24

    :catchall_8
    move-exception v0

    goto :goto_2a

    :cond_37
    if-eqz v2, :cond_38

    const/4 v7, 0x1

    .line 645
    :try_start_23
    iput-boolean v7, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 647
    :cond_38
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x49

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 649
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 650
    iget-object v1, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sget v4, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v4, v4

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 653
    :cond_39
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    const/4 v6, 0x0

    .line 657
    :try_start_24
    invoke-virtual {v3, v2, v6}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    monitor-exit v22
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 653
    :goto_2a
    :try_start_25
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    :try_start_26
    throw v0

    .line 659
    :cond_3a
    monitor-exit v22
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget v6, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 666
    monitor-enter v3

    .line 667
    :cond_3b
    :goto_2b
    :try_start_27
    iget-object v6, v3, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v6, :cond_43

    .line 668
    iget-object v6, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v6, :cond_3c

    .line 669
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for provider "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": launching app became null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 673
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 672
    invoke-static {v1, v2, v0, v15}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    .line 675
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    const/16 v16, 0x0

    return-object v16

    :catchall_9
    move-exception v0

    goto/16 :goto_38

    .line 678
    :cond_3c
    :try_start_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_b
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    :try_start_29
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 679
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_a
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    if-eqz v10, :cond_3d

    .line 680
    :try_start_2a
    const-string v10, "ActivityManager_MU"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Waiting to start provider "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " launchingApp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_8
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    goto :goto_2d

    :catchall_a
    move-exception v0

    goto :goto_32

    :catch_8
    const/4 v6, 0x0

    :goto_2c
    const/4 v11, 0x1

    goto :goto_33

    :cond_3d
    :goto_2d
    if-eqz v2, :cond_3e

    const/4 v11, 0x1

    .line 684
    :try_start_2b
    iput-boolean v11, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_2f

    :catch_9
    :goto_2e
    const/4 v6, 0x0

    goto :goto_33

    :cond_3e
    const/4 v11, 0x1

    :goto_2f
    cmp-long v10, v6, v8

    if-lez v10, :cond_3f

    .line 687
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 689
    :cond_3f
    iget-object v6, v3, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_9
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    if-nez v6, :cond_41

    if-eqz v2, :cond_40

    const/4 v6, 0x0

    .line 696
    :try_start_2c
    iput-boolean v6, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_30

    :cond_40
    const/4 v6, 0x0

    :goto_30
    move v5, v11

    goto :goto_34

    :cond_41
    const/4 v6, 0x0

    if-eqz v2, :cond_3b

    :goto_31
    iput-boolean v6, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto/16 :goto_2b

    :catch_a
    const/4 v11, 0x1

    goto :goto_2e

    :goto_32
    if-eqz v2, :cond_42

    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 698
    :cond_42
    throw v0

    :catch_b
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    goto :goto_2c

    :goto_33
    if-eqz v2, :cond_3b

    goto :goto_31

    :cond_43
    const/4 v5, 0x0

    .line 700
    :goto_34
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_9

    if-eqz v5, :cond_46

    .line 703
    const-string/jumbo v2, "unknown"

    if-eqz p1, :cond_45

    .line 705
    iget-object v3, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    .line 706
    :try_start_2d
    iget-object v1, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v14, p1

    .line 707
    invoke-virtual {v1, v14}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 709
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_35

    :catchall_b
    move-exception v0

    goto :goto_36

    .line 711
    :cond_44
    :goto_35
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_37

    :goto_36
    :try_start_2e
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 714
    :cond_45
    :goto_37
    const-string v1, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for provider "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providerRunning="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v23

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " caller="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    :cond_46
    const/4 v6, 0x0

    .line 720
    invoke-virtual {v3, v2, v6}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0

    .line 700
    :goto_38
    :try_start_2f
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_9

    throw v0

    .line 659
    :goto_39
    :try_start_30
    monitor-exit v22
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getMimeTypeFilterAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .locals 12

    .line 1039
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "getProviderMimeTypeAsync"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 1041
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1042
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1043
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1, p2}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v7

    .line 1044
    invoke-virtual {p0, v0, v5, v7}, Lcom/android/server/am/ContentProviderHelper;->canClearIdentity(III)Z

    move-result p2

    const-wide/16 v8, 0x0

    if-eqz p2, :cond_0

    .line 1045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v10, v1

    goto :goto_0

    :cond_0
    move-wide v10, v8

    .line 1048
    :goto_0
    :try_start_0
    const-string v6, "*getmimetype*"

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v10, v8

    if-eqz p2, :cond_1

    .line 1052
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1057
    :cond_1
    :try_start_1
    invoke-virtual {v2, p0, v5, v7}, Lcom/android/server/am/ContentProviderHelper;->isHolderVisibleToCaller(Landroid/app/ContentProviderHolder;II)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1058
    invoke-virtual {v2, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkGetAnyTypePermission(II)Z

    move-result p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p2, :cond_2

    .line 1059
    :try_start_2
    new-instance p2, Landroid/content/AttributionSource$Builder;

    invoke-direct {p2, v5}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 1060
    invoke-virtual {p2}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p2

    .line 1061
    iget-object p0, p0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2, v3, v7, p3}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p0, p2, p1, v0}, Landroid/content/IContentProvider;->getTypeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v8, p1

    move-object v6, p3

    goto :goto_2

    .line 1072
    :cond_2
    :try_start_3
    iget-object p0, p0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    new-instance p2, Landroid/os/RemoteCallback;

    move-object v4, v3

    move-object v3, v2

    new-instance v2, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move v6, v7

    move v7, v5

    move v5, v6

    move-object v8, p1

    move-object v6, p3

    :try_start_4
    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;)V

    invoke-direct {p2, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p0, v8, p2}, Landroid/content/IContentProvider;->getTypeAnonymousAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    return-void

    :catch_1
    move-exception v0

    :goto_1
    move-object p0, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v8, p1

    move-object v6, p3

    goto :goto_1

    :cond_3
    move-object v8, p1

    move-object v6, p3

    .line 1087
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v6, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    .line 1090
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Content provider dead retrieving "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContentProviderHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v6, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    cmp-long p1, v10, v8

    if-eqz p1, :cond_4

    .line 1052
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1054
    :cond_4
    throw p0
.end method

.method public getProviderInfoLocked(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 2

    .line 1678
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1680
    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    return-object p0

    .line 1683
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    or-int/lit16 p3, p3, 0x800

    int-to-long v0, p3

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProviderMap()Lcom/android/server/am/ProviderMap;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-object p0
.end method

.method public final handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 10

    .line 1542
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    if-eqz p1, :cond_4

    .line 1544
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 1548
    :cond_0
    iget-object p2, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 1549
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->stopAssociation()V

    .line 1550
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1551
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1552
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 1554
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/am/ProcessStateController;->removeProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V

    .line 1555
    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/16 v2, 0xf

    if-ge v0, v2, :cond_2

    .line 1560
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    .line 1561
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    .line 1562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1561
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ProcessStateController;->setLastProviderTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 1565
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, p2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, p2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 1567
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1568
    invoke-virtual {p3, v0, p2}, Lcom/android/server/am/OomAdjuster;->evaluateProviderConnectionRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1570
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    .line 1572
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1545
    :cond_4
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1572
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 1532
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_0
    if-ltz p0, :cond_1

    .line 1533
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    move-wide/from16 v4, p9

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 1462
    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/am/ProcessStateController;->addExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V

    return-object v6

    .line 1468
    :cond_0
    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1469
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_2

    .line 1470
    invoke-virtual {v7, v10}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v11

    .line 1471
    iget-object v12, v11, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-ne v12, v2, :cond_1

    .line 1472
    invoke-virtual {v11, v3}, Lcom/android/server/am/ContentProviderConnection;->incrementCount(Z)I

    return-object v11

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1478
    :cond_2
    new-instance v7, Lcom/android/server/am/ContentProviderConnection;

    move-object/from16 v8, p5

    move/from16 v10, p12

    invoke-direct {v7, v2, v1, v8, v10}, Lcom/android/server/am/ContentProviderConnection;-><init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 1480
    invoke-virtual {v7}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    .line 1481
    invoke-virtual {v7, v3}, Lcom/android/server/am/ContentProviderConnection;->initializeCount(Z)V

    .line 1482
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_3

    .line 1484
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v8, 0x40

    invoke-virtual {v3, v8}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 1486
    :cond_3
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v1, v7}, Lcom/android/server/am/ProcessStateController;->addProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V

    .line 1487
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v11, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v13

    iget v14, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 p3, v7

    iget-wide v6, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v15, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v3

    move-object/from16 v18, v15

    move-wide v15, v6

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    if-eqz p8, :cond_4

    .line 1489
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_4

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1490
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    const/16 v3, 0xfa

    if-gt v1, v3, :cond_4

    .line 1497
    const-string v1, "getContentProviderImpl: before updateLruProcess"

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 1498
    iget-object v1, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v2, p11

    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v8}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1499
    const-string v1, "getContentProviderImpl: after updateLruProcess"

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    :cond_4
    return-object p3
.end method

.method public installEncryptionUnawareProviders(I)V
    .locals 11

    .line 1410
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1411
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1412
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 1413
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 1415
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 1416
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    .line 1417
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1418
    iget v9, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v9, p1, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isUnlocked()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    .line 1422
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    new-instance v10, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, v8}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1453
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final installSystemProviders()V
    .locals 8

    .line 1365
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1367
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    const-string/jumbo v2, "system"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1368
    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1370
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    if-ltz v3, :cond_1

    .line 1371
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ProviderInfo;

    .line 1372
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v2

    if-nez v5, :cond_0

    .line 1373
    const-string v5, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not installing system proc provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": not system .apk"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1379
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_2

    .line 1382
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->installSystemProviders(Ljava/util/List;)V

    .line 1384
    :cond_2
    monitor-enter p0

    .line 1385
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    .line 1386
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1388
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerConstants;->start(Landroid/content/ContentResolver;)V

    .line 1389
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/am/CoreSettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/am/CoreSettingsObserver;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mCoreSettingsObserver:Lcom/android/server/am/CoreSettingsObserver;

    .line 1390
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->installSystemProviders()V

    .line 1391
    new-instance v0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;-><init>(Lcom/android/server/am/ContentProviderHelper;)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;

    .line 1393
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->initSettings()V

    .line 1396
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->rescuePartyOnSettingsProviderPublished(Landroid/content/Context;)V

    return-void

    :catchall_1
    move-exception v0

    .line 1386
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1379
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z
    .locals 2

    .line 2021
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2022
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2023
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 2025
    :cond_1
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v0

    .line 2026
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public final isHolderVisibleToCaller(Landroid/app/ContentProviderHolder;II)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1124
    iget-object v1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1128
    :cond_0
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1129
    invoke-static {p3}, Lcom/android/server/am/ContentProviderHelper;->resolveParentUserIdForCloneProfile(I)I

    move-result v1

    if-eq v1, p3, :cond_1

    .line 1132
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 1136
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8

    .line 1721
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 1722
    const-string v1, "ActivityManager"

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    .line 1723
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz p0, :cond_0

    .line 1724
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Process hasn\'t started yet: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 1728
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1729
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    .line 1730
    sget-object v5, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1732
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz p0, :cond_2

    .line 1733
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "UNABLE TO RETRIEVE STATE FOR "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    .line 1738
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    aget-wide v4, p0, v2

    .line 1739
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz p0, :cond_4

    .line 1740
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RETRIEVED STATE FOR "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide/16 v6, 0x5a

    cmp-long p0, v4, v6

    if-eqz p0, :cond_5

    const-wide/16 v6, 0x58

    cmp-long p0, v4, v6

    if-eqz p0, :cond_5

    const-wide/16 v6, 0x78

    cmp-long p0, v4, v6

    if-eqz p0, :cond_5

    const-wide/16 v6, 0x4b

    cmp-long p0, v4, v6

    if-eqz p0, :cond_5

    .line 1744
    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    move-result p0

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v2
.end method

.method public final isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z
    .locals 3

    .line 2035
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 2036
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isSystemUserOnly(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 2037
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$checkContentProviderAssociation$4(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1668
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p3, p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1670
    iget-object p0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$decProviderCountLocked$3(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 0

    .line 1522
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    return-void
.end method

.method public final synthetic lambda$getMimeTypeFilterAsync$0(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 3

    .line 1063
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1065
    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1069
    invoke-virtual {p3, p4}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1068
    throw p0
.end method

.method public final synthetic lambda$getMimeTypeFilterAsync$1(Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3

    .line 1073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1075
    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1079
    invoke-virtual {p3, p6}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1080
    invoke-virtual {p6}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1082
    invoke-virtual {p0, p4, p5, p1}, Lcom/android/server/am/ContentProviderHelper;->logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 1077
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1078
    throw p0
.end method

.method public final synthetic lambda$installEncryptionUnawareProviders$2(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 11

    .line 1424
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const-wide/32 v2, 0x40008

    .line 1425
    invoke-interface {v0, p2, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 1426
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz p2, :cond_8

    .line 1427
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1428
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, p2, v3

    .line 1430
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1431
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    iget-boolean v5, v4, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v6

    .line 1433
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/am/ContentProviderHelper;->isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    move v7, v2

    goto :goto_4

    :cond_3
    :goto_3
    move v7, v6

    .line 1435
    :goto_4
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    .line 1436
    iget-object v9, v4, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1437
    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_4

    goto :goto_5

    :cond_4
    move v6, v2

    .line 1439
    :cond_5
    :goto_5
    const-string v9, "ContentProviderHelper"

    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    if-eqz v8, :cond_6

    if-eqz v6, :cond_7

    .line 1441
    :cond_6
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-interface {v0, v4}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto :goto_6

    .line 1444
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_8
    return-void
.end method

.method public final logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x1

    .line 1107
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x234

    .line 1105
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_4

    .line 1693
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1698
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1700
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1701
    iget-object v3, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 1702
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    sub-long v5, v1, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    .line 1703
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_3

    .line 1705
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p0, p3, p2, p1}, Landroid/app/usage/UsageStatsManagerInternal;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1708
    :cond_3
    iget-object p0, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method

.method public processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7

    const/4 v0, 0x1

    .line 1250
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 1251
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v5, 0x0

    const-string/jumbo v6, "timeout publishing content providers"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    return-void
.end method

.method public publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    .line 745
    :cond_0
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "publishContentProviders"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedOrSdkSandboxCaller(Ljava/lang/String;)V

    .line 746
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 747
    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 749
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 750
    const-string v5, "ActivityManager_MU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProcessRecord uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_0
    if-eqz v4, :cond_f

    .line 759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 761
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v1, :cond_b

    .line 762
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ContentProviderHolder;

    if-eqz v10, :cond_2

    .line 763
    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v11, :cond_2

    iget-object v12, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v12, :cond_3

    :cond_2
    :goto_2
    move v13, v8

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 766
    :cond_3
    iget-object v12, v4, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/android/server/am/ProcessProviderRecord;->getProvider(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v11

    if-nez v11, :cond_4

    goto :goto_2

    .line 770
    :cond_4
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v9, :cond_5

    .line 771
    const-string v9, "ActivityManager_MU"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ContentProviderRecord uid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_5
    new-instance v9, Landroid/content/ComponentName;

    iget-object v12, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v12, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v12, v9, v11}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 777
    iget-object v9, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v12, ";"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    .line 778
    :goto_3
    array-length v13, v9

    if-ge v12, v13, :cond_6

    .line 779
    iget-object v13, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v14, v9, v12

    invoke-virtual {v13, v14, v11}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 783
    :cond_6
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    const/4 v14, 0x1

    if-ge v12, v9, :cond_8

    .line 784
    iget-object v15, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v11, :cond_7

    .line 785
    iget-object v13, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v9, v9, -0x1

    move v13, v14

    :cond_7
    add-int/2addr v12, v14

    goto :goto_4

    :cond_8
    if-eqz v13, :cond_9

    .line 792
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0x49

    invoke-virtual {v9, v12, v11}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 794
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0x39

    invoke-virtual {v9, v12, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 802
    :cond_9
    iget-object v9, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move v13, v8

    iget-wide v7, v9, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v12, v7, v8, v9}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 804
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :try_start_1
    iget-object v7, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iput-object v7, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 806
    invoke-virtual {v11, v4}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 807
    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 808
    invoke-virtual {v11, v14}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 809
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x0

    .line 810
    :try_start_2
    iput v7, v11, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 811
    invoke-virtual {v0, v4}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 812
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    move v9, v14

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 809
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_5
    add-int/lit8 v8, v13, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    if-eqz v9, :cond_e

    .line 818
    iget-object v1, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x7

    invoke-virtual {v1, v4, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    .line 819
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :goto_6
    if-ge v7, v1, :cond_e

    .line 820
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ContentProviderHolder;

    if-eqz v8, :cond_d

    .line 821
    iget-object v9, v8, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v9, :cond_d

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v8, :cond_c

    goto :goto_7

    .line 824
    :cond_c
    iget-object v8, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v4, v8, v9}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 829
    :cond_e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 754
    :cond_f
    :try_start_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when publishing content providers"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :goto_8
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public refContentProvider(Landroid/os/IBinder;II)Z
    .locals 3

    .line 912
    const-string/jumbo p0, "refContentProvider: "

    :try_start_0
    check-cast p1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 923
    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-wide/16 v1, 0x40

    .line 922
    invoke-static {v1, v2, p0, v0}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 926
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ContentProviderConnection;->adjustCounts(II)V

    .line 927
    iget-boolean p0, p1, Lcom/android/server/am/ContentProviderConnection;->dead:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 p0, p0, 0x1

    .line 929
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 930
    throw p0

    .line 919
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 914
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not a ContentProviderConnection"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 915
    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeContentProvider(Landroid/os/IBinder;Z)V
    .locals 12

    .line 837
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "removeContentProvider"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 838
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 842
    :try_start_0
    move-object v4, p1

    check-cast v4, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 852
    :try_start_1
    const-string/jumbo p1, "removeContentProvider: "

    .line 854
    iget-object v0, v4, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    const-string v0, ""

    :goto_0
    const-wide/16 v10, 0x40

    .line 852
    invoke-static {v10, v11, p1, v0}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    :try_start_2
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v7, p2

    .line 858
    :try_start_3
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    .line 859
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 861
    :try_start_5
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 864
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 859
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 861
    :goto_1
    :try_start_8
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 862
    throw p0

    .line 850
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 844
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeContentProvider: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not a ContentProviderConnection"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 846
    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 864
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    throw p0
.end method

.method public removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 3

    .line 869
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v2, "Do not have permission in call removeContentProviderExternal()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 874
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 877
    throw p0
.end method

.method public removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 882
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    if-nez v1, :cond_1

    .line 885
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz p0, :cond_0

    .line 886
    const-string p0, "ContentProviderHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " content provider not found in providers list"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 888
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 892
    :cond_1
    :try_start_1
    new-instance p1, Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p1

    .line 894
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 895
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/ProcessStateController;->removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 897
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    goto :goto_1

    .line 899
    :cond_2
    const-string p0, "ContentProviderHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to remove content provider "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with no external reference for token: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 903
    :cond_3
    const-string p0, "ContentProviderHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to remove content provider: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with no external references."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1807
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    .line 1808
    iget v5, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    :goto_0
    const/4 v6, 0x0

    if-eqz v3, :cond_1

    if-eqz v5, :cond_5

    .line 1814
    :cond_1
    monitor-enter p2

    const/4 v7, 0x0

    .line 1815
    :try_start_0
    iput-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 1816
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1817
    invoke-virtual {v2, v6}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 1818
    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x49

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1820
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1821
    iget v7, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1825
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v8

    if-ne v8, v2, :cond_2

    .line 1826
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/am/ProviderMap;->removeProviderByClass(Landroid/content/ComponentName;I)V

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v6

    .line 1829
    :goto_1
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v10, v6

    .line 1830
    :goto_2
    array-length v11, v9

    if-ge v10, v11, :cond_4

    .line 1833
    iget-object v11, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v12, v9, v10

    invoke-virtual {v11, v12, v7}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v11

    if-ne v11, v2, :cond_3

    .line 1834
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v11, v9, v10

    invoke-virtual {v8, v11, v7}, Lcom/android/server/am/ProviderMap;->removeProviderByName(Ljava/lang/String;I)V

    move v8, v4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    .line 1838
    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_5

    .line 1839
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Lcom/android/server/am/ProcessStateController;->removePublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1843
    :cond_5
    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_3
    if-ltz v7, :cond_c

    .line 1844
    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ContentProviderConnection;

    .line 1845
    iget-boolean v9, v8, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v9, :cond_6

    if-eqz v3, :cond_6

    if-nez v5, :cond_6

    goto/16 :goto_6

    .line 1853
    :cond_6
    iget-object v9, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 1854
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v10

    .line 1855
    iput-boolean v4, v8, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    .line 1856
    invoke-virtual {v8}, Lcom/android/server/am/ContentProviderConnection;->stableCount()I

    move-result v11

    if-lez v11, :cond_9

    .line 1857
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    .line 1858
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v11

    if-nez v11, :cond_b

    if-eqz v10, :cond_b

    if-eqz v8, :cond_b

    sget v10, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v10, :cond_b

    .line 1860
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "depends on provider "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 1861
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in dying proc "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7

    .line 1862
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string v10, "??"

    :goto_4
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (adj "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8

    .line 1863
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_5

    :cond_8
    const-string v10, "??"

    :goto_5
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xc

    .line 1860
    invoke-virtual {v9, v8, v10, v6, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_6

    :cond_9
    if-eqz v10, :cond_b

    .line 1868
    iget-object v11, v8, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v11, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eqz v11, :cond_b

    .line 1870
    :try_start_1
    invoke-interface {v11}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/app/IApplicationThread;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1875
    :catch_0
    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1876
    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_a

    invoke-virtual {v0, v10}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1877
    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1879
    :cond_a
    iget-object v10, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v10, v8}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1880
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v11, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v12, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v14, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    :cond_b
    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    :cond_c
    if-eqz v3, :cond_d

    if-eqz v5, :cond_d

    .line 1887
    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1888
    iput v6, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    move v3, v6

    :cond_d
    return v3

    :catchall_0
    move-exception v0

    .line 1820
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z
    .locals 5

    .line 1768
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 1773
    const-string/jumbo v1, "u"

    const-string v2, "ContentProviderHelper"

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1774
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 1778
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Instantiating a provider in package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires a permissions review"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1783
    :cond_2
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string v3, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10800000

    .line 1784
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1785
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1787
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v3, :cond_3

    .line 1788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Launching permission review for package "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_3
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1793
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p3, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;

    invoke-direct {p3, p4, p2, p1}, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 7

    .line 936
    :try_start_0
    check-cast p1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_6

    .line 946
    const-string/jumbo v0, "unstableProviderDied: "

    .line 948
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-wide/16 v2, 0x40

    .line 946
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 954
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 955
    :try_start_2
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 956
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_1

    .line 999
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 964
    :cond_1
    :try_start_4
    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 967
    :try_start_5
    const-string v0, "ContentProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unstableProviderDied: caller "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " says "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " died, but we don\'t agree"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 999
    :goto_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 970
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 975
    :try_start_8
    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, p1, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eq v4, v1, :cond_3

    .line 977
    monitor-exit v0

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_3

    .line 980
    :cond_3
    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_5

    .line 981
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 988
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") early provider death"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 988
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 991
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 993
    :try_start_9
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "unstable content provider"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 995
    :try_start_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 997
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 999
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3
    move-exception p0

    .line 995
    :try_start_c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    throw p0

    .line 983
    :cond_5
    :goto_2
    monitor-exit v0

    goto :goto_1

    .line 997
    :goto_3
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_4
    move-exception p0

    .line 956
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 999
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1000
    throw p0

    .line 943
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 938
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "refContentProvider: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not a ContentProviderConnection"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 939
    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
