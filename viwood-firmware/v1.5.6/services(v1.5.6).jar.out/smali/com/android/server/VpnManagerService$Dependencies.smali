.class public Lcom/android/server/VpnManagerService$Dependencies;
.super Ljava/lang/Object;
.source "VpnManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLockDownVpnTracker(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)Lcom/android/server/net/LockdownVpnTracker;
    .locals 0

    .line 147
    new-instance p0, Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    return-object p0
.end method

.method public createVpn(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;I)Lcom/android/server/connectivity/Vpn;
    .locals 7

    .line 141
    new-instance v0, Lcom/android/server/connectivity/Vpn;

    new-instance v6, Lcom/android/server/connectivity/VpnProfileStore;

    invoke-direct {v6}, Lcom/android/server/connectivity/VpnProfileStore;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V

    return-object v0
.end method

.method public getCallingUid()I
    .locals 0

    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getINetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 0

    .line 134
    const-string/jumbo p0, "network_management"

    .line 135
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 134
    invoke-static {p0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p0

    return-object p0
.end method

.method public getMainUserId()I
    .locals 0

    .line 153
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result p0

    return p0
.end method

.method public getNetd()Landroid/net/INetd;
    .locals 0

    .line 130
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object p0

    return-object p0
.end method

.method public getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;
    .locals 0

    .line 126
    new-instance p0, Lcom/android/server/connectivity/VpnProfileStore;

    invoke-direct {p0}, Lcom/android/server/connectivity/VpnProfileStore;-><init>()V

    return-object p0
.end method

.method public makeHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    .line 121
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "VpnManagerService"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
