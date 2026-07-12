.class public final Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# instance fields
.field public final mIgnorePreferredRefreshRate:Z

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 0

    .line 1366
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1367
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags;->ignoreAppPreferredRefreshRateRequest()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1474
    const-string v0, "  AppRequestObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIgnorePreferredRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findAppModeByIdLocked(II)Landroid/view/Display$Mode;
    .locals 4

    .line 1461
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display$Mode;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 1465
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 1466
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    if-ne v3, p2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final findDefaultModeByRefreshRateLocked(IF)Landroid/view/Display$Mode;
    .locals 4

    .line 1449
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 1450
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Display$Mode;

    const/4 p1, 0x0

    .line 1451
    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 1452
    aget-object v1, v0, p1

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 1453
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    .line 1452
    invoke-virtual {v1, v2, v3, p2}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1454
    aget-object p0, v0, p1

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findModeLocked(IIF)Landroid/view/Display$Mode;
    .locals 1

    if-eqz p2, :cond_0

    .line 1400
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->findAppModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_2

    .line 1401
    iget-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    if-nez p2, :cond_2

    .line 1404
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->findDefaultModeByRefreshRateLocked(IF)Landroid/view/Display$Mode;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find a mode for the requestedRefreshRate: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " on Display: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayModeDirector"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBaseModeVote(Landroid/view/Display$Mode;F)Lcom/android/server/display/mode/Vote;
    .locals 0

    if-eqz p1, :cond_1

    .line 1436
    invoke-virtual {p1}, Landroid/view/Display$Mode;->isSynthetic()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1437
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    invoke-static {p0}, Lcom/android/server/display/mode/Vote;->forRequestedRefreshRate(F)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0

    .line 1439
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    invoke-static {p0}, Lcom/android/server/display/mode/Vote;->forBaseModeRefreshRate(F)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_2

    .line 1441
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    if-eqz p0, :cond_2

    .line 1442
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->forRequestedRefreshRate(F)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFrameRateVote(FF)Lcom/android/server/display/mode/Vote;
    .locals 2

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    cmpl-float v0, p2, p0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, v1

    goto :goto_3

    :cond_1
    :goto_1
    cmpl-float v0, p2, p0

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/high16 p2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1418
    :goto_2
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 1419
    iget p1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    cmpl-float p1, p1, p0

    if-nez p1, :cond_3

    iget p1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    cmpl-float p0, p1, p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1425
    iget p0, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget p1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {p0, p1}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public final getSizeVote(Landroid/view/Display$Mode;)Lcom/android/server/display/mode/Vote;
    .locals 0

    if-eqz p1, :cond_0

    .line 1430
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/mode/Vote;->forSize(II)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAppRequest(IIFFF)V
    .locals 2

    .line 1377
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1378
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->findModeLocked(IIF)Landroid/view/Display$Mode;

    move-result-object p2

    .line 1379
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isExternalDisplayLocked(I)Z

    move-result v1

    .line 1380
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    invoke-virtual {p0, p4, p5}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->getFrameRateVote(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p4

    .line 1384
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->getBaseModeVote(Landroid/view/Display$Mode;F)Lcom/android/server/display/mode/Vote;

    move-result-object p3

    .line 1386
    iget-object p5, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p5}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p5

    const/4 v0, 0x5

    invoke-virtual {p5, p1, v0, p4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1388
    iget-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p4

    const/4 p5, 0x6

    invoke-virtual {p4, p1, p5, p3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    if-nez v1, :cond_0

    .line 1392
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->getSizeVote(Landroid/view/Display$Mode;)Lcom/android/server/display/mode/Vote;

    move-result-object p2

    .line 1393
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    const/4 p3, 0x7

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 1380
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
