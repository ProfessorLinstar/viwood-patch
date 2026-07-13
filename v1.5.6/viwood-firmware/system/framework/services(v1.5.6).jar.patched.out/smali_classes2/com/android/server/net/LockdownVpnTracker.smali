.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# instance fields
.field public mAcceptedEgressIface:Ljava/lang/String;

.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mConfigIntent:Landroid/app/PendingIntent;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

.field public final mHandler:Landroid/os/Handler;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mProfile:Lcom/android/internal/net/VpnProfile;

.field public final mResetIntent:Landroid/app/PendingIntent;

.field public final mStateLock:Ljava/lang/Object;

.field public final mVpn:Lcom/android/server/connectivity/Vpn;

.field public final mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmStateLock(Lcom/android/server/net/LockdownVpnTracker;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleStateChangedLocked(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;-><init>(Lcom/android/server/net/LockdownVpnTracker;Lcom/android/server/net/LockdownVpnTracker-IA;)V

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    .line 72
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;-><init>(Lcom/android/server/net/LockdownVpnTracker;Lcom/android/server/net/LockdownVpnTracker-IA;)V

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 136
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 137
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 139
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 140
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 142
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.settings.VPN_SETTINGS"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    const/high16 p4, 0x4000000

    .line 143
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 146
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 147
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final handleStateChangedLocked()V
    .locals 8

    .line 157
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->getNetwork()Landroid/net/Network;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 165
    iget-object v6, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 166
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    const/4 v5, 0x0

    if-nez v1, :cond_3

    move-object v1, v5

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 170
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleStateChanged: egress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LockdownVpnTracker"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    if-eqz v4, :cond_5

    .line 173
    :cond_4
    iput-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 174
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    :cond_5
    if-eqz v0, :cond_6

    .line 177
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    return-void

    .line 182
    :cond_6
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_8

    .line 183
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v0

    const v2, 0x1040aae

    const v3, 0x1080ac2

    if-nez v0, :cond_7

    .line 184
    const-string v0, "Invalid VPN profile; requires IP-based server and DNS"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    return-void

    .line 189
    :cond_7
    const-string v0, "Active network connected; starting VPN"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1040aac

    .line 190
    invoke-virtual {p0, v0, v3}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 192
    iput-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 213
    iput-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 214
    const-string v1, "Failed to start VPN"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto :goto_2

    .line 217
    :cond_8
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    .line 218
    iget-object v0, v3, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 219
    iget-object v1, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN connected using iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sourceAddr="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1040aab

    const v1, 0x1080ac1

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final hideNotification()V
    .locals 2

    .line 303
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public init()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 230
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initLocked()V
    .locals 3

    .line 234
    const-string v0, "LockdownVpnTracker"

    const-string v1, "initLocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setLegacyLockdownVpnEnabled(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 241
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 242
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 243
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 244
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 275
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 279
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 281
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final showNotification(II)V
    .locals 3

    .line 285
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const-string v2, "VPN"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 289
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v0, 0x1040aaa

    .line 290
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 291
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 292
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v0, 0x1040923

    .line 293
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    const v1, 0x1080578

    invoke-virtual {p1, v1, p2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v0, 0x106001c

    .line 295
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 298
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p2, 0x14

    .line 299
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0, v0, p2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 252
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shutdownLocked()V
    .locals 2

    .line 256
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "shutdownLocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    .line 261
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setLegacyLockdownVpnEnabled(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 265
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
