.class public Lcom/android/server/pm/CrossProfileIntentFilterHelper;
.super Ljava/lang/Object;
.source "CrossProfileIntentFilterHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mSettings:Lcom/android/server/pm/Settings;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUserManagerService:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/UserManagerInternal;Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mSettings:Lcom/android/server/pm/Settings;

    .line 38
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    .line 39
    iput-object p3, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 40
    iput-object p5, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mContext:Landroid/content/Context;

    .line 41
    iput-object p4, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method


# virtual methods
.method public clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    .line 84
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mSettings:Lcom/android/server/pm/Settings;

    .line 86
    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v1

    .line 87
    new-instance v2, Landroid/util/ArraySet;

    .line 88
    invoke-virtual {v1}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 89
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 92
    invoke-virtual {v3}, Lcom/android/server/pm/CrossProfileIntentFilter;->getOwnerPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_1

    iget v4, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 93
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    iget v5, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    const/4 v6, 0x0

    .line 94
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/pm/UserManagerService;->isCrossProfileIntentFilterAccessible(IIZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {v1, v3}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_0

    .line 99
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public updateDefaultCrossProfileIntentFilter()V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 54
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    .line 55
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v2}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v2

    .line 60
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_0

    .line 61
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 61
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 63
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 63
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 66
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2, v1}, Lcom/android/server/pm/UserManagerInternal;->setDefaultCrossProfileIntentFilters(II)V

    goto :goto_0

    :cond_1
    return-void
.end method
