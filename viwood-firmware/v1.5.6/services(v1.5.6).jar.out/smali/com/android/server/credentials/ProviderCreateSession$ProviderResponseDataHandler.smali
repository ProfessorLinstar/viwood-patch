.class public Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;
.super Ljava/lang/Object;
.source "ProviderCreateSession.java"


# instance fields
.field public final mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

.field public final mUiCreateEntries:Ljava/util/Map;

.field public mUiRemoteEntry:Landroid/util/Pair;

.field public final synthetic this$0:Lcom/android/server/credentials/ProviderCreateSession;


# direct methods
.method public static bridge synthetic -$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->isEmptyResponse()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/credentials/ProviderCreateSession;Landroid/content/ComponentName;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    const/4 p1, 0x0

    .line 332
    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 336
    iput-object p2, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public addCreateEntry(Landroid/service/credentials/CreateEntry;)V
    .locals 5

    .line 348
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v1, Landroid/credentials/selection/Entry;

    .line 350
    invoke-virtual {p1}, Landroid/service/credentials/CreateEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    invoke-static {v3}, Lcom/android/server/credentials/ProviderCreateSession;->-$$Nest$msetUpFillInIntent(Lcom/android/server/credentials/ProviderCreateSession;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "save_entry_key"

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 351
    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addResponseContent(Ljava/util/List;Landroid/service/credentials/RemoteEntry;)V
    .locals 1

    .line 341
    new-instance v0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_0

    .line 343
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->setRemoteEntry(Landroid/service/credentials/RemoteEntry;)V

    :cond_0
    return-void
.end method

.method public getCreateEntry(Ljava/lang/String;)Landroid/service/credentials/CreateEntry;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 409
    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/CreateEntry;

    return-object p0
.end method

.method public getRemoteEntry(Ljava/lang/String;)Landroid/service/credentials/RemoteEntry;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    .line 401
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/RemoteEntry;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isEmptyResponse()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEmptyResponse(Landroid/service/credentials/BeginCreateCredentialResponse;)Z
    .locals 0

    .line 413
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getRemoteCreateEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final prepareRemoteEntry()Landroid/credentials/selection/Entry;
    .locals 1

    .line 387
    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/selection/Entry;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final prepareUiCreateEntries()Ljava/util/List;
    .locals 4

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-object v1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 381
    iget-object v3, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/credentials/selection/Entry;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setRemoteEntry(Landroid/service/credentials/RemoteEntry;)V
    .locals 5

    .line 355
    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/ProviderSession;->enforceRemoteEntryRestrictions(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    const-string p0, "CredentialManager"

    const-string p1, "Remote entry being dropped as it does not meet the restrictionchecks."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 361
    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    return-void

    .line 364
    :cond_1
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v1, Landroid/credentials/selection/Entry;

    .line 366
    invoke-virtual {p1}, Landroid/service/credentials/RemoteEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    invoke-static {v3}, Lcom/android/server/credentials/ProviderCreateSession;->-$$Nest$msetUpFillInIntent(Lcom/android/server/credentials/ProviderCreateSession;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "remote_entry_key"

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 367
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    return-void
.end method

.method public toCreateCredentialProviderData()Landroid/credentials/selection/CreateCredentialProviderData;
    .locals 2

    .line 371
    new-instance v0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    iget-object v1, v1, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 372
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->prepareUiCreateEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->setSaveEntries(Ljava/util/List;)Landroid/credentials/selection/CreateCredentialProviderData$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->prepareRemoteEntry()Landroid/credentials/selection/Entry;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/CreateCredentialProviderData$Builder;

    move-result-object p0

    .line 375
    invoke-virtual {p0}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->build()Landroid/credentials/selection/CreateCredentialProviderData;

    move-result-object p0

    return-object p0
.end method
