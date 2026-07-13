.class public Lcom/android/server/net/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"


# static fields
.field public static final DBG:Z


# instance fields
.field public mActiveAlerts:Ljava/util/HashMap;

.field public mActiveQuotas:Ljava/util/HashMap;

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mContext:Landroid/content/Context;

.field public final mDaemonHandler:Landroid/os/Handler;

.field public volatile mDataSaverMode:Z

.field public final mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

.field public final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field public volatile mFirewallEnabled:Z

.field public mNetdService:Landroid/net/INetd;

.field public final mNetdUnsolicitedEventListener:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final mObservers:Landroid/os/RemoteCallbackList;

.field public final mQuotaLock:Ljava/lang/Object;

.field public final mRulesLock:Ljava/lang/Object;

.field public volatile mStrictEnabled:Z

.field public mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

.field public mUidCleartextPolicy:Landroid/util/SparseIntArray;

.field public final mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field public final mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

.field public final mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

.field public final mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

.field public mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

.field public final mUseMeteredFirewallChains:Z


# direct methods
.method public static synthetic $r8$lambda$1PP3OT1sadvPew6Y2R2byLVESt0(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 339
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$27yNfp44myt2FFZw0U_1jqHKX3E(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 543
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D1GxzTWFP6nyfVFLea5BwoaUODo(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 567
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F0vO9LyGll9GGg3aJEF0faQ74lk(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 365
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IFtj3DXMXtl3A2TSjPFNzE4F6gU(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 347
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RluWfXnRfnPOz7TP5AWMKTBn3D8(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 372
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZszwXMKMcCa29m6w4HumYmP_Sak(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 550
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cgpS-jgRifY7BNTfBbw-sWsFzNs(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 557
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k-uAcrtK2YwJmLI08kowLJcRtuU(IZJILandroid/net/INetworkManagementEventObserver;)V
    .locals 1

    move v0, p1

    move p1, p0

    move-object p0, p5

    move p5, p4

    move-wide p3, p2

    move p2, v0

    .line 380
    invoke-interface/range {p0 .. p5}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(IZJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$ktWfr0rrBO3AIob6Jzw4-rtbKHI(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 565
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pxzyCqAqOv8u__cj08Loj3pseCE(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 354
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misNetworkRestrictedInternal(Lcom/android/server/net/NetworkManagementService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyAddressRemoved(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAddressUpdated(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceAdded(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceClassActivity(Lcom/android/server/net/NetworkManagementService;IZJI)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/net/NetworkManagementService;->notifyInterfaceClassActivity(IZJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceDnsServerInfo(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceLinkStateChanged(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceRemoved(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceStatusChanged(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyLimitReached(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyRouteChange(Lcom/android/server/net/NetworkManagementService;ZLandroid/net/RouteInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->notifyRouteChange(ZLandroid/net/RouteInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 123
    const-string v0, "NetworkManagement"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkManagementService$Dependencies;)V
    .locals 2

    .line 246
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/INetworkManagementService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 140
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 154
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 157
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 160
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 164
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 167
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 170
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 176
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 182
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 188
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 193
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    .line 198
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    .line 204
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    .line 211
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    .line 218
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    .line 225
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    .line 229
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 247
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 248
    iput-object p2, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    const/4 p1, 0x1

    .line 250
    iput-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    const/16 v1, 0xb

    .line 255
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0xc

    .line 256
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 259
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 261
    new-instance p1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkManagementService-IA;)V

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 263
    new-instance p1, Lcom/android/server/net/NetworkManagementService$LocalService;

    invoke-direct {p1, p0, v0}, Lcom/android/server/net/NetworkManagementService$LocalService;-><init>(Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkManagementService-IA;)V

    invoke-virtual {p2, p1}, Lcom/android/server/net/NetworkManagementService$Dependencies;->registerLocalService(Lcom/android/server/net/NetworkManagementInternal;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;
    .locals 1

    .line 278
    new-instance v0, Lcom/android/server/net/NetworkManagementService$Dependencies;

    invoke-direct {v0}, Lcom/android/server/net/NetworkManagementService$Dependencies;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;Lcom/android/server/net/NetworkManagementService$Dependencies;)Lcom/android/server/net/NetworkManagementService;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/net/NetworkManagementService$Dependencies;)Lcom/android/server/net/NetworkManagementService;
    .locals 2

    .line 268
    new-instance v0, Lcom/android/server/net/NetworkManagementService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/net/NetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkManagementService$Dependencies;)V

    .line 270
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    const-string p1, "NetworkManagement"

    if-eqz p0, :cond_0

    const-string v1, "Creating NetworkManagementService"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    .line 271
    const-string v1, "Connecting native netd service"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/net/NetworkManagementService;->connectNativeNetdService()V

    if-eqz p0, :cond_2

    .line 273
    const-string p0, "Connected"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public static fromStableParcel(Landroid/net/InterfaceConfigurationParcel;)Landroid/net/InterfaceConfiguration;
    .locals 4

    .line 704
    new-instance v0, Landroid/net/InterfaceConfiguration;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 705
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 708
    new-instance v2, Landroid/net/LinkAddress;

    iget v3, p0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    invoke-direct {v2, v1, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 709
    iget-object p0, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 710
    invoke-virtual {v0, v3}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toStableParcel(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .locals 2

    .line 681
    new-instance v0, Landroid/net/InterfaceConfigurationParcel;

    invoke-direct {v0}, Landroid/net/InterfaceConfigurationParcel;-><init>()V

    .line 682
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    .line 683
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object p1

    .line 684
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    goto :goto_0

    .line 687
    :cond_0
    const-string p1, ""

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 689
    :goto_0
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    .line 690
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p1

    iput p1, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 691
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 692
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 693
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 695
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public allowProtect(I)V
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 1399
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1401
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final applyUidCleartextNetworkPolicy(II)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1023
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown policy "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v0, v1

    .line 1027
    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, v0}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    .line 1028
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1030
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 787
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 789
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final connectNativeNetdService()V
    .locals 3

    .line 410
    const-string v0, "NetworkManagement"

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkManagementService$Dependencies;->getNetd()Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 412
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    invoke-interface {v1, p0}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 413
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "Register unsolicited event listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set Netd unsolicited event listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public denyProtect(I)V
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 1410
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1412
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 817
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 819
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1287
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string p3, "NetworkManagement"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1289
    :cond_0
    const-string p1, "Flags:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "com.android.server.net.use_metered_firewall_chains: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1293
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1294
    :try_start_0
    const-string p3, "Active quota ifaces: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    const-string p3, "Active alert ifaces: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    const-string p3, "Data saver mode: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1297
    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1298
    :try_start_1
    const-string v0, "denied UIDs"

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/net/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 1299
    const-string v0, "allowed UIDs"

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/net/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 1300
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1301
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1303
    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1304
    :try_start_3
    const-string p1, ""

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1306
    const-string p1, "UID firewall standby chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 1307
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1308
    const-string/jumbo p1, "standby"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1310
    const-string p1, "UID firewall dozable chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1311
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1312
    const-string p1, "dozable"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1314
    const-string p1, "UID firewall powersave chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1315
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1316
    const-string/jumbo p1, "powersave"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1318
    const-string p1, "UID firewall restricted mode chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1320
    const-string/jumbo p1, "restricted"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1323
    const-string p1, "UID firewall low power standby chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 1324
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1325
    const-string p1, "low_power_standby"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1328
    const-string p1, "UID firewall background chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 1329
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1330
    const-string p1, "background"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1332
    const-string p1, "UID firewall metered allow chain enabled (Data saver mode): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 1335
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1336
    const-string/jumbo p1, "metered_allow"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1339
    const-string p1, "UID firewall metered deny_user chain enabled (always-on): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0xb

    .line 1342
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1343
    const-string/jumbo p1, "metered_deny_user"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1346
    const-string p1, "UID firewall metered deny_admin chain enabled (always-on): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0xc

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1350
    const-string/jumbo p1, "metered_deny_admin"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1352
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1354
    const-string p1, "Firewall enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1355
    const-string p1, "Netd service status: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-nez p0, :cond_1

    .line 1357
    const-string p0, "disconnected"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1360
    :cond_1
    :try_start_4
    invoke-interface {p0}, Landroid/net/INetd;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1361
    const-string p0, "alive"

    goto :goto_0

    :cond_2
    const-string p0, "dead"

    :goto_0
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    .line 1363
    :catch_0
    const-string/jumbo p0, "unreachable"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 1352
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 1300
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    .line 1301
    :goto_2
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0
.end method

.method public final dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 1

    .line 1381
    const-string p0, "UID firewall "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1383
    const-string p0, " rule: ["

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    .line 1386
    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1387
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v0, p0, -0x1

    if-ge p2, v0, :cond_0

    .line 1389
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1391
    :cond_1
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .locals 1

    .line 1369
    const-string p0, "UID bandwith control "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1371
    const-string p0, ": ["

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    .line 1374
    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v0, p0, -0x1

    if-ge p2, v0, :cond_0

    .line 1375
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1377
    :cond_1
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 797
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 799
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final enforceSystemUid()V
    .locals 1

    .line 1279
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService$Dependencies;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    return-void

    .line 1281
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only available to AID_SYSTEM"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 296
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    const-string v1, "batterystats"

    .line 299
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkManagementService$Dependencies;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 300
    monitor-exit p0

    return-object v0

    .line 301
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getFirewallChainState(I)Z
    .locals 1

    .line 1502
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1503
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1504
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFirewallRuleName(II)Ljava/lang/String;
    .locals 1

    .line 1234
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallType(I)I

    move-result p0

    const-string p1, "deny"

    const-string v0, "allow"

    if-nez p0, :cond_1

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x2

    if-ne p2, p0, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final getFirewallType(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1144
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->isFirewallEnabled()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 723
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    .line 729
    :try_start_1
    invoke-static {p0}, Lcom/android/server/net/NetworkManagementService;->fromStableParcel(Landroid/net/InterfaceConfigurationParcel;)Landroid/net/InterfaceConfiguration;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 732
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid InterfaceConfigurationParcel"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 725
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 1274
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown chain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1270
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1268
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1266
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1264
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1262
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1260
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1258
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1254
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1256
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1272
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p1, v2}, Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;->sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 331
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 332
    throw p1

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public isBandwidthControlEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isFirewallEnabled()Z
    .locals 0

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 1089
    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    return p0
.end method

.method public isNetworkRestricted(I)Z
    .locals 0

    .line 1419
    invoke-super {p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted_enforcePermission()V

    .line 1421
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result p0

    return p0
.end method

.method public final isNetworkRestrictedInternal(I)Z
    .locals 4

    .line 1425
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 1426
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 1427
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1428
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of app standby mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 1429
    :cond_0
    :goto_0
    monitor-exit v0

    return v3

    .line 1431
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 1432
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 1433
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_2

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of device idle mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_2
    monitor-exit v0

    return v3

    :cond_3
    const/4 v2, 0x3

    .line 1436
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 1437
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 1438
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of power saver mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_4
    monitor-exit v0

    return v3

    :cond_5
    const/4 v2, 0x4

    .line 1441
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    .line 1442
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 1443
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_6

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of restricted mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_6
    monitor-exit v0

    return v3

    :cond_7
    const/4 v2, 0x5

    .line 1446
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    .line 1447
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v3, :cond_9

    .line 1448
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_8

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of low power standby"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_8
    monitor-exit v0

    return v3

    :cond_9
    const/4 v2, 0x6

    .line 1451
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    .line 1452
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v3, :cond_b

    .line 1453
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_a

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because it is in background"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_a
    monitor-exit v0

    return v3

    .line 1456
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    if-eqz v2, :cond_11

    const/16 v2, 0xb

    .line 1457
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    .line 1458
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_d

    .line 1459
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_c

    .line 1460
    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of user-restricted metered data in the background"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_c
    monitor-exit v0

    return v3

    :cond_d
    const/16 v2, 0xc

    .line 1465
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    .line 1466
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_f

    .line 1467
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_e

    .line 1468
    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of admin-restricted metered data in the background"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_e
    monitor-exit v0

    return v3

    :cond_f
    const/16 v1, 0xa

    .line 1473
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    .line 1474
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-eq p0, v3, :cond_15

    .line 1475
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_10

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of data saver mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_10
    monitor-exit v0

    return v3

    .line 1479
    :cond_11
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1480
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_12

    .line 1481
    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of no metered data in the background"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_12
    monitor-exit v0

    return v3

    .line 1486
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    if-eqz v1, :cond_15

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_15

    .line 1487
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_14

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of data saver mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_14
    monitor-exit v0

    return v3

    :cond_15
    const/4 p0, 0x0

    .line 1491
    monitor-exit v0

    return p0

    .line 1492
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isValidFirewallChainForSetEnabled(I)Z
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public listInterfaces()[Ljava/lang/String;
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 670
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 672
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 1

    .line 550
    new-instance v0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 1

    .line 543
    new-instance v0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceAdded(Ljava/lang/String;)V
    .locals 1

    .line 354
    new-instance v0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceClassActivity(IZJI)V
    .locals 6

    .line 380
    new-instance v0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;-><init>(IZJI)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 1

    .line 557
    new-instance v0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 1

    .line 347
    new-instance v0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceRemoved(Ljava/lang/String;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1

    .line 339
    new-instance v0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 372
    new-instance v0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyRouteChange(ZLandroid/net/RouteInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 565
    new-instance p1, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda8;

    invoke-direct {p1, p2}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda8;-><init>(Landroid/net/RouteInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void

    .line 567
    :cond_0
    new-instance p1, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda9;-><init>(Landroid/net/RouteInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final prepareNativeDaemon()V
    .locals 14

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x6

    const/4 v5, 0x1

    .line 426
    iget-object v6, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v6

    .line 428
    :try_start_0
    iput-boolean v5, p0, Lcom/android/server/net/NetworkManagementService;->mStrictEnabled:Z

    .line 430
    iget-boolean v7, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 432
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 434
    sget-boolean v8, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pushing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " active quota rules"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    .line 435
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 436
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 437
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 438
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/net/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    goto :goto_1

    .line 442
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 444
    sget-boolean v8, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pushing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " active alert rules"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_2
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 446
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 447
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 448
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/net/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    goto :goto_2

    .line 452
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    const/4 v8, 0x0

    if-nez v7, :cond_9

    .line 455
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :try_start_1
    iget-object v9, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_5

    .line 458
    sget-boolean v11, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v11, :cond_4

    .line 459
    const-string v11, "NetworkManagement"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pushing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " UIDs to metered denylist rules"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_7

    .line 461
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 462
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_4

    :cond_5
    move-object v9, v10

    .line 465
    :goto_4
    iget-object v11, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 467
    sget-boolean v10, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v10, :cond_6

    .line 468
    const-string v10, "NetworkManagement"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pushing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " UIDs to metered allowlist rules"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_6
    iget-object v10, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 471
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 473
    :cond_7
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_8

    move v7, v8

    .line 475
    :goto_5
    :try_start_2
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 476
    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    .line 477
    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v12

    .line 476
    invoke-virtual {p0, v11, v12}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    add-int/2addr v7, v5

    goto :goto_5

    :cond_8
    if-eqz v10, :cond_9

    move v7, v8

    .line 481
    :goto_6
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v7, v9, :cond_9

    .line 482
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    .line 483
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    .line 482
    invoke-virtual {p0, v9, v11}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v7, v5

    goto :goto_6

    .line 473
    :goto_7
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 488
    :cond_9
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 490
    sget-boolean v9, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v9, :cond_a

    const-string v9, "NetworkManagement"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pushing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " active UID cleartext policies"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_a
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 492
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    move v9, v8

    .line 493
    :goto_8
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 494
    invoke-virtual {v7, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v7, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/android/server/net/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    add-int/2addr v9, v5

    goto :goto_8

    .line 498
    :cond_b
    iget-boolean v7, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 500
    const-string v7, ""

    invoke-virtual {p0, v8, v7}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 501
    const-string/jumbo v7, "standby "

    invoke-virtual {p0, v3, v7}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 502
    const-string v3, "dozable "

    invoke-virtual {p0, v5, v3}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 503
    const-string/jumbo v3, "powersave "

    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 504
    const-string/jumbo v2, "restricted "

    invoke-virtual {p0, v1, v2}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 505
    const-string v1, "low power standby "

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 506
    const-string v0, "background"

    invoke-virtual {p0, v4, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 507
    iget-boolean v0, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    if-eqz v0, :cond_c

    .line 508
    const-string/jumbo v0, "metered_allow"

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 510
    const-string/jumbo v0, "metered_deny_user"

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 512
    const-string/jumbo v0, "metered_deny_admin"

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 516
    :cond_c
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    :goto_9
    if-ge v8, v4, :cond_e

    .line 525
    aget v1, v0, v8

    .line 526
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 527
    invoke-virtual {p0, v1, v5}, Lcom/android/server/net/NetworkManagementService;->setFirewallChainEnabled(IZ)V

    :cond_d
    add-int/2addr v8, v5

    goto :goto_9

    .line 530
    :cond_e
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 533
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-void

    .line 530
    :goto_a
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 307
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 903
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 906
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 911
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 912
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 916
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 914
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 916
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 857
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 860
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    :try_start_1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 872
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 870
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 872
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setDataSaverModeEnabled(Z)Z
    .locals 6

    .line 979
    invoke-super {p0}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled_enforcePermission()V

    .line 981
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSaverMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 983
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    const/4 v2, 0x1

    if-ne v1, p1, :cond_1

    .line 984
    const-string p1, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSaverMode(): already "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 987
    :cond_1
    const-string/jumbo v1, "setDataSaverModeEnabled"

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setDataSaverEnabled(Z)V

    .line 991
    iput-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    .line 992
    iget-boolean v1, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    if-eqz v1, :cond_2

    .line 996
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 997
    :try_start_2
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/16 v5, 0xa

    invoke-virtual {p0, v5, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 998
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 1005
    :cond_2
    :goto_0
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    .line 1002
    :goto_1
    :try_start_5
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDataSaverMode("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "): failed with exception"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1005
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1006
    throw p0

    .line 1007
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public setFirewallChainEnabled(IZ)V
    .locals 3

    .line 1094
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 1095
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1096
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1100
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    .line 1102
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->setFirewallChainState(IZ)V

    .line 1103
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1105
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->isValidFirewallChainForSetEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1110
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1112
    :try_start_5
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->setFirewallChainEnabled(IZ)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1116
    :try_start_6
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 1114
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1106
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid chain for setFirewallChainEnabled: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1103
    :goto_0
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    .line 1116
    :goto_1
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public final setFirewallChainState(IZ)V
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1497
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1498
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFirewallEnabled(Z)V
    .locals 2

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 1078
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    .line 1080
    iput-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1082
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setFirewallUidRule(III)V
    .locals 1

    .line 1187
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 1188
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1189
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 1190
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setFirewallUidRuleLocked(III)V
    .locals 1

    .line 1194
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1197
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/ConnectivityManager;->setUidFirewallRule(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1199
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-void
.end method

.method public setFirewallUidRules(I[I[I)V
    .locals 8

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 1151
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1153
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1154
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 1156
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_0

    .line 1157
    aget v5, p2, v4

    .line 1158
    aget v6, p3, v4

    .line 1159
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 1160
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 1163
    :cond_0
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    .line 1164
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    const/4 v5, 0x0

    if-ltz v4, :cond_2

    .line 1165
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 1166
    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_1

    .line 1167
    invoke-virtual {p3, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1171
    :cond_2
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    .line 1172
    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1173
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1175
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    :try_start_2
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class p3, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1178
    :try_start_3
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->replaceFirewallChain(I[I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 1180
    :try_start_4
    const-string p2, "NetworkManagement"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error flushing firewall chain "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1182
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 1175
    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    .line 1182
    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 807
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 809
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 880
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 891
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 892
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 894
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 886
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "iface "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has alert"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 896
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 881
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "setting alert requires existing quota on iface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    invoke-static {p2, p1}, Lcom/android/server/net/NetworkManagementService;->toStableParcel(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p1

    .line 749
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 751
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 743
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Null LinkAddress given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 758
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 760
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    return-void
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 775
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 777
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 837
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 844
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 846
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 850
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 848
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 839
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "iface "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has quota"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 850
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 766
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 768
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    return-void
.end method

.method public setUidCleartextNetworkPolicy(II)V
    .locals 4

    .line 1036
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkManagementService$Dependencies;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1045
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1049
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/net/NetworkManagementService;->mStrictEnabled:Z

    if-nez v3, :cond_2

    .line 1052
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1053
    monitor-exit v0

    return-void

    :cond_2
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 1062
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1065
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1066
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setUidOnMeteredNetworkAllowlist(IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 972
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    return-void
.end method

.method public setUidOnMeteredNetworkDenylist(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 967
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    return-void
.end method

.method public final setUidOnMeteredNetworkList(IZZ)V
    .locals 6

    .line 920
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 922
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_0

    .line 926
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    :goto_0
    const/4 v3, 0x0

    .line 927
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 928
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, p3, :cond_1

    .line 931
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_7

    .line 934
    :cond_1
    const-string v1, "inetd bandwidth"

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 935
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 939
    :try_start_3
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->addUidToMeteredNetworkAllowList(I)V

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    .line 941
    :cond_2
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->removeUidFromMeteredNetworkAllowList(I)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 945
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->addUidToMeteredNetworkDenyList(I)V

    goto :goto_1

    .line 947
    :cond_4
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->removeUidFromMeteredNetworkDenyList(I)V

    .line 950
    :goto_1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 952
    :try_start_4
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :catchall_3
    move-exception p1

    goto :goto_3

    .line 954
    :cond_5
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 956
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 960
    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 962
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    .line 956
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 958
    :goto_4
    :try_start_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 960
    :goto_5
    :try_start_9
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 961
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 928
    :goto_6
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw p0

    .line 962
    :goto_7
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p0
.end method

.method public shutdown()V
    .locals 1

    .line 828
    invoke-super {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown_enforcePermission()V

    .line 830
    const-string p0, "NetworkManagement"

    const-string v0, "Shutting down"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final syncFirewallChainLocked(ILjava/lang/String;)V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 395
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 396
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 401
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pushing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active firewall "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "UID rules"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x0

    .line 403
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 404
    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/net/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 396
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public systemReady()V
    .locals 4

    .line 282
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 284
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->prepareNativeDaemon()V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Prepared in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkManagement"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->prepareNativeDaemon()V

    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 313
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateFirewallUidRuleLocked(III)Z
    .locals 8

    .line 1206
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1207
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 1209
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1210
    sget-boolean v4, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_0

    .line 1211
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oldRule = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", newRule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " on chain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-ne v3, p3, :cond_2

    if-eqz v4, :cond_1

    .line 1215
    const-string p0, "NetworkManagement"

    const-string p1, "!!!!! Skipping change"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_1
    monitor-exit v0

    return v2

    .line 1220
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/net/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v2

    .line 1221
    invoke-virtual {p0, p1, v3}, Lcom/android/server/net/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object p0

    if-nez p3, :cond_3

    .line 1224
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1

    .line 1226
    :cond_3
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1228
    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    .line 1229
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
