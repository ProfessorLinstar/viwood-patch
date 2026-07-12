.class public Lcom/android/internal/util/jobs/RingBufferIndices;
.super Ljava/lang/Object;
.source "RingBufferIndices.java"


# instance fields
.field private final mCapacity:I

.field private mSize:I

.field private mStart:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mCapacity:I

    return-void
.end method


# virtual methods
.method public add()I
    .locals 3

    .line 43
    iget v0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mSize:I

    iget v1, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mCapacity:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 45
    iput v1, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mSize:I

    return v0

    .line 48
    :cond_0
    iget v0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mStart:I

    add-int/lit8 v2, v0, 0x1

    .line 49
    iput v2, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mStart:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mStart:I

    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mStart:I

    .line 61
    iput v0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mSize:I

    return-void
.end method

.method public indexOf(I)I
    .locals 1

    .line 76
    iget v0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mStart:I

    add-int/2addr v0, p1

    .line 77
    iget p0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mCapacity:I

    if-lt v0, p0, :cond_0

    sub-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public size()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mSize:I

    return p0
.end method
