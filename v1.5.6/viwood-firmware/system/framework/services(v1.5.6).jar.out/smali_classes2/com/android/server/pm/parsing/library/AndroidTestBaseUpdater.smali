.class public Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "AndroidTestBaseUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method

.method public static isChangeEnabled(Lcom/android/server/pm/pkg/AndroidPackage;Z)Z
    .locals 3

    if-nez p1, :cond_0

    .line 64
    const-string/jumbo p1, "platform_compat"

    .line 65
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p1

    .line 68
    :try_start_0
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-wide/32 v1, 0x7f379d2

    .line 67
    invoke-interface {p1, v1, v2, v0}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 70
    const-string v0, "AndroidTestBaseUpdater"

    const-string v1, "Failed to get a response from PLATFORM_COMPAT_SERVICE"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 p1, 0x1d

    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 0

    .line 83
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;->isChangeEnabled(Lcom/android/server/pm/pkg/AndroidPackage;Z)Z

    move-result p2

    const-string p3, "android.test.base"

    if-nez p2, :cond_0

    .line 84
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_0
    const-string p2, "android.test.runner"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixImplicitDependency(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
