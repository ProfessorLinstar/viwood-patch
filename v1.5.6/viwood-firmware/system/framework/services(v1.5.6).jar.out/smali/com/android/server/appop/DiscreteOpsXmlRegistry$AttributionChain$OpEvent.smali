.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public mAttributionTag:Ljava/lang/String;

.field public mOpCode:I

.field public mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

.field public mPkgName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    .line 445
    iput p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    .line 446
    iput-object p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 447
    iput p4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpCode:I

    .line 448
    iput-object p5, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    return-void
.end method


# virtual methods
.method public equalsExceptDuration(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z
    .locals 4

    .line 467
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v2, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 470
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->packageOpEquals(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-object p1, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->equalsExceptDuration(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public matches(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 454
    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpCode:I

    if-ne p1, p4, :cond_0

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    iget p2, p5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget p2, p5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-ne p1, p2, :cond_0

    iget-wide p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide p2, p5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public packageOpEquals(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z
    .locals 2

    .line 461
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 462
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpCode:I

    iget p1, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpCode:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
