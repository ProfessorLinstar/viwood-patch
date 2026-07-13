.class public Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
.super Ljava/util/concurrent/ConcurrentLinkedDeque;
.source "ConcurrentLinkedEvictingDeque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentLinkedDeque<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->mSize:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->mSize:I

    if-ne v0, v1, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 41
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
