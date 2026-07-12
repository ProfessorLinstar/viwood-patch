.class public Lcom/android/server/appfunctions/MetadataSyncAdapter;
.super Ljava/lang/Object;
.source "MetadataSyncAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MetadataSyncAdapter"


# instance fields
.field public final mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

.field public mCurrentSyncTask:Ljava/util/concurrent/Future;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$CBjQBlCD4YksJi7K1SzBIv7SPQI(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 0

    .line 440
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$DYPEgw1PQUL9Ehs5opJEeqwWcVk(Lcom/android/server/appfunctions/MetadataSyncAdapter;Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->lambda$submitSyncRequest$0(Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/app/appsearch/AppSearchManager;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mLock:Ljava/lang/Object;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 86
    new-instance p1, Lcom/android/server/appfunctions/NamedThreadFactory;

    const-string p2, "AppFunctionSyncExecutors"

    invoke-direct {p1, p2}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static buildMetadataSearchSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/SearchSpec;
    .locals 2

    .line 462
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/PropertyPath;

    invoke-direct {v1, p1}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/app/appsearch/PropertyPath;

    invoke-direct {p1, p2}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-static {v1, p1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 467
    invoke-virtual {v0, p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addProjectionPaths(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    .line 472
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object p0

    return-object p0
.end method

.method public static convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;
    .locals 2

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/AppSearchResult;

    .line 216
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 218
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getAddedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 7

    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 378
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 379
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 383
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 385
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 386
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 388
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    :cond_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 392
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appfunctions/FutureAppSearchSession;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 417
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 422
    const-string v1, ""

    .line 426
    invoke-static {p1, p2, p3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildMetadataSearchSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/SearchSpec;

    move-result-object p1

    .line 424
    invoke-interface {p0, v1, p1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appfunctions/FutureSearchResults;

    .line 429
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 431
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 432
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/SearchResult;

    .line 435
    invoke-virtual {v1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v2

    .line 436
    invoke-virtual {v2, p3}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {v1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    new-instance v3, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;-><init>()V

    .line 440
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 441
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 443
    :cond_0
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 445
    :cond_1
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V

    return-object v0

    :goto_2
    if-eqz p0, :cond_2

    .line 422
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
.end method

.method public static getRemovedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    invoke-static {p1, p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static getRemovedPackages(Ljava/util/Set;Ljava/util/Set;)Landroid/util/ArraySet;
    .locals 3

    .line 315
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 317
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final buildPutRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/PutDocumentsRequest;
    .locals 7

    .line 224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    new-instance p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 227
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 228
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 230
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    .line 231
    new-array v5, v5, [Landroid/app/appsearch/GenericDocument;

    new-instance v6, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    invoke-direct {v6, v2, v4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v6}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object v4

    aput-object v4, v5, v0

    .line 231
    invoke-virtual {p0, v5}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p0

    return-object p0
.end method

.method public final buildRemoveRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/RemoveByDocumentIdRequest;
    .locals 4

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    new-instance p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    const-string v0, "app_functions_runtime"

    invoke-direct {p0, v0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 248
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 249
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 250
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 251
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 253
    invoke-static {v1, v3}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object p0

    return-object p0
.end method

.method public final buildSetSchemaRequestForRuntimeMetadataSchemas(Landroid/content/pm/PackageManager;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest;
    .locals 7

    .line 265
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    new-instance v0, Landroid/app/appsearch/SetSchemaRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 269
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/appsearch/AppSearchSchema;

    .line 272
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-static {v3}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getPackageNameFromSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {p0, p1, v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/app/appsearch/PackageIdentifier;

    invoke-direct {v6, v3, v4}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 277
    invoke-virtual {v0, v5, v1, v6}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 282
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 281
    invoke-virtual {v0, v2, v3}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->build()Landroid/app/appsearch/SetSchemaRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getAllRuntimeMetadataSchemas(Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 294
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->createAppFunctionRuntimeSchema(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    .line 295
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)[B
    .locals 2

    .line 479
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x8000080

    const/4 v0, 0x0

    .line 485
    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 484
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 493
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p1, :cond_0

    .line 494
    sget-object p1, Lcom/android/server/appfunctions/MetadataSyncAdapter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signing info not found for package: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 500
    :cond_0
    :try_start_1
    const-string p1, "SHA256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 504
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 505
    array-length p2, p0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 508
    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 509
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v0

    .line 490
    :catch_1
    sget-object p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name info not found for package: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final synthetic lambda$submitSyncRequest$0(Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3

    .line 109
    :try_start_0
    new-instance v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    sget-object v2, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    new-instance p1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    invoke-direct {p1, v1, v2, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;)V

    .line 122
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 109
    :try_start_5
    invoke-interface {p1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-interface {v0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 125
    :goto_3
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public shutDown()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;
    .locals 5

    .line 98
    new-instance v0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string v1, "apps-db"

    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string v2, "appfunctions-db"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v1

    .line 106
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 107
    new-instance v3, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/MetadataSyncAdapter;Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;Lcom/android/internal/infra/AndroidFuture;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 133
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    .line 134
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 151
    const-string v0, "AppFunctionStaticMetadata"

    const-string v1, "functionId"

    const-string/jumbo v2, "packageName"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 156
    const-string v0, "AppFunctionRuntimeMetadata"

    .line 157
    invoke-static {p2, v0, v1, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 164
    invoke-static {p1, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getAddedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 166
    invoke-static {p1, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getRemovedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 168
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 171
    invoke-static {v0, v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getRemovedPackages(Ljava/util/Set;Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getAllRuntimeMetadataSchemas(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 179
    invoke-static {}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->createParentAppFunctionRuntimeSchema()Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    .line 178
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 181
    invoke-virtual {p0, v0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildSetSchemaRequestForRuntimeMetadataSchemas(Landroid/content/pm/PackageManager;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest;

    move-result-object p1

    .line 184
    invoke-interface {p2, p1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/SetSchemaResponse;

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildRemoveRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object p1

    .line 191
    invoke-interface {p2, p1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/AppSearchBatchResult;

    .line 192
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 193
    invoke-static {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    .line 198
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildPutRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p0

    .line 202
    invoke-interface {p2, p0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchBatchResult;

    .line 203
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 205
    :cond_4
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 204
    invoke-static {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method
