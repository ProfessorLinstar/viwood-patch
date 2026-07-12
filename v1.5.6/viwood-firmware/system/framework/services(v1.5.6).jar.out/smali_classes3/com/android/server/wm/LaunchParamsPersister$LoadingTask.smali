.class public Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final mFutureTask:Ljava/util/concurrent/FutureTask;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method public static bridge synthetic -$$Nest$mexecute(Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->execute()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mget(Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->get()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;I)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput p2, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mUserId:I

    .line 336
    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;ILcom/android/server/wm/LaunchParamsPersister-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;-><init>(Lcom/android/server/wm/LaunchParamsPersister;I)V

    return-void
.end method


# virtual methods
.method public call()Landroid/util/ArrayMap;
    .locals 17

    move-object/from16 v1, p0

    const/16 v0, 0xa

    .line 356
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iget v3, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mUserId:I

    invoke-static {v0, v3}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$mgetLaunchParamFolder(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;

    move-result-object v3

    .line 360
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "LaunchParamsPersister"

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t find launch param folder for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 365
    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-static {v0}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$fgetmPackageList(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/pm/PackageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 367
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 368
    new-instance v8, Landroid/util/ArrayMap;

    array-length v0, v7

    invoke-direct {v8, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 371
    array-length v9, v7

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_b

    aget-object v12, v7, v11

    .line 372
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-nez v13, :cond_1

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is not a file."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v16, v3

    goto/16 :goto_a

    .line 376
    :cond_1
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected params file name: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x5f

    .line 384
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v0, 0x2d

    const/4 v4, -0x1

    if-eq v15, v4, :cond_5

    add-int/lit8 v15, v15, 0x1

    .line 386
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-eq v15, v4, :cond_3

    .line 391
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    :cond_3
    invoke-virtual {v13, v14, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 396
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v12, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v12, v4

    goto :goto_2

    .line 402
    :cond_4
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 408
    :cond_5
    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    .line 406
    invoke-virtual {v13, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v14, 0x2f

    .line 409
    invoke-virtual {v4, v0, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_6

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected file name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 418
    :cond_6
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 421
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 425
    :cond_7
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    :try_start_1
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister-IA;)V

    .line 427
    invoke-static {v13}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v14

    .line 429
    :goto_3
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v15

    const/4 v10, 0x1

    if-eq v15, v10, :cond_a

    const/4 v10, 0x3

    if-eq v15, v10, :cond_a

    const/4 v10, 0x2

    if-eq v15, v10, :cond_8

    :goto_4
    const/4 v10, 0x0

    goto :goto_3

    .line 435
    :cond_8
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 436
    const-string v15, "launch_params"

    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 437
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v3

    :try_start_2
    const-string v3, "Unexpected tag name: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object/from16 v3, v16

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_6
    move-object v3, v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_6

    :cond_9
    move-object/from16 v16, v3

    .line 441
    invoke-virtual {v0, v12, v14}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restore(Ljava/io/File;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_5

    :cond_a
    move-object/from16 v16, v3

    .line 444
    invoke-virtual {v8, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v3, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$maddComponentNameToLaunchParamAffinityMapIfNotNull(Lcom/android/server/wm/LaunchParamsPersister;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    .line 425
    :goto_7
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    .line 448
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to restore launch params for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 453
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 454
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-static {v0}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$fgetmPersisterQueue(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/wm/PersisterQueue;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v14, 0x0

    invoke-direct {v1, v2, v14}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister-IA;)V

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v10}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_c
    return-object v8
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 329
    invoke-virtual {p0}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->call()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final execute()V
    .locals 1

    .line 340
    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final get()Landroid/util/ArrayMap;
    .locals 3

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load launch params for user#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LaunchParamsPersister"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :catch_1
    move-exception p0

    .line 347
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
