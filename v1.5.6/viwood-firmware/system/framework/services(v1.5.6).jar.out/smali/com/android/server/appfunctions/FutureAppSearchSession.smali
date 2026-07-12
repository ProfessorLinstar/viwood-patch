.class public interface abstract Lcom/android/server/appfunctions/FutureAppSearchSession;
.super Ljava/lang/Object;
.source "FutureAppSearchSession.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;
.end method

.method public abstract put(Landroid/app/appsearch/PutDocumentsRequest;)Lcom/android/internal/infra/AndroidFuture;
.end method

.method public abstract remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;
.end method

.method public abstract search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;
.end method

.method public abstract setSchema(Landroid/app/appsearch/SetSchemaRequest;)Lcom/android/internal/infra/AndroidFuture;
.end method
