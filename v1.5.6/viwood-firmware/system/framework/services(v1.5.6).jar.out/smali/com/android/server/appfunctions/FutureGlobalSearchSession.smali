.class public Lcom/android/server/appfunctions/FutureGlobalSearchSession;
.super Ljava/lang/Object;
.source "FutureGlobalSearchSession.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public static synthetic $r8$lambda$0qHG0pa-4z42mlbsXVHJ9J0p-Mk(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/app/appsearch/GlobalSearchSession;)Landroid/app/appsearch/SearchResults;
    .locals 0

    .line 65
    invoke-virtual {p2, p0, p1}, Landroid/app/appsearch/GlobalSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EtxqmNDQz_MWov7nuq1eqfjOUx0(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/GlobalSearchSession;
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/GlobalSearchSession;

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 53
    invoke-static {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$i-ta5WlaweofGofCKsVRgg4AMJQ(Lcom/android/server/appfunctions/FutureGlobalSearchSession;Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->lambda$search$2(Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mstb6dlOJg0h7MKcQGG8wlw7KmI(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;Landroid/app/appsearch/GlobalSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 87
    :try_start_0
    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/app/appsearch/GlobalSearchSession;->registerObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V

    const/4 p0, 0x0

    .line 89
    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0
    :try_end_0
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 91
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$y6tL64kMFsgVw73V5YAS3rQA3go(Landroid/app/appsearch/GlobalSearchSession;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/app/appsearch/GlobalSearchSession;->close()V

    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 42
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 43
    new-instance p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    invoke-direct {p0, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p1, p2, p0}, Landroid/app/appsearch/AppSearchManager;->createGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda1;-><init>()V

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final getSessionAsync()Lcom/android/internal/infra/AndroidFuture;
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    new-instance v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$search$2(Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;
    .locals 1

    .line 66
    new-instance v0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;-><init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public registerObserverCallbackAsync(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p2, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V

    .line 66
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method
