.class public Lcom/android/server/pm/DexOptHelper$2;
.super Ljava/lang/Object;
.source "DexOptHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 820
    const-string v0, "/dev/cpuctl/dex2oat/tasks"

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->getArtNodeInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 822
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$sfgetmArtCoreCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$sfgetmLoopCount()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 823
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$sfgetmLoopCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$sfputmLoopCount(I)V

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$sfputmLoopCount(I)V

    .line 824
    sget-object v0, Lcom/android/server/pm/DexOptHelper;->mArtHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 827
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$sfgetmArtCoreCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_3

    move v2, v1

    .line 828
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 831
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x33c

    const/16 v5, 0x2fd

    .line 829
    invoke-static {v5, v4, v3}, Lcom/android/internal/content/NativeLibraryHelper;->setUclamp(III)I

    move-result v3

    .line 832
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v6, :cond_2

    if-nez v3, :cond_2

    .line 834
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ArtsetUclamp,set pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ");set cpuMinFrep is ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ");set cpuMaxFrep is ="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",result is ="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 845
    :goto_2
    invoke-static {v1}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$sfputmLoopCount(I)V

    .line 846
    sget-object v1, Lcom/android/server/pm/DexOptHelper;->mArtHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 847
    throw v0

    .line 845
    :catch_0
    invoke-static {v1}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$sfputmLoopCount(I)V

    .line 846
    sget-object v0, Lcom/android/server/pm/DexOptHelper;->mArtHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 845
    :cond_3
    invoke-static {v1}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$sfputmLoopCount(I)V

    .line 846
    sget-object v0, Lcom/android/server/pm/DexOptHelper;->mArtHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
