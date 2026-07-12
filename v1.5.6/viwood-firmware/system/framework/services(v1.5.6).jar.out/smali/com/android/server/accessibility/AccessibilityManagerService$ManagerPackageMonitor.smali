.class public Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# instance fields
.field public final mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public static synthetic $r8$lambda$Bop3hOfSsyTTVh4uqhghkHVpW6s(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 6576
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$RSPJeTjsuoqAPUWUkwoupUzsuO4(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 0

    .line 6654
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$V1BE6ithcLF5P-OqA3TXks0qHec(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 6578
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$eNpjW43pGVN4cMeU_g-MYPC-bGY([Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1

    .line 6653
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda3;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1

    const/4 v0, 0x1

    .line 6515
    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 6516
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 6

    .line 6633
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6635
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onHandleForceStop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";packages="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6637
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";uid="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";doit="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6635
    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 6640
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 6641
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p3

    .line 6644
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_1

    .line 6645
    monitor-exit p1

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6647
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p3

    if-nez p4, :cond_2

    .line 6652
    iget-object p0, p3, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda2;

    invoke-direct {p3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;)V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    monitor-exit p1

    return p0

    .line 6656
    :cond_2
    iget-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p4, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onPackagesForceStoppedLocked([Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6657
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 6659
    :cond_3
    monitor-exit p1

    return v1

    .line 6660
    :goto_0
    monitor-exit p1
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

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 6

    .line 6599
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6601
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onPackageRemoved"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 6606
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 6607
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 6610
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 6611
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6613
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monPackageRemovedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)V

    .line 6614
    monitor-exit p2

    return-void

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 6

    .line 6557
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6559
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onPackageUpdateFinished"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 6564
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    .line 6565
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6566
    invoke-static {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mparseAccessibilityServiceInfos(Lcom/android/server/accessibility/AccessibilityManagerService;I)Ljava/util/List;

    move-result-object v0

    .line 6567
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6568
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mparseAccessibilityShortcutInfos(Lcom/android/server/accessibility/AccessibilityManagerService;I)Ljava/util/List;

    move-result-object v1

    .line 6569
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 6570
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v3

    if-eq p2, v3, :cond_1

    .line 6571
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 6573
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    .line 6574
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v3, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 6577
    invoke-interface {v3, v5}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 6581
    :goto_1
    iget-object v5, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 6583
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5, p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    .line 6587
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 6592
    :cond_5
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, p2, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mmigrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    .line 6594
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSomePackagesChanged()V
    .locals 5

    .line 6521
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6523
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onSomePackagesChanged"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 6527
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 6528
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6529
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mparseAccessibilityServiceInfos(Lcom/android/server/accessibility/AccessibilityManagerService;I)Ljava/util/List;

    move-result-object v1

    .line 6530
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6531
    invoke-static {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mparseAccessibilityShortcutInfos(Lcom/android/server/accessibility/AccessibilityManagerService;I)Ljava/util/List;

    move-result-object v2

    .line 6532
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 6535
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 6536
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6541
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$misServiceInitializedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6542
    const-string p0, "AccessibilityManagerService"

    const-string/jumbo v0, "onSomePackagesChanged: service not initialized, skip the callback."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6544
    monitor-exit v3

    return-void

    .line 6546
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monSomePackagesChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/util/List;Ljava/util/List;)V

    .line 6548
    monitor-exit v3

    return-void

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
