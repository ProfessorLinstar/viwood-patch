.class public Lcom/android/server/appop/DiscreteOpsDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DiscreteOpsDbHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 6

    .line 49
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;

    invoke-direct {v5}, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 51
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseOpenParams()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setOpenParams(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    return-void
.end method

.method public static getDatabaseFile()Ljava/io/File;
    .locals 4

    .line 62
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "app_op_history.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDatabaseOpenParams()Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .locals 2

    .line 55
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    const/high16 v1, 0x20000000

    .line 56
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V
    .locals 0

    if-nez p3, :cond_0

    .line 138
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteRawStatement;->bindNull(I)V

    return-void

    .line 140
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteRawStatement;->bindText(ILjava/lang/String;)V

    return-void
.end method

.method public final buildSql(Ljava/util/List;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 3

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SELECT DISTINCT uid,package_name,device_id,op_code,attribution_tag,access_time,access_duration,uid_state,op_flags,attribution_flags,chain_id FROM app_op_accesses"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    const-string v0, " WHERE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 265
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 267
    const-string v2, " AND "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 273
    const-string p1, " ORDER BY "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    .line 274
    const-string p1, " ASC "

    goto :goto_1

    :cond_2
    const-string p1, " DESC "

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-lez p4, :cond_4

    .line 277
    const-string p1, " LIMIT "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 179
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p2, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t exec sql command, disk is full. Discrete ops db file size (bytes) : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    const-string p2, "DiscreteOpsDbHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getAllDiscreteOps(Ljava/lang/String;)Ljava/util/List;
    .locals 19

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V

    move-object/from16 v2, p1

    .line 397
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 398
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 399
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v5

    const/4 v3, 0x1

    .line 400
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    .line 401
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x3

    .line 402
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v9

    const/4 v3, 0x4

    .line 403
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x5

    .line 404
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v15

    const/4 v3, 0x6

    .line 405
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v17

    const/4 v3, 0x7

    .line 406
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v12

    const/16 v3, 0x8

    .line 407
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v10

    const/16 v3, 0x9

    .line 408
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v11

    const/16 v3, 0xa

    .line 409
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v13

    .line 410
    new-instance v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-direct/range {v4 .. v18}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    .line 413
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_1

    .line 415
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_1

    .line 397
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 417
    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 418
    throw v0
.end method

.method public getDiscreteOps(IILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;IJJILjava/lang/String;Z)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v1, p7

    move-wide/from16 v3, p9

    .line 199
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/DiscreteOpsDbHelper;->prepareConditions(JJIILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;I)Ljava/util/List;

    move-result-object v1

    move/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p13

    .line 202
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper;->buildSql(Ljava/util/List;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V

    .line 210
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    .line 213
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    .line 217
    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->-$$Nest$fgetmColumnFilter(Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;)Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "DiscreteOpsDbHelper"

    packed-switch v8, :pswitch_data_0

    .line 225
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown sql condition "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3

    .line 224
    :pswitch_0
    const-string v7, "No binding for In operator"

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    add-int/lit8 v8, v6, 0x1

    .line 222
    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->-$$Nest$fgetmFilterValue(Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;)Ljava/lang/Object;

    move-result-object v7

    .line 223
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 222
    invoke-virtual {v2, v8, v9, v10}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    goto :goto_1

    :pswitch_2
    add-int/lit8 v8, v6, 0x1

    .line 220
    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->-$$Nest$fgetmFilterValue(Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;)Ljava/lang/Object;

    move-result-object v7

    .line 221
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 220
    invoke-virtual {v2, v8, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    goto :goto_1

    :pswitch_3
    add-int/lit8 v8, v6, 0x1

    .line 218
    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->-$$Nest$fgetmFilterValue(Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;)Ljava/lang/Object;

    move-result-object v7

    .line 219
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 218
    invoke-virtual {v2, v8, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 229
    :cond_0
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v7

    const/4 v1, 0x1

    .line 231
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    .line 232
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x3

    .line 233
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v11

    const/4 v1, 0x4

    .line 234
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x5

    .line 235
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v17

    const/4 v1, 0x6

    .line 236
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v19

    const/4 v1, 0x7

    .line 237
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v14

    const/16 v1, 0x8

    .line 238
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v12

    const/16 v1, 0x9

    .line 239
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v13

    const/16 v1, 0xa

    .line 240
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v15

    .line 241
    new-instance v6, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-direct/range {v6 .. v20}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    .line 244
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    :cond_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_3
    if-eqz v2, :cond_2

    .line 210
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 248
    :goto_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 249
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getLargestAttributionChainId()J
    .locals 6

    const-wide/16 v0, 0x0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    const-string v2, "SELECT MAX(chain_id) FROM app_op_accesses"

    .line 153
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 155
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 160
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception v2

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_2

    .line 152
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 162
    :goto_3
    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    throw v2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 165
    :goto_4
    const-string v2, "DiscreteOpsDbHelper"

    const-string v3, "Error reading attribution chain id"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public insertDiscreteOps(Ljava/util/List;)V
    .locals 8

    .line 81
    const-string v0, "Couldn\'t commit transaction when inserting discrete ops, database file size (bytes) : "

    const-string v1, "DiscreteOpsDbHelper"

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 93
    :try_start_0
    const-string v3, "INSERT INTO app_op_accesses(uid, package_name, device_id, op_code, attribution_tag, access_time, access_duration, uid_state, op_flags, attribution_flags, chain_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 95
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUid()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 99
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 98
    invoke-virtual {p0, v3, v6, v5}, Lcom/android/server/appop/DiscreteOpsDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 101
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 100
    invoke-virtual {p0, v3, v6, v5}, Lcom/android/server/appop/DiscreteOpsDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpCode()I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 104
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    .line 103
    invoke-virtual {p0, v3, v6, v5}, Lcom/android/server/appop/DiscreteOpsDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 105
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAccessTime()J

    move-result-wide v5

    const/4 v7, 0x6

    invoke-virtual {v3, v7, v5, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 107
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDuration()J

    move-result-wide v5

    const/4 v7, 0x7

    .line 106
    invoke-virtual {v3, v7, v5, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUidState()I

    move-result v5

    const/16 v6, 0x8

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 109
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpFlags()I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 111
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionFlags()I

    move-result v5

    const/16 v6, 0xa

    .line 110
    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 112
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getChainId()J

    move-result-wide v5

    const/16 v7, 0xb

    invoke-virtual {v3, v7, v5, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 113
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 115
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error inserting the discrete op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 117
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->reset()V

    .line 118
    throw p0

    .line 120
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_2

    .line 121
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_7

    .line 123
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void

    :goto_5
    if-eqz v3, :cond_3

    .line 93
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 123
    :goto_7
    :try_start_a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :goto_8
    throw p0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 67
    const-string p0, "PRAGMA synchronous = NORMAL"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 72
    const-string p0, "CREATE TABLE IF NOT EXISTS app_op_accesses(id INTEGER PRIMARY KEY,uid INTEGER,package_name TEXT,device_id TEXT NOT NULL,op_code INTEGER,attribution_tag TEXT,access_time INTEGER,access_duration INTEGER,uid_state INTEGER,op_flags INTEGER,attribution_flags INTEGER,chain_id INTEGER)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string p0, "CREATE INDEX IF NOT EXISTS app_op_access_index ON app_op_accesses (access_time, uid, op_code)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public final prepareConditions(JJIILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;I)Ljava/util/List;
    .locals 4

    .line 292
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 295
    new-instance v2, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object v3, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->BEGIN_TIME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    .line 298
    new-instance p1, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object p2, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->END_TIME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p10, :cond_2

    .line 301
    new-instance p1, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object p2, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_FLAGS:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p5, :cond_9

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_3

    .line 306
    new-instance p1, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object p2, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->PACKAGE_NAME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-direct {p1, p2, p7}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 p1, p5, 0x1

    if-eqz p1, :cond_4

    .line 309
    new-instance p1, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object p2, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->UID:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_5

    .line 313
    new-instance p1, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object p2, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->ATTR_TAG:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-direct {p1, p2, p8}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p9, :cond_6

    .line 316
    invoke-virtual {p9}, Landroid/util/IntArray;->size()I

    move-result p3

    if-ne p3, p2, :cond_6

    .line 317
    new-instance p2, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object p3, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_CODE_EQUAL:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-virtual {p9, p1}, Landroid/util/IntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_6
    if-eqz p9, :cond_9

    .line 318
    invoke-virtual {p9}, Landroid/util/IntArray;->size()I

    move-result p3

    if-le p3, p2, :cond_9

    .line 319
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    invoke-virtual {p9}, Landroid/util/IntArray;->size()I

    move-result p3

    :goto_0
    if-ge p1, p3, :cond_8

    .line 322
    invoke-virtual {p9, p1}, Landroid/util/IntArray;->get(I)I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p3, -0x1

    if-ge p1, p4, :cond_7

    .line 324
    const-string p4, ", "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 327
    :cond_8
    new-instance p1, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object p3, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_CODE_IN:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object p0
.end method
