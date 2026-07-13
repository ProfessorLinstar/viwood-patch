.class public final Lcom/android/server/stats/pull/netstats/SubInfo;
.super Ljava/lang/Object;
.source "SubInfo.java"


# instance fields
.field public final carrierId:I

.field public final isOpportunistic:Z

.field public final mcc:Ljava/lang/String;

.field public final mnc:Ljava/lang/String;

.field public final subId:I

.field public final subscriberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    .line 42
    iput p2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    .line 43
    iput-object p3, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 46
    iput-boolean p6, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/stats/pull/netstats/SubInfo;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    check-cast p1, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 54
    iget v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    iget v3, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    iget v3, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    iget-boolean v3, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 64
    iget v0, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
