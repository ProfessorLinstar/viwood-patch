.class public Lcom/android/server/wm/SplashScreenExceptionList;
.super Ljava/lang/Object;
.source "SplashScreenExceptionList.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDeviceConfigExcludedPackages:Ljava/util/HashSet;

.field public final mLock:Ljava/lang/Object;

.field final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# direct methods
.method public static synthetic $r8$lambda$_hA_DqN4gaVgjs_Ss9uV-gDsca4(Lcom/android/server/wm/SplashScreenExceptionList;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/SplashScreenExceptionList;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    .line 60
    const-string v0, "splash_screen_exception_list"

    const-string v1, ""

    const-string v2, "window_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SplashScreenExceptionList;->updateDeviceConfig(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SplashScreenExceptionList;)V

    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 63
    invoke-static {v2, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static isOptedOut(Ljava/util/function/Supplier;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 111
    :cond_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_1

    .line 112
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string v1, "android.splashscreen.exception_opt_out"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public isException(Ljava/lang/String;ILjava/util/function/Supplier;)Z
    .locals 6

    const/16 v0, 0x23

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    return v1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/SplashScreenExceptionList;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 91
    const-string v2, "SplashScreenExceptionList"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SplashScreen checking exception for package %s (target sdk:%d) -> %s"

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v5, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    .line 94
    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {p1, p2, v5}, [Ljava/lang/Object;

    move-result-object p2

    .line 91
    invoke-static {v3, v4, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 97
    monitor-exit v0

    return v1

    .line 99
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {p3}, Lcom/android/server/wm/SplashScreenExceptionList;->isOptedOut(Ljava/util/function/Supplier;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 99
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 61
    const-string v0, "splash_screen_exception_list"

    const-string v1, ""

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;->updateDeviceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public final parseDeviceConfigPackageList(Ljava/lang/String;)V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 119
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 120
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateDeviceConfig(Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;->parseDeviceConfigPackageList(Ljava/lang/String;)V

    return-void
.end method
