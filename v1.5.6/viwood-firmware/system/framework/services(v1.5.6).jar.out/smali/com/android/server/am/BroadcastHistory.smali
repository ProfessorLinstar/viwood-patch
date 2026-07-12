.class public Lcom/android/server/am/BroadcastHistory;
.super Ljava/lang/Object;
.source "BroadcastHistory.java"


# instance fields
.field public final MAX_BROADCAST_HISTORY:I

.field public final MAX_BROADCAST_SUMMARY_HISTORY:I

.field public final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field public final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field public final mFrozenBroadcasts:Ljava/util/ArrayList;

.field public mHistoryNext:I

.field public final mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

.field public final mPendingBroadcasts:Ljava/util/ArrayList;

.field public final mSummaryHistoryDispatchTime:[J

.field public final mSummaryHistoryEnqueueTime:[J

.field public final mSummaryHistoryFinishTime:[J

.field public mSummaryHistoryNext:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastConstants;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 78
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    .line 46
    iget v0, p1, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    .line 47
    iget p1, p1, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    iput p1, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 49
    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 50
    new-array v0, p1, [Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    .line 51
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    .line 52
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    .line 53
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    return-void
.end method


# virtual methods
.method public addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5

    .line 142
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    aput-object p1, v0, v1

    .line 145
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 147
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v3, v0, v1

    .line 148
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    iget-wide v3, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v3, v0, v1

    .line 149
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    iget-wide v3, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v3, v0, v1

    .line 150
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, p1, v1

    .line 151
    iget p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    return-void
.end method

.method public final dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .line 333
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " broadcasts:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 335
    const-string p0, "    <empty>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 338
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ltz p0, :cond_3

    .line 339
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    if-eqz p4, :cond_1

    .line 340
    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 341
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 344
    :cond_1
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  broadcast #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    const-string v1, "    "

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    if-eqz p4, :cond_2

    if-nez p5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    .line 352
    const-string p0, "    <no-matches>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 14
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    const-wide v3, 0x20b00000007L

    .line 165
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    const-wide v2, 0x20b00000008L

    .line 169
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :cond_1
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    move v1, v0

    .line 177
    :cond_2
    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    const-wide v4, 0x20b00000005L

    .line 180
    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_3
    if-ne v1, v0, :cond_2

    .line 184
    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    move v0, v2

    .line 186
    :goto_2
    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v4, v1, v0

    if-nez v4, :cond_4

    move-object v5, p1

    goto :goto_3

    :cond_4
    const-wide v5, 0x20b00000006L

    .line 191
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide v6, 0x10b00000001L

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    .line 192
    invoke-virtual/range {v4 .. v11}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 194
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v6, p1, v0

    const-wide v8, 0x10300000002L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 196
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v6, p1, v0

    const-wide v8, 0x10300000003L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 198
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v6, p1, v0

    const-wide v8, 0x10300000004L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 200
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_3
    if-ne v0, v2, :cond_5

    return-void

    :cond_5
    move-object p1, v5

    goto :goto_2
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;Z)Z
    .locals 19
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 209
    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    const-string v6, "Frozen"

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v2, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastHistory;->dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V

    .line 210
    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    const-string v6, "Pending"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastHistory;->dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V

    .line 216
    iget v3, v0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    const/4 v6, -0x1

    move v8, v3

    move v9, v6

    const/4 v10, 0x0

    .line 221
    :goto_0
    iget v11, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    invoke-virtual {v0, v8, v6, v11}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v8

    .line 222
    iget-object v11, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v11, v11, v8

    .line 223
    const-string v12, "    extras: "

    const-string v13, ": "

    const-string v14, "  #"

    const-string v15, "    "

    if-nez v11, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    if-eqz v7, :cond_1

    .line 228
    iget-object v5, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 231
    iget-object v5, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 232
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    if-nez v10, :cond_3

    .line 237
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 240
    const-string v5, "  Historical broadcasts:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 243
    :cond_3
    const-string v5, ":"

    const-string v6, "  Historical Broadcast #"

    if-eqz v4, :cond_4

    .line 244
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v11, v1, v15, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    if-nez p5, :cond_7

    goto :goto_2

    :cond_4
    if-eqz p5, :cond_5

    .line 251
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v11, v1, v15, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_1

    .line 255
    :cond_5
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    iget-object v5, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4, v4, v6}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    iget-object v4, v11, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v4, :cond_6

    iget-object v5, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eq v4, v5, :cond_6

    .line 259
    const-string v4, "    targetComp: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    :cond_6
    iget-object v4, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 263
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    :goto_1
    if-ne v8, v3, :cond_10

    :goto_2
    if-nez v7, :cond_d

    if-nez p3, :cond_d

    .line 269
    iget v3, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    if-eqz p5, :cond_8

    move v5, v3

    const/4 v9, -0x1

    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    move v5, v3

    move v4, v9

    :goto_3
    if-lez v4, :cond_a

    if-eq v5, v3, :cond_a

    .line 277
    iget v6, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v7, -0x1

    invoke-virtual {v0, v5, v7, v6}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v5

    .line 278
    iget-object v6, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v6, v6, v5

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 288
    :cond_a
    :goto_4
    iget v4, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v5

    .line 289
    iget-object v4, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v4, v4, v5

    if-nez v4, :cond_b

    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_b
    if-nez v10, :cond_c

    .line 295
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 298
    const-string v7, "  Historical broadcasts summary:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_c
    if-nez p5, :cond_e

    const/16 v7, 0x32

    if-lt v9, v7, :cond_e

    .line 302
    const-string v0, "  ..."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    :goto_5
    const/16 v16, 0x1

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 306
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 307
    invoke-virtual {v4, v11, v7, v7, v11}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget-object v7, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v7, v7, v5

    iget-object v6, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v17, v6, v5

    sub-long v7, v7, v17

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 311
    const-string v6, " dispatch "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-object v6, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v6, v6, v5

    iget-object v8, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v17, v8, v5

    sub-long v6, v6, v17

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 314
    const-string v6, " finish"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    const-string v6, "    enq="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    new-instance v6, Ljava/util/Date;

    iget-object v7, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v7, v7, v5

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string v6, " disp="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    new-instance v6, Ljava/util/Date;

    iget-object v7, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v7, v7, v5

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    const-string v6, " fin="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    new-instance v6, Ljava/util/Date;

    iget-object v7, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v7, v7, v5

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 323
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    :goto_6
    if-ne v5, v3, :cond_a

    goto/16 :goto_5

    :goto_7
    return v16

    :cond_10
    move-object/from16 v4, p3

    const/4 v6, -0x1

    goto/16 :goto_0
.end method

.method public onBroadcastEnqueuedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastHistory;->updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_0
    return-void
.end method

.method public onBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastHistory;->updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastHistory;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public final ringAdvance(III)I
    .locals 0

    .line 0
    add-int/2addr p1, p2

    if-gez p1, :cond_0

    add-int/lit8 p3, p3, -0x1

    return p3

    :cond_0
    if-lt p1, p3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return p1
.end method

.method public final updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    .line 122
    :cond_1
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    add-int/2addr v2, p2

    if-nez v2, :cond_3

    .line 125
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 127
    iget-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 130
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x40

    const-string p2, "Broadcasts pending per uid"

    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 135
    const-string p1, "Broadcasts pending"

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method
