.class public Lcom/android/server/connectivity/Vpn$Dependencies;
.super Ljava/lang/Object;
.source "Vpn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adoptFd(Lcom/android/server/connectivity/Vpn;I)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 487
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$Dependencies;->jniCreate(Lcom/android/server/connectivity/Vpn;I)I

    move-result p0

    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public calculateVpnMtu(Ljava/util/List;IIZ)I
    .locals 0

    .line 584
    invoke-static {p1, p2, p3, p4}, Landroid/net/vcn/util/MtuUtils;->getMtu(Ljava/util/List;IIZ)I

    move-result p0

    return p0
.end method

.method public getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;
    .locals 0

    .line 476
    const-class p0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/DeviceIdleInternal;

    return-object p0
.end method

.method public getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 0

    .line 480
    invoke-static {p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getJavaNetworkInterfaceMtu(Ljava/lang/String;I)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return p2

    .line 575
    :cond_1
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result p0

    return p0
.end method

.method public getNextRetryDelayMs(I)J
    .locals 0

    .line 530
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetIKEV2_VPN_RETRY_DELAYS_MS()[J

    move-result-object p0

    array-length p0, p0

    if-lt p1, p0, :cond_0

    .line 531
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetIKEV2_VPN_RETRY_DELAYS_MS()[J

    move-result-object p0

    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetIKEV2_VPN_RETRY_DELAYS_MS()[J

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-wide p0, p0, p1

    return-wide p0

    .line 533
    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetIKEV2_VPN_RETRY_DELAYS_MS()[J

    move-result-object p0

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getValidationFailRecoveryMs(I)J
    .locals 0

    .line 562
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetDATA_STALL_RECOVERY_DELAYS_MS()[J

    move-result-object p0

    array-length p0, p0

    if-lt p1, p0, :cond_0

    .line 563
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetDATA_STALL_RECOVERY_DELAYS_MS()[J

    move-result-object p0

    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetDATA_STALL_RECOVERY_DELAYS_MS()[J

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-wide p0, p0, p1

    return-wide p0

    .line 565
    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetDATA_STALL_RECOVERY_DELAYS_MS()[J

    move-result-object p0

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public isCallerSystem()Z
    .locals 1

    .line 472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public jniCreate(Lcom/android/server/connectivity/Vpn;I)I
    .locals 0

    .line 494
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniCreate(Lcom/android/server/connectivity/Vpn;I)I

    move-result p0

    return p0
.end method

.method public jniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;
    .locals 0

    .line 501
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public jniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 508
    invoke-static {p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public newNetworkAgent(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)Landroid/net/NetworkAgent;
    .locals 0

    .line 553
    new-instance p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    invoke-direct/range {p0 .. p9}, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)V

    return-object p0
.end method

.method public newScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 539
    new-instance p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    return-object p0
.end method

.method public setBlocking(Ljava/io/FileDescriptor;Z)V
    .locals 2

    .line 516
    :try_start_0
    invoke-static {p1, p2}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 518
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public verifyCallingUidAndPackage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 590
    invoke-static {p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$smgetAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p0, :cond_0

    return-void

    .line 591
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not belong to uid "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
