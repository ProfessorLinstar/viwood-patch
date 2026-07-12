.class public final Lcom/android/server/crashrecovery/CrashRecoveryHelper;
.super Ljava/lang/Object;
.source "CrashRecoveryHelper.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$u7RLnZviLxfbHO9w6ST_8TjtWIg(Lcom/android/server/crashrecovery/CrashRecoveryHelper;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->lambda$registerConnectivityModuleHealthListener$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 54
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    return-void
.end method


# virtual methods
.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x400000

    .line 128
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 130
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 109
    new-instance p0, Landroid/content/pm/VersionedPackage;

    invoke-direct {p0, p1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final synthetic lambda$registerConnectivityModuleHealthListener$0(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object p1

    if-nez p1, :cond_0

    .line 92
    const-string p0, "CrashRecoveryHelper"

    const-string p1, "NetworkStack failed but could not find its package"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 96
    iget-object p0, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/PackageWatchdog;->notifyPackageFailure(Ljava/util/List;I)V

    return-void
.end method

.method public registerConnectivityModuleHealthListener()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    new-instance v1, Lcom/android/server/crashrecovery/CrashRecoveryHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/crashrecovery/CrashRecoveryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/crashrecovery/CrashRecoveryHelper;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityModuleConnector;->registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V

    return-void
.end method
