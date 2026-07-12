.class public final Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StatsBootstrapAtomService.java"


# instance fields
.field public mStatsBootstrapAtomService:Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 110
    new-instance v0, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;

    invoke-direct {v0}, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;->mStatsBootstrapAtomService:Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;

    .line 112
    :try_start_0
    const-string/jumbo v1, "statsbootstrap"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 116
    const-string v0, "StatsBootstrapAtomService"

    const-string v1, "Failed to publishBinderService"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
