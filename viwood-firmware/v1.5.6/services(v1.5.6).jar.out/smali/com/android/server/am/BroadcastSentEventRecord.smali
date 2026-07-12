.class public final Lcom/android/server/am/BroadcastSentEventRecord;
.super Ljava/lang/Object;
.source "BroadcastSentEventRecord.java"


# instance fields
.field public mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

.field public mIntent:Landroid/content/Intent;

.field public mOrdered:Z

.field public mOriginalIntentFlags:I

.field public mRealSenderUid:I

.field public mResult:I

.field public mResultRequested:Z

.field public mSenderProcState:I

.field public mSenderUid:I

.field public mSenderUidState:I

.field public mSticky:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateTypesForLogging()[I
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->calculateTypesForLogging()[I

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 122
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSticky:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x400

    .line 123
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 125
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mOrdered:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x10

    .line 126
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 128
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mResultRequested:Z

    if-eqz p0, :cond_3

    const/16 p0, 0x40

    .line 129
    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    .line 131
    :cond_3
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public logToStatsd()V
    .locals 19

    move-object/from16 v0, p0

    .line 96
    iget v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mResult:I

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    move v14, v4

    goto :goto_1

    :cond_0
    move v14, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_0
    move v14, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 105
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastSentEventRecord;->calculateTypesForLogging()[I

    move-result-object v18

    .line 106
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    iget v8, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mOriginalIntentFlags:I

    iget v9, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUid:I

    iget v10, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mRealSenderUid:I

    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    .line 107
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move v11, v3

    goto :goto_2

    :cond_3
    move v11, v4

    :goto_2
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    .line 108
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    move v12, v3

    goto :goto_3

    :cond_4
    move v12, v4

    .line 109
    :goto_3
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v13, v1

    goto :goto_4

    :cond_5
    move v13, v4

    .line 111
    :goto_4
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v4

    :cond_6
    move v15, v4

    iget v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderProcState:I

    .line 112
    invoke-static {v1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v16

    iget v0, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUidState:I

    .line 113
    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v17

    const/16 v5, 0x39a

    .line 106
    invoke-static/range {v5 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIIIII[I)V

    return-void
.end method

.method public setBroadcastRecord(Lcom/android/server/am/BroadcastRecord;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setOrdered(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mOrdered:Z

    return-void
.end method

.method public setOriginalIntentFlags(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mOriginalIntentFlags:I

    return-void
.end method

.method public setRealSenderUid(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mRealSenderUid:I

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mResult:I

    return-void
.end method

.method public setResultRequested(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mResultRequested:Z

    return-void
.end method

.method public setSenderProcState(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderProcState:I

    return-void
.end method

.method public setSenderUid(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUid:I

    return-void
.end method

.method public setSenderUidState(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUidState:I

    return-void
.end method

.method public setSticky(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSticky:Z

    return-void
.end method
