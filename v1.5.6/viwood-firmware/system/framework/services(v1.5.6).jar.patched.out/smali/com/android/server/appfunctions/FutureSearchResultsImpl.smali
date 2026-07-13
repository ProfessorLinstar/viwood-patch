.class public Lcom/android/server/appfunctions/FutureSearchResultsImpl;
.super Ljava/lang/Object;
.source "FutureSearchResultsImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/FutureSearchResults;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mSearchResults:Landroid/app/appsearch/SearchResults;


# direct methods
.method public static synthetic $r8$lambda$u4_-ZPGJhQ80uw8KPqeMiA_RkdM(Landroid/app/appsearch/AppSearchResult;)Ljava/util/List;
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

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

.method public constructor <init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    .line 38
    iput-object p2, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    invoke-virtual {p0}, Landroid/app/appsearch/SearchResults;->close()V

    return-void
.end method

.method public getNextPage()Lcom/android/internal/infra/AndroidFuture;
    .locals 3

    .line 43
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v1, p0, v2}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 46
    new-instance p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 47
    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method
