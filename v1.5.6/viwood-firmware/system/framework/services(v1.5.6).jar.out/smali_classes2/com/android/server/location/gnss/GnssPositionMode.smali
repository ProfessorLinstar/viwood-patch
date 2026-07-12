.class public Lcom/android/server/location/gnss/GnssPositionMode;
.super Ljava/lang/Object;
.source "GnssPositionMode.java"


# instance fields
.field public final mLowPowerMode:Z

.field public final mMinInterval:I

.field public final mMode:I

.field public final mPreferredAccuracy:I

.field public final mPreferredTime:I

.field public final mRecurrence:I


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    .line 35
    iput p2, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    .line 36
    iput p3, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    .line 37
    iput p4, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredAccuracy:I

    .line 38
    iput p5, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredTime:I

    .line 39
    iput-boolean p6, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 44
    instance-of v0, p1, Lcom/android/server/location/gnss/GnssPositionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lcom/android/server/location/gnss/GnssPositionMode;

    .line 46
    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredAccuracy:I

    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredAccuracy:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredTime:I

    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredTime:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    iget-boolean v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    if-ne v0, v2, :cond_0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 8

    .line 58
    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredAccuracy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredTime:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 58
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
