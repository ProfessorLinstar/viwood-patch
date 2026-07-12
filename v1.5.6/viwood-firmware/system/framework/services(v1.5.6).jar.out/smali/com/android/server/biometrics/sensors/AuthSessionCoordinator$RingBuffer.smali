.class public Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;
.super Ljava/lang/Object;
.source "AuthSessionCoordinator.java"


# instance fields
.field public mApiCallNumber:I

.field public final mApiCalls:[Ljava/lang/String;

.field public mCurr:I

.field public final mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot initialize ring buffer of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthSessionCoordinator"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 234
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    .line 235
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I

    return-void
.end method


# virtual methods
.method public declared-synchronized addApiCall(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 240
    iput v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 241
    iget p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 242
    iget p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 247
    :try_start_0
    const-string v0, ""

    .line 248
    iget v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 249
    :goto_0
    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    if-ge v3, v2, :cond_2

    .line 250
    iget v4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    add-int/2addr v4, v3

    rem-int/2addr v4, v2

    .line 251
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    aget-object v2, v2, v4

    if-eqz v2, :cond_1

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#%-5d %s\n"

    add-int/lit8 v5, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    aget-object v4, v6, v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    :cond_2
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
