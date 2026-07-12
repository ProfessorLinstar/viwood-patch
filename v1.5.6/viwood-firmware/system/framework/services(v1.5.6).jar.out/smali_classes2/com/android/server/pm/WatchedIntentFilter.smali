.class public Lcom/android/server/pm/WatchedIntentFilter;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedIntentFilter.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public mFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/IntentFilter;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 0

    .line 93
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private onChanged()V
    .locals 0

    .line 79
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public static toWatchedIntentFilterList(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 699
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 700
    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-direct {v2, v3}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final addAction(Ljava/lang/String;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addCategory(Ljava/lang/String;)V
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    return-void
.end method

.method public final addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 484
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataPath(Landroid/os/PatternMatcher;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 528
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataScheme(Ljava/lang/String;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataSchemeSpecificPart(Ljava/lang/String;I)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, p2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 432
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataType(Ljava/lang/String;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public checkDataPathAndSchemeSpecificParts()Z
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->checkDataPathAndSchemeSpecificParts()Z

    move-result p0

    return p0
.end method

.method public final countActions()I
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result p0

    return p0
.end method

.method public final countDataAuthorities()I
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result p0

    return p0
.end method

.method public final countDataPaths()I
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result p0

    return p0
.end method

.method public final countDataSchemes()I
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result p0

    return p0
.end method

.method public final countDataTypes()I
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result p0

    return p0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public final getDataScheme(I)Ljava/lang/String;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method public final getPriority()I
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    return p0
.end method

.method public final hasAction(Ljava/lang/String;)Z
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasCategory(Ljava/lang/String;)Z
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .locals 1

    .line 720
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0, p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->snapshot()Lcom/android/server/pm/WatchedIntentFilter;

    move-result-object p0

    return-object p0
.end method
