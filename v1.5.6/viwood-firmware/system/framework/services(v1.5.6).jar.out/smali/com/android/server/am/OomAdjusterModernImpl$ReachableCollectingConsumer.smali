.class public Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;
.super Ljava/lang/Object;
.source "OomAdjusterModernImpl.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public mReachables:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 654
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 662
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 665
    :cond_0
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 666
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 652
    check-cast p1, Lcom/android/server/am/OomAdjusterModernImpl$Connection;

    check-cast p2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public init(Ljava/util/ArrayList;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    return-void
.end method
