.class public Lcom/android/server/people/data/CallLogQueryHelper;
.super Ljava/lang/Object;
.source "CallLogQueryHelper.java"


# static fields
.field public static final CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEventConsumer:Ljava/util/function/BiConsumer;

.field public mLastCallTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0xb

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0xa

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    const/16 v2, 0xc

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final addEvent(Ljava/lang/String;JJI)Z
    .locals 1

    .line 110
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/server/people/data/CallLogQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 113
    :cond_0
    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseIntArray;->get(I)I

    move-result p6

    .line 114
    new-instance v0, Lcom/android/server/people/data/Event$Builder;

    invoke-direct {v0, p2, p3, p6}, Lcom/android/server/people/data/Event$Builder;-><init>(JI)V

    long-to-int p2, p4

    .line 115
    invoke-virtual {v0, p2}, Lcom/android/server/people/data/Event$Builder;->setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;

    move-result-object p2

    .line 116
    invoke-virtual {p2}, Lcom/android/server/people/data/Event$Builder;->build()Lcom/android/server/people/data/Event;

    move-result-object p2

    .line 117
    iget-object p0, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getLastCallTimestamp()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    return-wide v0
.end method

.method public querySince(J)Z
    .locals 15

    .line 62
    const-string v7, "CallLogQueryHelper"

    const-string/jumbo v8, "normalized_number"

    const-string v9, "date"

    const-string v10, "duration"

    const-string/jumbo v11, "type"

    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v3

    .line 64
    const-string v4, "date > ?"

    .line 65
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v13, :cond_1

    .line 71
    :try_start_1
    const-string v0, "Cursor is null when querying call log."

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_0

    .line 96
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v12

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move/from16 p1, v12

    goto/16 :goto_5

    :cond_0
    return v12

    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 p1, v12

    move/from16 v14, p1

    move-object/from16 p2, v13

    goto :goto_2

    :cond_1
    move v14, v12

    .line 74
    :goto_0
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 77
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 81
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 84
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 85
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 88
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 89
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 p1, v12

    move-object/from16 p2, v13

    .line 91
    :try_start_4
    iget-wide v12, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    move-object v0, p0

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/people/data/CallLogQueryHelper;->addEvent(Ljava/lang/String;JJI)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    const/4 v14, 0x1

    :cond_2
    move/from16 v12, p1

    move-object/from16 v13, p2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_1
    move-object v1, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move/from16 p1, v12

    move-object/from16 p2, v13

    goto :goto_1

    :cond_3
    move/from16 p1, v12

    move-object/from16 p2, v13

    .line 96
    :try_start_5
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return v14

    :catch_2
    move-exception v0

    move v12, v14

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :goto_2
    if-eqz p2, :cond_4

    .line 67
    :try_start_6
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v1
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_4
    move-exception v0

    move/from16 p1, v12

    .line 100
    :goto_4
    const-string v1, "Exception when querying call log."

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v12

    .line 97
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query call log failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final validateEvent(Ljava/lang/String;JI)Z
    .locals 0

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_0

    sget-object p0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 124
    invoke-virtual {p0, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
