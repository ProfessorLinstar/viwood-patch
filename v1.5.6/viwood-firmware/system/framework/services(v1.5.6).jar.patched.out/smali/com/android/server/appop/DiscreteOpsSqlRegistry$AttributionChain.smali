.class public Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;
.super Ljava/lang/Object;
.source "DiscreteOpsSqlRegistry.java"


# instance fields
.field public mChain:Ljava/util/List;

.field public mExemptPkgs:Ljava/util/Set;

.field public mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

.field public mStartEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;


# direct methods
.method public static bridge synthetic -$$Nest$misStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 280
    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 283
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 320
    invoke-virtual {v2, p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->equalsExceptDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 328
    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    goto :goto_2

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    .line 335
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    .line 337
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 338
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 340
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 341
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gtz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    .line 344
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 345
    :cond_8
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 347
    :cond_9
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_a

    .line 348
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 336
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    move-result-object p1

    goto :goto_7

    :cond_d
    move-object p1, v3

    :goto_7
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 354
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->getLastVisible()Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    move-result-object v3

    :cond_e
    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    return-void
.end method

.method public getLastVisible()Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 308
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStart()Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isComplete()Z
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnd(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 295
    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 300
    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
