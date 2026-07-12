.class public Lcom/android/server/power/stats/processor/MultiStateStats$Factory;
.super Ljava/lang/Object;
.source "MultiStateStats.java"


# instance fields
.field public final mCompositeToSerialState:[I

.field public final mDimensionCount:I

.field public final mSerialStateCount:I

.field public final mStateBitFieldMasks:[I

.field public final mStateBitFieldShifts:[S

.field public final mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;


# direct methods
.method public varargs constructor <init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V
    .locals 6

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    .line 154
    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 157
    array-length p1, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v4, p2, v2

    .line 158
    iget-boolean v5, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v5, :cond_0

    .line 159
    iget-object v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iput v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mSerialStateCount:I

    .line 164
    iget-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    .line 165
    array-length p1, p1

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    move p1, v1

    move p2, p1

    .line 168
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v3, v2

    if-ge p1, v3, :cond_3

    .line 169
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    int-to-short v4, p2

    aput-short v4, v3, p1

    .line 170
    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 174
    array-length v2, v2

    sub-int/2addr v2, v0

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    .line 176
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    shl-int v4, v0, v2

    sub-int/2addr v4, v0

    shl-int/2addr v4, p2

    aput v4, v3, p1

    add-int/2addr p2, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 171
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Should have at least two values."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const/16 p1, 0x1f

    if-ge p2, p1, :cond_9

    const/4 p1, -0x1

    move v3, p1

    move v2, v1

    .line 188
    :goto_2
    iget-object v4, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v5, v4

    if-ge v2, v5, :cond_5

    .line 189
    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-nez v4, :cond_4

    .line 190
    iget-object v4, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v4, v4, v2

    not-int v4, v4

    and-int/2addr v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    shl-int p2, v0, p2

    .line 194
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    .line 195
    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    move p2, v1

    .line 198
    :goto_3
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->isValidCompositeState(I)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    and-int v0, v1, v3

    .line 207
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget v0, v2, v0

    if-eq v0, p1, :cond_7

    .line 208
    aput v0, v2, v1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, p2, 0x1

    .line 210
    aput p2, v2, v1

    move p2, v0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void

    .line 181
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many states: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bits are required to represent the composite state, but only "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " are available"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public create()Lcom/android/server/power/stats/processor/MultiStateStats;
    .locals 2

    .line 256
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats;

    iget v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats$Factory;I)V

    return-object v0
.end method

.method public final extractStateFromComposite(II)I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v0, v0, p2

    and-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    aget-short p0, p0, p2

    ushr-int p0, p1, p0

    return p0
.end method

.method public getSerialState(I)I
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget p0, p0, p1

    return p0
.end method

.method public getSerialState([I)I
    .locals 3

    .line 275
    array-length v0, p1

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    move v0, v2

    .line 277
    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_1

    .line 278
    aget v1, p1, v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->setStateInComposite(III)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    return p0

    .line 282
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State values out of bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSerialStateCount()I
    .locals 0

    .line 266
    iget p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mSerialStateCount:I

    return p0
.end method

.method public final isValidCompositeState(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 217
    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->extractStateFromComposite(II)I

    move-result v2

    .line 218
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public setStateInComposite(III)I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v0, v0, p2

    not-int v0, v0

    and-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    aget-short p0, p0, p2

    shl-int p0, p3, p0

    or-int/2addr p0, p1

    return p0
.end method

.method public setStateInComposite(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 236
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v3, v2

    const/4 v4, -0x1

    const-string v5, "MultiStateStats"

    if-ge v1, v3, :cond_3

    .line 237
    aget-object v2, v2, v1

    .line 238
    iget-object v3, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    :goto_1
    iget-object v3, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 240
    aget-object v3, v3, v0

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->setStateInComposite(III)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected label \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
