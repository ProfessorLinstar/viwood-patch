.class public Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;
.super Ljava/lang/Object;
.source "DexOptHelper.java"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/DexOptHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DexOptHelper;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/DexOptHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;-><init>(Lcom/android/server/pm/DexOptHelper;)V

    return-void
.end method


# virtual methods
.method public onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .locals 14

    const/4 v0, 0x1

    .line 617
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "first-boot"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v5, "boot-after-ota"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_0

    :sswitch_2
    const-string v5, "boot-after-mainline-update"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 625
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v3

    move v8, v7

    move v9, v8

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 626
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getStatus()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    if-eq v4, v2, :cond_4

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v9, v0

    goto :goto_1

    :cond_4
    add-int/2addr v7, v0

    goto :goto_1

    :cond_5
    add-int/2addr v8, v0

    goto :goto_1

    .line 639
    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v4}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmBootDexoptStartTime(Lcom/android/server/pm/DexOptHelper;)J

    move-result-wide v5

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$mreportBootDexopt(Lcom/android/server/pm/DexOptHelper;JIII)V

    .line 643
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 644
    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v4}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/DexOptHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    .line 645
    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService;->getOrCreateCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v4

    .line 647
    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 649
    invoke-virtual {v5}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDexContainerFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    move-result-wide v7

    .line 648
    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    goto :goto_3

    .line 653
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/DexOptHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/DexOptHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackageUsage()Lcom/android/server/pm/PackageUsage;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v4}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/DexOptHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 655
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/DexOptHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {p0}, Lcom/android/server/pm/CompilerStats;->maybeWriteAsync()Z

    .line 656
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 658
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object p0

    const-string v0, "inactive"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 659
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 660
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 664
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-wide v8, v4

    move-wide v10, v8

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 665
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDexContainerFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 666
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getSizeBytes()J

    move-result-wide v12

    add-long/2addr v12, v5

    add-long/2addr v10, v12

    .line 667
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getSizeBeforeBytes()J

    move-result-wide v12

    add-long/2addr v12, v5

    add-long/2addr v8, v12

    goto :goto_5

    .line 670
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    const/16 v6, 0x80

    .line 669
    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJZ)V

    goto :goto_4

    .line 676
    :cond_b
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 677
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 678
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->hasUpdatedArtifacts()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 679
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 682
    :cond_d
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 683
    const-class p1, Lcom/android/server/pinner/PinnerService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pinner/PinnerService;

    .line 684
    invoke-virtual {p1, p0, v3}, Lcom/android/server/pinner/PinnerService;->update(Landroid/util/ArraySet;Z)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 656
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x47de9523 -> :sswitch_2
        -0x23098d70 -> :sswitch_1
        -0xc5e4811 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
