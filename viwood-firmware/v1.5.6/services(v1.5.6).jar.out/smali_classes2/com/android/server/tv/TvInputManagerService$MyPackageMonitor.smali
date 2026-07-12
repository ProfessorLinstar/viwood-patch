.class public Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TvInputManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Z)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 307
    invoke-direct {p0, p2}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final buildTvInputList([Ljava/lang/String;)V
    .locals 4

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 314
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2, v0, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mbuildTvInputListLocked(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 315
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mbuildTvContentRatingSystemListLocked(Lcom/android/server/tv/TvInputManagerService;I)V

    .line 317
    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0

    .line 325
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    return-void
.end method
