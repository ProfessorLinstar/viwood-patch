.class public Lcom/android/server/appop/AppOpsRestrictionsImpl;
.super Ljava/lang/Object;
.source "AppOpsRestrictionsImpl.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsRestrictions;


# instance fields
.field public mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;

.field public mContext:Landroid/content/Context;

.field public final mGlobalRestrictions:Landroid/util/ArrayMap;

.field public mHandler:Landroid/os/Handler;

.field public final mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

.field public final mUserRestrictions:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$CjDvL82V--Rfte21ogi7681bDSE(Lcom/android/server/appop/AppOpsRestrictionsImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->lambda$notifyAllUserRestrictions$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 61
    iput-object p1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;

    return-void
.end method


# virtual methods
.method public clearGlobalRestrictions(Ljava/lang/Object;)Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 113
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    :cond_1
    return p0
.end method

.method public clearUserRestrictions(Ljava/lang/Object;)Z
    .locals 5

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->collectAllUserRestrictedCodes(Ljava/lang/Object;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 203
    :goto_0
    iget-object v4, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    or-int p1, v1, v2

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->notifyAllUserRestrictions(Landroid/util/SparseBooleanArray;)V

    if-eqz p1, :cond_2

    .line 206
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    :cond_2
    return p1
.end method

.method public clearUserRestrictions(Ljava/lang/Object;Ljava/lang/Integer;)Z
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 242
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    .line 245
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 246
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 251
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 252
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 255
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 256
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 257
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    .line 262
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    :cond_3
    return v1
.end method

.method public final collectAllUserRestrictedCodes(Ljava/lang/Object;)Landroid/util/SparseBooleanArray;
    .locals 8

    .line 212
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 213
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_0

    goto :goto_2

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    .line 219
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 220
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    .line 222
    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    const/4 v7, 0x1

    .line 223
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public dumpRestrictions(Ljava/io/PrintWriter;ILjava/lang/String;Z)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 345
    iget-object v4, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    .line 346
    :goto_0
    const-string v7, "]"

    const-string v8, ", "

    const-string v9, "["

    const-string v10, ":"

    const/4 v11, 0x1

    if-ge v6, v4, :cond_2

    .line 347
    iget-object v12, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 348
    iget-object v13, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseBooleanArray;

    .line 350
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Global restrictions for token "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v9, :cond_1

    .line 355
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-le v14, v11, :cond_0

    .line 356
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_0
    invoke-virtual {v13, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 360
    :cond_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      Restricted ops: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    goto/16 :goto_e

    .line 368
    :cond_3
    iget-object v4, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_15

    .line 370
    iget-object v12, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 371
    iget-object v13, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 372
    iget-object v14, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 373
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    if-eqz v13, :cond_4

    .line 378
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 379
    :goto_3
    const-string/jumbo v5, "user: "

    if-lez v15, :cond_c

    if-nez v3, :cond_c

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_4
    if-ge v11, v15, :cond_b

    .line 382
    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 383
    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 p4, v4

    move-object/from16 v4, v18

    check-cast v4, Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    if-ltz v2, :cond_6

    .line 387
    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    if-nez v18, :cond_6

    :goto_5
    move/from16 v18, v6

    move-object/from16 v19, v9

    const/4 v6, 0x1

    goto/16 :goto_8

    :cond_6
    if-nez v16, :cond_7

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    const-string v6, "  User restrictions for token "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    move/from16 v18, v6

    :goto_6
    if-nez v17, :cond_8

    .line 395
    const-string v2, "      Restricted ops:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v17, 0x1

    .line 398
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move-object/from16 v19, v9

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v6, :cond_a

    .line 402
    invoke-virtual {v4, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v20

    move-object/from16 v21, v4

    .line 403
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move/from16 v22, v6

    const/4 v6, 0x1

    if-le v4, v6, :cond_9

    .line 404
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_9
    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v21

    move/from16 v6, v22

    goto :goto_7

    :cond_a
    const/4 v6, 0x1

    .line 408
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v4, "        "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 412
    const-string v0, " restricted ops: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v6, v18

    move-object/from16 v9, v19

    goto/16 :goto_4

    :cond_b
    move/from16 p4, v4

    move/from16 v18, v6

    move-object/from16 v19, v9

    const/4 v6, 0x1

    goto :goto_9

    :cond_c
    move/from16 p4, v4

    move/from16 v18, v6

    move-object/from16 v19, v9

    move v6, v11

    const/16 v16, 0x0

    :goto_9
    if-eqz v14, :cond_d

    .line 418
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    :goto_a
    if-lez v0, :cond_14

    if-gez p2, :cond_14

    .line 420
    new-instance v2, Landroid/util/IndentingPrintWriter;

    invoke-direct {v2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 421
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_b
    if-ge v4, v0, :cond_13

    .line 424
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 426
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PackageTagsList;

    if-nez v13, :cond_e

    goto :goto_d

    :cond_e
    if-eqz v3, :cond_f

    .line 432
    invoke-virtual {v13, v3}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result v15

    goto :goto_c

    :cond_f
    move v15, v6

    :goto_c
    if-nez v15, :cond_10

    goto :goto_d

    :cond_10
    if-nez v16, :cond_11

    .line 440
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User restrictions for token "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    .line 444
    :cond_11
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-nez v9, :cond_12

    .line 446
    const-string v6, "Excluded packages:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 450
    :cond_12
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 451
    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 453
    const-string v6, " packages: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 456
    invoke-virtual {v13, v2}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 458
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 459
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 460
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_d
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    goto :goto_b

    .line 462
    :cond_13
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_14
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v9, v19

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_15
    :goto_e
    return-void
.end method

.method public getGlobalRestriction(Ljava/lang/Object;I)Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final getUserRestriction(Ljava/lang/Object;II)Z
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 167
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 171
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_1

    return p1

    .line 175
    :cond_1
    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public getUserRestriction(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 181
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->getUserRestriction(Ljava/lang/Object;II)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->getUserRestrictionExclusions(Ljava/lang/Object;I)Landroid/os/PackageTagsList;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_1

    return p1

    :cond_1
    if-eqz p6, :cond_2

    .line 193
    invoke-virtual {p0, p4}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    .line 195
    :cond_2
    invoke-virtual {p0, p4, p5}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method

.method public getUserRestrictionExclusions(Ljava/lang/Object;I)Landroid/os/PackageTagsList;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 307
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 311
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PackageTagsList;

    return-object p0
.end method

.method public hasGlobalRestrictions(Ljava/lang/Object;)Z
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasUserRestrictions(Ljava/lang/Object;)Z
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$notifyAllUserRestrictions$0(I)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;->onAppOpsRestrictionRemoved(I)V

    return-void
.end method

.method public final notifyAllUserRestrictions(Landroid/util/SparseBooleanArray;)V
    .locals 5

    .line 230
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 232
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 233
    iget-object v3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsRestrictionsImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putUserRestriction(Ljava/lang/Object;IIZ)Z
    .locals 2

    if-eqz p4, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 277
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    :cond_1
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 281
    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 282
    invoke-virtual {p0, p3, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return p1

    .line 284
    :cond_2
    iget-object p4, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseArray;

    const/4 v0, 0x0

    if-nez p4, :cond_3

    return v0

    .line 288
    :cond_3
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_4

    return v0

    .line 292
    :cond_4
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 293
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 294
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p3

    if-nez p3, :cond_5

    .line 295
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 297
    :cond_5
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_6

    .line 298
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return v0
.end method

.method public final putUserRestrictionExclusions(Ljava/lang/Object;ILandroid/os/PackageTagsList;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 316
    invoke-virtual {p3}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 322
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0

    .line 328
    :cond_1
    iget-object p3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 329
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez p3, :cond_2

    return v1

    .line 333
    :cond_2
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 334
    :goto_0
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 335
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_4

    .line 336
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v0
.end method

.method public final resolveUserId(I)[I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 148
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 151
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 152
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x1

    .line 155
    new-array p0, p0, [I

    aput p1, p0, v1

    return-object p0
.end method

.method public setGlobalRestriction(Ljava/lang/Object;IZ)Z
    .locals 1

    if-eqz p3, :cond_1

    .line 70
    iget-object p3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 71
    iget-object p3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {p3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    .line 76
    invoke-virtual {p0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseBooleanArray;

    if-nez p3, :cond_2

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_2
    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 83
    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 84
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 85
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move p1, v0

    :goto_0
    if-eqz p1, :cond_4

    .line 90
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    :cond_4
    return p1
.end method

.method public setUserRestriction(Ljava/lang/Object;IIZLandroid/os/PackageTagsList;)Z
    .locals 3

    .line 126
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->resolveUserId(I)[I

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 128
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 129
    aget v2, p2, v0

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->putUserRestriction(Ljava/lang/Object;IIZ)Z

    move-result v2

    or-int/2addr v1, v2

    .line 130
    aget v2, p2, v0

    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->putUserRestrictionExclusions(Ljava/lang/Object;ILandroid/os/PackageTagsList;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    :cond_1
    return v1
.end method
