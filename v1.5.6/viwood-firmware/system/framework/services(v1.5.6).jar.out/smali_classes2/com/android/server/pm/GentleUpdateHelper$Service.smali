.class public Lcom/android/server/pm/GentleUpdateHelper$Service;
.super Landroid/app/job/JobService;
.source "GentleUpdateHelper.java"


# direct methods
.method public static synthetic $r8$lambda$RvfCcJzAVZaVQw7GbyiD953K7XA(Lcom/android/server/pm/GentleUpdateHelper;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/GentleUpdateHelper;->-$$Nest$mrunIdleJob(Lcom/android/server/pm/GentleUpdateHelper;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 69
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 70
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    .line 71
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->getGentleUpdateHelper()Lcom/android/server/pm/GentleUpdateHelper;

    move-result-object p0

    .line 72
    invoke-static {p0}, Lcom/android/server/pm/GentleUpdateHelper;->-$$Nest$fgetmHandler(Lcom/android/server/pm/GentleUpdateHelper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/pm/GentleUpdateHelper$Service$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/GentleUpdateHelper$Service$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/GentleUpdateHelper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 74
    const-string p1, "GentleUpdateHelper"

    const-string v0, "Failed to get PackageInstallerService"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
