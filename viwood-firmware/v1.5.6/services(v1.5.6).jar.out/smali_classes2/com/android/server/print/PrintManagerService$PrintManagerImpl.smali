.class public Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
.super Landroid/print/IPrintManager$Stub;
.source "PrintManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserStates(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZZ)Lcom/android/server/print/UserState;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleUserStopped(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserUnlocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserUnlocked(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Landroid/print/IPrintManager$Stub;-><init>()V

    .line 118
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    .line 124
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    .line 127
    iput-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 128
    const-string/jumbo p1, "user"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 129
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V

    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
    .locals 3

    .line 604
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 609
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 612
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    const/4 v1, 0x0

    .line 615
    invoke-virtual {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 616
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 619
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 621
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 622
    throw p0

    .line 616
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .locals 3

    .line 699
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 705
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 708
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 710
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 711
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 714
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 716
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 717
    throw p0

    .line 711
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .locals 3

    .line 650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 656
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 659
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 661
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 662
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 665
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    throw p0

    .line 662
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 299
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 302
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 306
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 309
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->cancelPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    throw p0

    .line 306
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 3

    .line 450
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 454
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 457
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 459
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 460
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 463
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 465
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw p0

    .line 460
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 3

    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 476
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 479
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 482
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 485
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    throw p0

    .line 482
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V
    .locals 4

    .line 837
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 839
    const-string/jumbo v1, "user_states"

    const-wide v2, 0x20b00000001L

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    .line 840
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState;

    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 841
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 747
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "PrintManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 753
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_3

    .line 754
    aget-object v3, p3, v1

    if-eqz v3, :cond_3

    .line 755
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 759
    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 762
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_3
    :goto_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 767
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 768
    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_4

    .line 770
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/UserState;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 772
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz v2, :cond_5

    .line 777
    :try_start_1
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p2, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 780
    :cond_5
    const-string p1, "PRINT MANAGER STATE (dumpsys print)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    new-instance p1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 786
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 787
    throw p0

    .line 772
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getBindInstantServiceAllowed(I)Z
    .locals 2

    .line 792
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 794
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by uid 2000 or 0"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 799
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 800
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 801
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 804
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->getBindInstantServiceAllowed()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    throw p0

    :catchall_1
    move-exception p0

    .line 801
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final getCurrentUserId()I
    .locals 2

    .line 1148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1150
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    throw p0
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;
    .locals 4

    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 249
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    .line 252
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v1

    .line 255
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 258
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->validateIconUserBoundary(Landroid/graphics/drawable/Icon;I)Landroid/graphics/drawable/Icon;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 262
    throw p0

    .line 255
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    .locals 1

    const/4 v0, 0x1

    .line 1016
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;
    .locals 1

    const/4 v0, 0x0

    .line 1022
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreateUserStateLocked(IZZZ)Lcom/android/server/print/UserState;
    .locals 1

    if-eqz p3, :cond_1

    .line 1028
    iget-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p3, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1029
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be unlocked for printing to be available"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1033
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/print/UserState;

    if-nez p3, :cond_2

    .line 1035
    new-instance p3, Lcom/android/server/print/UserState;

    iget-object p4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    invoke-direct {p3, p4, p1, v0, p2}, Lcom/android/server/print/UserState;-><init>(Landroid/content/Context;ILjava/lang/Object;Z)V

    .line 1036
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 1038
    invoke-virtual {p3}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 1042
    invoke-virtual {p3}, Lcom/android/server/print/UserState;->increasePriority()V

    :cond_4
    return-object p3
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 227
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 230
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p3, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 237
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 240
    throw p0

    .line 234
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getPrintJobInfos(II)Ljava/util/List;
    .locals 3

    .line 199
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 202
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    .line 205
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p1

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 212
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->getPrintJobInfos(I)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    throw p0

    .line 209
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getPrintServiceRecommendations(I)Ljava/util/List;
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p1

    .line 432
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 435
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 437
    invoke-virtual {p0, p1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 438
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 441
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->getPrintServiceRecommendations()Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 443
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 444
    throw p0

    .line 438
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getPrintServices(II)Ljava/util/List;
    .locals 4

    const/4 v0, 0x3

    .line 343
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 346
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 350
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 353
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 355
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 356
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 359
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    throw p0

    .line 356
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleUserStopped(I)V
    .locals 2

    .line 1073
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleUserUnlocked(I)V
    .locals 2

    .line 1051
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isPrintServiceEnabled(Landroid/content/ComponentName;I)Z
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 401
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 404
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 405
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 416
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 418
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 419
    monitor-exit v3

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 421
    :cond_0
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 422
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->isPrintServiceEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    .line 422
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "PrintService does not share UID with caller."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isPrintingEnabled()Z
    .locals 2

    .line 831
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "no_printing"

    .line 832
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 831
    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 137
    new-instance v0, Lcom/android/server/print/PrintShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/print/PrintShellCommand;-><init>(Landroid/print/IPrintManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 8

    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->isPrintingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 146
    const-class p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 147
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 148
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    .line 149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    .line 151
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/app/admin/DevicePolicyManagerInternal;->getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    const/4 p6, 0x1

    invoke-static {p0, p3, p1, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 158
    :cond_0
    :goto_0
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    :try_start_1
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    const-string p0, "PrintManagerService"

    const-string p1, "Error calling IPrintDocumentAdapter.start()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_1
    :try_start_2
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->finish()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 168
    :catch_1
    const-string p0, "PrintManagerService"

    const-string p1, "Error calling IPrintDocumentAdapter.finish()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v1

    .line 158
    :goto_3
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    throw p0

    .line 172
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 173
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 175
    invoke-virtual {p0, p6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p4

    .line 179
    iget-object p6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p6

    .line 181
    :try_start_3
    invoke-virtual {p0, p4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 182
    monitor-exit p6

    return-object v1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 184
    :cond_2
    invoke-virtual {p0, p5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v7

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 p1, 0x0

    .line 186
    invoke-virtual {p0, p4, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 187
    monitor-exit p6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    move-object v4, p2

    move-object v5, p3

    .line 190
    :try_start_4
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 193
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_2
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    throw p2

    .line 187
    :goto_4
    :try_start_5
    monitor-exit p6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public final registerBroadcastReceivers()V
    .locals 4

    .line 872
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Z)V

    .line 1011
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final registerContentObservers()V
    .locals 4

    .line 848
    const-string v0, "disabled_print_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 850
    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 867
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 3

    .line 628
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 632
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 635
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 637
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 638
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 641
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 643
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 644
    throw p0

    .line 638
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .locals 3

    .line 723
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 729
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 733
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 735
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 736
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 739
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    throw p0

    .line 736
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .locals 3

    .line 674
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 680
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 683
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 685
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 686
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 689
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    throw p0

    .line 686
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final resolveCallingAppEnforcingPermissions(I)I
    .locals 3

    .line 1105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1109
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq p1, v0, :cond_3

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1114
    :cond_1
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 1117
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " as app "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return p1
.end method

.method public final resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1136
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1136
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 1138
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1140
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1144
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName has to belong to the caller"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resolveCallingProfileParentLocked(I)I
    .locals 2

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1089
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1091
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1093
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xa

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    throw p0

    :cond_1
    return p1
.end method

.method public final resolveCallingUserEnforcingPermissions(I)I
    .locals 8

    .line 1126
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1127
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v3, p1

    .line 1126
    :try_start_1
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_0
    move v3, p1

    :catch_1
    return v3
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .locals 3

    if-eqz p1, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->isPrintingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 322
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 325
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 328
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 332
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 335
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->restartPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    throw p0

    .line 332
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public setBindInstantServiceAllowed(IZ)V
    .locals 2

    .line 812
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by uid 2000 or 0"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 819
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 820
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 821
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 822
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 824
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/print/UserState;->setBindInstantServiceAllowed(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 827
    throw p0

    :catchall_1
    move-exception p0

    .line 821
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V
    .locals 3

    .line 367
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 372
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.printspooler"

    invoke-virtual {v1, v2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 371
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system and print spooler can call this"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 377
    const-string p1, "PrintManagerService"

    const-string p2, "Could not verify caller"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 381
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 387
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 390
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 393
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 395
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    throw p0

    .line 390
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .locals 3

    .line 494
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 496
    const-string v0, "PrinterId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 500
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 502
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 505
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 507
    invoke-virtual {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 508
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 511
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    throw p0

    .line 508
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 3

    .line 561
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 565
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 568
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 570
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 571
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 574
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 576
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 577
    throw p0

    .line 571
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 3

    .line 519
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 523
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 526
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 528
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 532
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    throw p0

    .line 529
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 3

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 586
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 589
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 592
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 595
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 597
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 598
    throw p0

    .line 592
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final validateIconUserBoundary(Landroid/graphics/drawable/Icon;I)Landroid/graphics/drawable/Icon;
    .locals 2

    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result p2

    .line 280
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result p0

    if-eq p2, p0, :cond_1

    const/4 p0, 0x0

    .line 283
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 285
    :cond_1
    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-object p1
.end method

.method public validatePrinters(Ljava/util/List;I)V
    .locals 3

    .line 540
    const-string v0, "PrinterId"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 542
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 544
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 547
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 549
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 550
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 553
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 556
    throw p0

    .line 550
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
