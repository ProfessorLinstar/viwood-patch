.class public Lcom/android/server/DynamicSystemService$GsiServiceCallback;
.super Landroid/gsi/IGsiServiceCallback$Stub;
.source "DynamicSystemService.java"


# instance fields
.field public mResult:I


# direct methods
.method public constructor <init>(Lcom/android/server/DynamicSystemService;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/gsi/IGsiServiceCallback$Stub;-><init>()V

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    return p0
.end method

.method public declared-synchronized onResult(I)V
    .locals 0

    monitor-enter p0

    .line 68
    :try_start_0
    iput p1, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
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
