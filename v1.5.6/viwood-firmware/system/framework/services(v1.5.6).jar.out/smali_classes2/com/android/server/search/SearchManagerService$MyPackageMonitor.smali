.class public Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SearchManagerService.java"


# instance fields
.field public final mChangedPackages:Ljava/util/ArrayList;

.field public mSearchablePackageAppeared:Z

.field public final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    return-void
.end method


# virtual methods
.method public final clearPackageChangeState()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    return-void
.end method

.method public final hasSearchableForPackage(Ljava/lang/String;I)Z
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v0}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmContext(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 192
    invoke-static {v0, v1, p2}, Lcom/android/server/search/SearchManagerService;->querySearchableActivities(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v0}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmContext(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 198
    invoke-static {v0, v2, p2}, Lcom/android/server/search/SearchManagerService;->querySearchableActivities(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 204
    :cond_1
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {p0}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmContext(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 204
    invoke-static {p0, p1, p2}, Lcom/android/server/search/SearchManagerService;->querySearchableActivities(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 207
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public onBeginPackageChanges()V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->clearPackageChangeState()V

    return-void
.end method

.method public onFinishPackageChanges()V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->clearPackageChangeState()V

    return-void
.end method

.method public final onFinishPackageChangesInternal()V
    .locals 3

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->shouldRebuildSearchableList(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v1}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->invalidateSearchableList()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 246
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x24000000

    .line 250
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 252
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {p0}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmContext(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object p0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 246
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    .line 162
    iget-boolean p2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    if-nez p2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->hasSearchableForPackage(Ljava/lang/String;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final shouldRebuildSearchableList(I)Z
    .locals 5

    .line 212
    iget-boolean v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 216
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 217
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/search/Searchables;

    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p1}, Lcom/android/server/search/Searchables;->getKnownSearchablePackageNames()Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 222
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_3

    .line 226
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v2

    .line 222
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
