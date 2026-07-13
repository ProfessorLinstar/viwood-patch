.class public abstract Lcom/android/server/pm/WatchedIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "WatchedIntentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# static fields
.field public static final sResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field public final mWatchable:Lcom/android/server/utils/Watchable;

.field public final mWatcher:Lcom/android/server/utils/Watcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Lcom/android/server/pm/WatchedIntentResolver$2;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentResolver$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/WatchedIntentResolver;->sResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 49
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 89
    new-instance v0, Lcom/android/server/pm/WatchedIntentResolver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/WatchedIntentResolver$1;-><init>(Lcom/android/server/pm/WatchedIntentResolver;)V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/server/IntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentResolver;->onChanged()V

    return-void
.end method

.method public bridge synthetic addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/WatchedIntentResolver;)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    return-void
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;
    .locals 0

    .line 145
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public onChanged()V
    .locals 0

    .line 100
    invoke-virtual {p0, p0}, Lcom/android/server/pm/WatchedIntentResolver;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 113
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentResolver;->onChanged()V

    return-void
.end method

.method public bridge synthetic removeFilter(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method public removeFilterInternal(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 120
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentResolver;->onChanged()V

    return-void
.end method

.method public bridge synthetic removeFilterInternal(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilterInternal(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method public sortResults(Ljava/util/List;)V
    .locals 0

    .line 138
    sget-object p0, Lcom/android/server/pm/WatchedIntentResolver;->sResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method
