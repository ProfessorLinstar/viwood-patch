.class public Lcom/android/server/am/ActivityManagerService$Injector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mNmi:Lcom/android/server/net/NetworkManagementInternal;

.field public mUserController:Lcom/android/server/am/UserController;


# direct methods
.method public static bridge synthetic -$$Nest$fputmUserController(Lcom/android/server/am/ActivityManagerService$Injector;Lcom/android/server/am/UserController;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mUserController:Lcom/android/server/am/UserController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18961
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clearCallingIdentity()J
    .locals 2

    .line 19144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ensureHasNetworkManagementInternal()Z
    .locals 1

    .line 19112
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementInternal;

    if-nez v0, :cond_0

    .line 19113
    const-class v0, Lcom/android/server/net/NetworkManagementInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkManagementInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementInternal;

    .line 19115
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementInternal;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getActiveServices(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActiveServices;
    .locals 0

    .line 19108
    new-instance p0, Lcom/android/server/am/ActiveServices;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-object p0
.end method

.method public getAppErrors()Lcom/android/server/am/AppErrors;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppOpsService(Ljava/io/File;Ljava/io/File;Landroid/os/Handler;)Lcom/android/server/appop/AppOpsService;
    .locals 1

    .line 18970
    new-instance v0, Lcom/android/server/appop/AppOpsService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/server/appop/AppOpsService;-><init>(Ljava/io/File;Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0
.end method

.method public getBatteryStatsService()Lcom/android/server/am/BatteryStatsService;
    .locals 2

    .line 19101
    new-instance v0, Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BatteryStatsService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method public getBroadcastQueue(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/BroadcastQueue;
    .locals 3

    .line 19120
    new-instance p0, Lcom/android/server/am/BroadcastConstants;

    const-string v0, "bcast_fg_constants"

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastConstants;-><init>(Ljava/lang/String;)V

    .line 19122
    sget v0, Lcom/android/server/am/ActivityManagerService;->BROADCAST_FG_TIMEOUT:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 19124
    new-instance v0, Lcom/android/server/am/BroadcastConstants;

    const-string v1, "bcast_bg_constants"

    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastConstants;-><init>(Ljava/lang/String;)V

    .line 19126
    sget v1, Lcom/android/server/am/ActivityManagerService;->BROADCAST_BG_TIMEOUT:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 19128
    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v1, p1, v2, p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;)V

    return-object v1
.end method

.method public getCallingPid()I
    .locals 0

    .line 19139
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    return p0
.end method

.method public getCallingUid()I
    .locals 0

    .line 19134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 18965
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDisplayIdsForStartingVisibleBackgroundUsers()[I
    .locals 12

    .line 18996
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ActivityManager"

    if-nez v0, :cond_0

    .line 18997
    const-string p0, "getDisplayIdsForStartingVisibleBackgroundUsers(): not supported"

    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 19002
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 19004
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 19008
    array-length v3, v0

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 19013
    :cond_1
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_e

    aget-object v6, v0, v5

    .line 19014
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-nez v6, :cond_d

    .line 19027
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result p0

    .line 19028
    array-length v3, v0

    if-nez p0, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 19032
    :cond_2
    new-array v5, v3, [I

    .line 19035
    array-length v6, v0

    move v7, v4

    move v8, v7

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v9, v0, v7

    .line 19036
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    .line 19038
    invoke-virtual {v9}, Landroid/view/Display;->isValid()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Landroid/view/Display;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_4

    if-nez p0, :cond_3

    if-eqz v10, :cond_4

    :cond_3
    add-int/lit8 v9, v8, 0x1

    .line 19040
    aput v10, v5, v8

    move v8, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-nez v8, :cond_9

    .line 19050
    const-string v3, "fw.display_ids_for_starting_users_for_testing_purposes"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz p0, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    if-lez v4, :cond_8

    .line 19054
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    .line 19053
    const-string v0, "getDisplayIdsForStartingVisibleBackgroundUsers(): no valid display found, but returning %d as set by property %s"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19056
    filled-new-array {v4}, [I

    move-result-object p0

    return-object p0

    .line 19059
    :cond_8
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 19058
    const-string v0, "getDisplayIdsForStartingVisibleBackgroundUsers(): no valid display on %s"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_9
    if-eq v8, v3, :cond_b

    .line 19064
    new-array p0, v8, [I

    .line 19065
    invoke-static {v5, v4, p0, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19066
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_a

    .line 19068
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 19069
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 19067
    const-string v1, "getDisplayIdsForStartingVisibleBackgroundUsers(): returning only valid displays (%d instead of %d): %s"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return-object p0

    .line 19074
    :cond_b
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz p0, :cond_c

    .line 19076
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 19075
    const-string v0, "getDisplayIdsForStartingVisibleBackgroundUsers(): returning all (but DEFAULT_DISPLAY) displays : %s"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    return-object v5

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 19020
    :cond_e
    array-length v3, v0

    .line 19021
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 19022
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p0, v3, v0, v4}, [Ljava/lang/Object;

    move-result-object p0

    .line 19020
    const-string v0, "displayManager (%s) has %d displays (%s), but none has id DEFAULT_DISPLAY (%d)"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 19009
    :cond_f
    :goto_2
    const-string v0, "displayManager (%s) returned no displays"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public getFreezer()Lcom/android/server/am/Freezer;
    .locals 0

    .line 19164
    new-instance p0, Lcom/android/server/am/Freezer;

    invoke-direct {p0}, Lcom/android/server/am/Freezer;-><init>()V

    return-object p0
.end method

.method public getIntentFirewall()Lcom/android/server/firewall/IntentFirewall;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessList(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessList;
    .locals 0

    .line 19094
    new-instance p0, Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Lcom/android/server/am/ProcessList;-><init>()V

    return-object p0
.end method

.method public getUiHandler(Lcom/android/server/am/ActivityManagerService;)Landroid/os/Handler;
    .locals 0

    .line 18974
    new-instance p0, Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$UiHandler;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-object p0
.end method

.method public isNetworkRestrictedForUid(I)Z
    .locals 1

    .line 18978
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$Injector;->ensureHasNetworkManagementInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18979
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementInternal;->isNetworkRestrictedForUid(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public restoreCallingIdentity(J)V
    .locals 0

    .line 19149
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z
    .locals 0

    .line 19086
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUserVisibleOnDisplay(IILandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method
