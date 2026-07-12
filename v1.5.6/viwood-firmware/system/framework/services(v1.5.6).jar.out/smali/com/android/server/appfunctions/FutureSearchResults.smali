.class public interface abstract Lcom/android/server/appfunctions/FutureSearchResults;
.super Ljava/lang/Object;
.source "FutureSearchResults.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public static failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;
    .locals 2

    .line 37
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getNextPage()Lcom/android/internal/infra/AndroidFuture;
.end method
