.class public Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# instance fields
.field public mIsGraphicsPipeline:Z

.field public mTid:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mTid:I

    .line 484
    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mIsGraphicsPipeline:Z

    return-void
.end method


# virtual methods
.method public getTid()I
    .locals 0

    .line 488
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mTid:I

    return p0
.end method

.method public isGraphicsPipeline()Z
    .locals 0

    .line 492
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mIsGraphicsPipeline:Z

    return p0
.end method
