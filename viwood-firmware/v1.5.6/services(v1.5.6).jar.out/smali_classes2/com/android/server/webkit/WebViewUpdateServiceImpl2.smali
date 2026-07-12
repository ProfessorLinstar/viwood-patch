.class public Lcom/android/server/webkit/WebViewUpdateServiceImpl2;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl2.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WebViewUpdateServiceImpl2"


# instance fields
.field public mAnyWebViewInstalled:Z

.field public mAttemptedToRepairBefore:Z

.field public mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field public final mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

.field public final mLock:Ljava/lang/Object;

.field public mMinimumVersionCode:J

.field public mNumRelroCreationsFinished:I

.field public mNumRelroCreationsStarted:I

.field public final mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field public mWebViewPackageDirty:Z


# direct methods
.method public static synthetic $r8$lambda$XXuU2jy5ieCy09in8MCscEXoIck(Lcom/android/server/webkit/WebViewUpdateServiceImpl2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->startZygoteWhenReady()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/webkit/SystemInterface;)V
    .locals 5

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 91
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 95
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 97
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 108
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 112
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p1

    .line 115
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 116
    iget-boolean v4, v3, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 126
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    return-void

    .line 124
    :cond_2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "No available by default WebView Provider."

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInvalidityReason(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 800
    const-string p0, "Unexcepted validity-reason"

    return-object p0

    .line 798
    :cond_0
    const-string p0, "No WebView-library manifest flag"

    return-object p0

    .line 796
    :cond_1
    const-string p0, "Incorrect signature"

    return-object p0

    .line 794
    :cond_2
    const-string p0, "Version code too low"

    return-object p0

    .line 792
    :cond_3
    const-string p0, "Not compatible with this OS version"

    return-object p0
.end method

.method public static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .locals 2

    .line 537
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UserPackage;

    .line 538
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .locals 5

    .line 673
    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 676
    :cond_0
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 679
    :cond_1
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    return v1

    .line 682
    :cond_2
    iget-object p0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_4

    aget-object v3, p0, v2

    .line 683
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static versionCodeGE(JJ)Z
    .locals 2

    const-wide/32 v0, 0x186a0

    .line 630
    div-long/2addr p0, v0

    .line 631
    div-long/2addr p2, v0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final attemptRepair()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    if-eqz v1, :cond_0

    .line 207
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 209
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    sget-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider available for all users, trying to install and enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v3, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/server/webkit/SystemInterface;->installExistingPackageForAllUsers(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object p0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/android/server/webkit/SystemInterface;->enablePackageForAllUsers(Ljava/lang/String;Z)V

    return-void

    .line 210
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 334
    const-string p0, ""

    return-object p0

    .line 335
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final checkIfRelrosDoneLocked()V
    .locals 2

    .line 569
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1

    .line 570
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 575
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 576
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 585
    :cond_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .locals 10

    .line 748
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 749
    const-string v1, "  WebView packages:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 751
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 752
    invoke-interface {v5, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 754
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/UserPackage;

    invoke-virtual {v5}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_0

    .line 756
    iget-object v4, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 757
    const-string v5, "    %s is NOT installed."

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 756
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 761
    :cond_0
    invoke-virtual {p0, v4, v5}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v6

    .line 762
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 766
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 767
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 763
    const-string/jumbo v8, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_2

    .line 769
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 771
    invoke-interface {v6, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v4

    .line 770
    invoke-static {v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v4

    .line 772
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 777
    const-string v4, ""

    goto :goto_1

    :cond_1
    const-string v4, "NOT"

    :goto_1
    filled-new-array {v5, v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 773
    const-string v5, "    Valid package %s (%s) is %s installed/enabled for all users"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 772
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 779
    :cond_2
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 784
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getInvalidityReason(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v7, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 780
    const-string v5, "    Invalid package %s (%s), reason: %s"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 779
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public dumpState(Ljava/io/PrintWriter;)V
    .locals 4

    .line 703
    const-string v0, "Current WebView Update Service state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 706
    const-string v1, "  Current WebView package is null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 708
    :cond_0
    const-string v2, "  Current WebView package (name, version): (%s, %s)"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 709
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    :goto_0
    const-string v1, "  %s"

    .line 717
    invoke-static {}, Landroid/webkit/WebViewFactoryProvider;->describeCompatibleImplementationPackage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 715
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    const-string v1, "  Minimum WebView version code: %d"

    iget-wide v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    .line 720
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 719
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    const-string v1, "  Number of relros started: %d"

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 723
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 722
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    const-string v1, "  Number of relros finished: %d"

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 726
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 725
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 724
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    const-string v1, "  WebView package dirty: %b"

    iget-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    const-string v1, "  Any WebView package installed: %b"

    iget-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 730
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 729
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 734
    const-string v2, "  Preferred WebView package (name, version): (%s, %s)"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 735
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 740
    :catch_0
    :try_start_2
    const-string v1, "  Preferred WebView package: none"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V

    .line 744
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 5

    .line 478
    const-string/jumbo v0, "webview.value_find_preferred_webview_package_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getWebViewProviderForPackage(Ljava/lang/String;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    .line 484
    const-string v2, ") not found"

    if-eqz v1, :cond_0

    .line 486
    :try_start_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 487
    invoke-interface {v3, v1}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 488
    invoke-virtual {p0, v1, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v4

    if-nez v4, :cond_0

    .line 489
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 490
    invoke-interface {v4, v1}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v1

    .line 491
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v3

    .line 496
    :catch_0
    sget-object v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User chosen WebView package ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 508
    :cond_1
    const-string/jumbo v0, "webview.value_default_webview_package_invalid_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 511
    :catch_1
    sget-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default WebView package ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v3, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    const-string/jumbo v0, "webview.value_webview_not_usable_for_all_users_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 516
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 517
    new-instance p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException;

    const-string v0, "Could not find a loadable WebView package"

    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 552
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;
    .locals 0

    .line 442
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    return-object p0
.end method

.method public final getMinimumVersionCode()J
    .locals 10

    .line 647
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    array-length v1, v0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_3

    aget-object v7, v0, v6

    .line 653
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_2

    .line 655
    :try_start_0
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 656
    invoke-interface {v8, v7}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v9, v4, v2

    if-ltz v9, :cond_1

    cmp-long v9, v7, v4

    if-gez v9, :cond_2

    :cond_1
    move-wide v4, v7

    :catch_0
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 666
    :cond_3
    iput-wide v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    return-wide v4
.end method

.method public getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 3

    .line 428
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    move-result-object p0

    .line 429
    array-length v0, p0

    new-array v0, v0, [Landroid/webkit/WebViewProviderInfo;

    const/4 v1, 0x0

    .line 431
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 432
    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;
    .locals 6

    .line 456
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 458
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 460
    :try_start_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v4, v0, v2

    .line 461
    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 462
    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v4

    if-nez v4, :cond_0

    .line 463
    new-instance v4, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    return-object p0
.end method

.method public getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getWebViewProviderForPackage(Ljava/lang/String;)Landroid/webkit/WebViewProviderInfo;
    .locals 2

    .line 521
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p0

    const/4 v0, 0x0

    .line 522
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 523
    aget-object v1, p0, v0

    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleNewUser(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->handleUserChange()V

    return-void
.end method

.method public final handleUserChange()V
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public handleUserRemoved(I)V
    .locals 0

    .line 267
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->handleUserChange()V

    return-void
.end method

.method public notifyRelroCreationCompleted()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 283
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->checkIfRelrosDoneLocked()V

    .line 284
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 395
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 396
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->pinWebviewIfRequired(Landroid/content/pm/ApplicationInfo;)V

    .line 398
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const v1, 0x7fffffff

    .line 403
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    const/4 v1, 0x0

    .line 404
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 405
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 406
    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 407
    const-string/jumbo v1, "webview.value_on_webview_provider_changed_counter"

    invoke-static {v1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 408
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 409
    const-string/jumbo p1, "webview.value_on_webview_provider_changed_with_default_package_counter"

    invoke-static {p1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 415
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->checkIfRelrosDoneLocked()V

    goto :goto_1

    .line 417
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 419
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/webkit/WebViewUpdateServiceImpl2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 419
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public packageStateChanged(Ljava/lang/String;II)V
    .locals 6

    .line 133
    iget-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_6

    aget-object v2, p2, v1

    .line 134
    iget-object v3, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 136
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 142
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 p1, 0x0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 145
    iget-object p3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz p3, :cond_0

    .line 146
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p2

    move-object p3, p1

    :goto_1
    move v1, v0

    goto :goto_5

    :cond_0
    move-object p3, p1

    .line 151
    :goto_2
    :try_start_1
    iget-object v1, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 153
    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    move v1, v0

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_3
    const/4 v1, 0x1

    .line 157
    :goto_4
    :try_start_2
    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 158
    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_3

    .line 160
    invoke-virtual {p0, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catch_2
    move-exception p2

    move v5, v1

    move v1, v0

    move v0, v5

    .line 163
    :goto_5
    :try_start_3
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 164
    sget-object p1, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find valid WebView package to create relro with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v1

    move v1, v0

    move v0, v5

    .line 167
    :cond_3
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    move-result p1

    .line 168
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    .line 175
    iget-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p2, p3}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_6

    .line 178
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V

    goto :goto_8

    .line 168
    :goto_7
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_8
    return-void
.end method

.method public prepareWebViewInSystemServer()V
    .locals 4

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 224
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    move-result v1

    .line 225
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 235
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 236
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 239
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V
    :try_end_2
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 236
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 247
    sget-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    const-string v1, "error preparing webview provider from system server"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_0
    move-exception p0

    .line 243
    sget-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    const-string v1, "Could not find valid WebView package to create relro with"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public final shouldTriggerRepairLocked()Z
    .locals 4

    .line 186
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 192
    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v3, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 194
    invoke-interface {v0, p0}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object p0

    .line 195
    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_2
    return v1
.end method

.method public final startZygoteWhenReady()V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    .line 255
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p0}, Lcom/android/server/webkit/SystemInterface;->ensureZygoteStarted()V

    return-void
.end method

.method public final updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 6

    .line 348
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 356
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 357
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 358
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    .line 368
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    :cond_3
    if-nez p1, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    move-result v3

    .line 375
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    .line 378
    iget-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 381
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V

    :cond_6
    return-object v2

    :goto_3
    const/4 v1, 0x0

    .line 362
    :try_start_3
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 363
    sget-object p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find WebView package to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    monitor-exit v0

    return-object v1

    .line 375
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .locals 4

    .line 592
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0, p2}, Lcom/android/server/webkit/SystemInterface;->isCompatibleImplementationPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 595
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getMinimumVersionCode()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->versionCodeGE(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 596
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 601
    :cond_1
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 604
    :cond_2
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 9

    .line 289
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    .line 292
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->webViewIsReadyLocked()Z

    move-result v5

    :goto_0
    if-nez v5, :cond_1

    .line 295
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v8, v6, v0

    if-ltz v8, :cond_0

    goto :goto_2

    .line 298
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 302
    :catch_0
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->webViewIsReadyLocked()Z

    move-result v5

    goto :goto_0

    .line 305
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_2

    const/4 p0, 0x0

    goto :goto_3

    .line 308
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    if-nez v1, :cond_3

    const/4 p0, 0x4

    goto :goto_3

    .line 314
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " relros finished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package dirty? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 318
    sget-object v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x40

    .line 319
    invoke-static {v1, v2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    const/4 p0, 0x3

    .line 321
    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_4

    .line 322
    sget-object v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    const-string v2, "creating relro file timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_4
    new-instance v1, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v1, v0, p0}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v1

    .line 321
    :goto_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final webViewIsReadyLocked()Z
    .locals 2

    .line 560
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
