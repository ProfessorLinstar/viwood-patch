.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;
.super Ljava/lang/Object;
.source "AppFunctionManagerServiceImpl.java"

# interfaces
.implements Landroid/app/appsearch/observer/ObserverCallback;


# instance fields
.field public final mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;)V
    .locals 0

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    invoke-static {p1, p2}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;)Lcom/android/server/appfunctions/MetadataSyncAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    return-void
.end method


# virtual methods
.method public onDocumentChanged(Landroid/app/appsearch/observer/DocumentChangeInfo;)V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apps-db"

    .line 677
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getNamespace()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_functions"

    .line 680
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 683
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    invoke-virtual {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method public onSchemaChanged(Landroid/app/appsearch/observer/SchemaChangeInfo;)V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {p1}, Landroid/app/appsearch/observer/SchemaChangeInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apps-db"

    .line 694
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {p1}, Landroid/app/appsearch/observer/SchemaChangeInfo;->getChangedSchemaNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 697
    const-string v1, "AppFunctionStaticMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    invoke-virtual {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;

    :cond_2
    :goto_0
    return-void
.end method
