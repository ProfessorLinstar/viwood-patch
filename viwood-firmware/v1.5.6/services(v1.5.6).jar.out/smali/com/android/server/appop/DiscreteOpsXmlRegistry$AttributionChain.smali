.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public mChain:Ljava/util/ArrayList;

.field public mExemptPkgs:Ljava/util/Set;

.field public mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

.field public mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 477
    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 480
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)V
    .locals 6

    .line 512
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)V

    const/4 p1, 0x0

    move p2, p1

    .line 515
    :goto_0
    iget-object p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 516
    iget-object p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 517
    invoke-virtual {p3, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->equalsExceptDuration(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 518
    iget-object p0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 p4, -0x1

    cmp-long p1, p1, p4

    if-eqz p1, :cond_0

    .line 519
    iput-object p0, p3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 525
    :cond_2
    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 527
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 528
    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 531
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_a

    .line 532
    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 533
    invoke-virtual {p0, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide p3, p3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-object p5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v1, p5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long p3, p3, v1

    if-gtz p3, :cond_6

    :cond_5
    iget-object p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 536
    :cond_6
    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 538
    :cond_7
    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_8

    .line 539
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 526
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-result-object p1

    goto :goto_4

    :cond_b
    move-object p1, p2

    :goto_4
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 545
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->getLastVisible()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-result-object p2

    :cond_c
    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    return-void
.end method

.method public final getLastVisible()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 502
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 503
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    iget-object v3, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

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

.method public final getStart()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isComplete()Z
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnd(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 549
    iget-object p0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isStart(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 554
    iget-object p0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    if-eqz p0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->matches(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
