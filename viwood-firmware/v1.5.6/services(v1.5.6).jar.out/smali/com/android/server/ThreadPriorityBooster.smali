.class public Lcom/android/server/ThreadPriorityBooster;
.super Ljava/lang/Object;
.source "ThreadPriorityBooster.java"


# static fields
.field public static final ENABLE_LOCK_GUARD:Z = false

.field public static final PRIORITY_NOT_ADJUSTED:I = 0x7fffffff


# instance fields
.field public volatile mBoostToPriority:I

.field public final mLockGuardIndex:I

.field public final mThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/ThreadPriorityBooster$PriorityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/server/ThreadPriorityBooster$1;

    invoke-direct {v0, p0}, Lcom/android/server/ThreadPriorityBooster$1;-><init>(Lcom/android/server/ThreadPriorityBooster;)V

    iput-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    .line 41
    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    .line 42
    iput p2, p0, Lcom/android/server/ThreadPriorityBooster;->mLockGuardIndex:I

    return-void
.end method


# virtual methods
.method public boost()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 47
    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-nez v1, :cond_0

    .line 48
    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 49
    iget v2, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    if-le v1, v2, :cond_0

    .line 50
    iget v2, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    iget p0, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    invoke-static {v2, p0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 51
    iput v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    .line 54
    :cond_0
    iget p0, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    return-void
.end method

.method public reset()V
    .locals 3

    .line 61
    iget-object p0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 62
    iget v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-nez v0, :cond_0

    .line 63
    iget v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 64
    iget v2, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    invoke-static {v2, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 65
    iput v1, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    :cond_0
    return-void
.end method

.method public setBoostToPriority(I)V
    .locals 1

    .line 77
    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    .line 78
    iget-object p0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 79
    iget v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-eqz v0, :cond_0

    .line 80
    iget v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 82
    iget p0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    invoke-static {p0, p1}, Landroid/os/Process;->setThreadPriority(II)V

    :cond_0
    return-void
.end method
