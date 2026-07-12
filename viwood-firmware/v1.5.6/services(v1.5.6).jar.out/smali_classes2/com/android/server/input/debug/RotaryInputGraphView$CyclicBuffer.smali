.class public Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;
.super Ljava/lang/Object;
.source "RotaryInputGraphView.java"


# instance fields
.field public final mCapacity:I

.field public mIteratorCount:I

.field public mIteratorIndex:I

.field public mLastIndex:I

.field public final mReverseIterator:Ljava/util/Iterator;

.field public mSize:I

.field public final mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCapacity(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mCapacity:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIteratorCount(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIteratorIndex(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorIndex:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSize(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmValues(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIteratorCount(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIteratorIndex(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorIndex:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 267
    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    .line 268
    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 277
    new-instance v0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;-><init>(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mReverseIterator:Ljava/util/Iterator;

    .line 293
    iput p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mCapacity:I

    .line 294
    new-array p1, p1, [Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    iput-object p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    return-void
.end method


# virtual methods
.method public add(FJ)V
    .locals 3

    .line 302
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mCapacity:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 303
    iget-object v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 304
    new-instance v2, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;-><init>(FJ)V

    aput-object v2, v1, v0

    goto :goto_0

    .line 307
    :cond_0
    iput p1, v2, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 308
    iput-wide p2, v2, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 312
    :goto_0
    iget p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    iget p2, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mCapacity:I

    if-eq p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 313
    iput p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    :cond_1
    return-void
.end method

.method public getFirst()Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .locals 3

    .line 322
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mCapacity:I

    iget v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 323
    iget v2, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    add-int/2addr v2, v1

    rem-int/2addr v2, v0

    .line 324
    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    aget-object p0, p0, v2

    return-object p0
.end method

.method public getLast()Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    iget p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 318
    iget p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    return p0
.end method

.method public removeFirst()V
    .locals 1

    .line 332
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    return-void
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 1

    .line 337
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorIndex:I

    const/4 v0, 0x1

    .line 338
    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    .line 339
    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mReverseIterator:Ljava/util/Iterator;

    return-object p0
.end method
