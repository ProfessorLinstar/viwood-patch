.class public Lcom/android/server/location/contexthub/ContextHubTestModeManager;
.super Ljava/lang/Object;
.source "ContextHubTestModeManager.java"


# instance fields
.field public final mCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTestModeManager;->mCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method
