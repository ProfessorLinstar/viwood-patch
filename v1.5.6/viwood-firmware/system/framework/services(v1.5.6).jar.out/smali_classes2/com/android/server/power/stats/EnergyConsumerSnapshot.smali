.class public Lcom/android/server/power/stats/EnergyConsumerSnapshot;
.super Ljava/lang/Object;
.source "EnergyConsumerSnapshot.java"


# instance fields
.field public final mAttributionSnapshots:Landroid/util/SparseArray;

.field public final mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

.field public final mEnergyConsumers:Landroid/util/SparseArray;

.field public final mNumCpuClusterOrdinals:I

.field public final mNumDisplayOrdinals:I

.field public final mNumOtherOrdinals:I

.field public final mVoltageSnapshots:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    .line 94
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    const/4 v0, 0x2

    .line 96
    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumCpuClusterOrdinals:I

    const/4 v0, 0x3

    .line 98
    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumDisplayOrdinals:I

    const/4 v0, 0x0

    .line 99
    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    return-void
.end method

.method public static calculateNumOrdinals(ILandroid/util/SparseArray;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 411
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/EnergyConsumer;

    .line 412
    iget-byte v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v3, p0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public final calculateChargeConsumedUC(JI)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 421
    div-int/lit8 p0, p3, 0x2

    int-to-long v0, p0

    add-long/2addr p1, v0

    int-to-long v0, p3

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public getOtherOrdinalNames()[Ljava/lang/String;
    .locals 6

    .line 375
    iget v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    new-array v0, v0, [Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 379
    iget-object v4, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/power/stats/EnergyConsumer;

    .line 380
    iget-byte v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-nez v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 381
    iget-object v4, v4, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->sanitizeCustomBucketName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final sanitizeCustomBucketName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 389
    const-string p0, ""

    return-object p0

    .line 391
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-char v2, p1, v1

    .line 393
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x20

    .line 394
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 395
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x5f

    .line 396
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 398
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 173
    array-length v4, v1

    if-nez v4, :cond_1

    :cond_0
    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 176
    :cond_1
    const-string v4, "EnergyConsumerSnapshot"

    if-gtz v2, :cond_2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected battery voltage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mV) when taking energy consumer snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 183
    :cond_2
    new-instance v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;

    invoke-direct {v5}, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;-><init>()V

    .line 185
    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_b

    aget-object v8, v1, v7

    .line 187
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 188
    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 189
    iget-object v8, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 192
    iget-object v12, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/power/stats/EnergyConsumer;

    if-nez v12, :cond_3

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateAndGetDelta given invalid consumerId "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v3

    move v9, v6

    move/from16 v20, v7

    move-object v6, v4

    goto/16 :goto_3

    .line 197
    :cond_3
    iget-byte v13, v12, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 198
    iget v14, v12, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 201
    iget-object v15, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    const-wide/16 v3, -0x1

    invoke-virtual {v15, v9, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    .line 202
    iget-object v15, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    .line 203
    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 204
    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int v1, v15, v2

    add-int/lit8 v1, v1, 0x1

    .line 206
    div-int/lit8 v1, v1, 0x2

    .line 208
    invoke-virtual {v0, v12, v8, v1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDeltaForTypeOther(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumerAttribution;I)Landroid/util/SparseLongArray;

    move-result-object v8

    const-wide/16 v18, 0x0

    cmp-long v9, v3, v18

    if-gez v9, :cond_4

    :goto_1
    move v9, v6

    move/from16 v20, v7

    move-object/from16 v6, v17

    goto/16 :goto_3

    :cond_4
    cmp-long v9, v10, v3

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    move v9, v6

    move/from16 v20, v7

    sub-long v6, v10, v3

    cmp-long v18, v6, v18

    if-ltz v18, :cond_6

    if-gtz v15, :cond_7

    :cond_6
    move-object/from16 v6, v17

    goto/16 :goto_2

    .line 227
    :cond_7
    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateChargeConsumedUC(JI)J

    move-result-wide v3

    packed-switch v13, :pswitch_data_0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring consumer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of unknown type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v17

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_0
    move-object/from16 v6, v17

    .line 260
    iput-wide v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v6, v17

    .line 256
    iput-wide v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v6, v17

    .line 252
    iput-wide v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v6, v17

    .line 248
    iput-wide v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    goto/16 :goto_3

    :pswitch_4
    move-object/from16 v6, v17

    .line 241
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    if-nez v1, :cond_8

    .line 242
    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumDisplayOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    .line 244
    :cond_8
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    aput-wide v3, v1, v14

    goto :goto_3

    :pswitch_5
    move-object/from16 v6, v17

    .line 234
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    if-nez v1, :cond_9

    .line 235
    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumCpuClusterOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 237
    :cond_9
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    aput-wide v3, v1, v14

    goto :goto_3

    :pswitch_6
    move-object/from16 v6, v17

    .line 230
    iput-wide v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    goto :goto_3

    :pswitch_7
    move-object/from16 v6, v17

    .line 264
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    if-nez v1, :cond_a

    .line 265
    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    new-array v7, v1, [J

    iput-object v7, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 266
    new-array v1, v1, [Landroid/util/SparseLongArray;

    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    .line 268
    :cond_a
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    aput-wide v3, v1, v14

    .line 269
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aput-object v8, v1, v14

    goto :goto_3

    .line 220
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad data! EnergyConsumer "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": new energy ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ") < old energy ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), new voltage ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), old voltage ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "). Skipping. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v1, p1

    move-object v4, v6

    move v6, v9

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_b
    return-object v5

    :goto_4
    return-object v16

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateAndGetDeltaForTypeOther(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumerAttribution;I)Landroid/util/SparseLongArray;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 299
    iget-byte v3, v1, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 304
    new-array v5, v3, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    goto :goto_0

    :cond_1
    move-object/from16 v5, p2

    .line 308
    :goto_0
    iget-object v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    iget v7, v1, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseLongArray;

    if-nez v6, :cond_3

    .line 312
    new-instance v2, Landroid/util/SparseLongArray;

    array-length v6, v5

    invoke-direct {v2, v6}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 313
    iget-object v0, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    iget v1, v1, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    array-length v0, v5

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v1, v5, v3

    .line 315
    iget v6, v1, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    iget-wide v7, v1, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v2, v6, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v4

    .line 321
    :cond_3
    new-instance v4, Landroid/util/SparseLongArray;

    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    .line 323
    array-length v7, v5

    :goto_2
    if-ge v3, v7, :cond_8

    aget-object v8, v5, v3

    .line 324
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    .line 325
    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    const-wide/16 v12, 0x0

    .line 327
    invoke-virtual {v6, v9, v12, v13}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v14

    .line 328
    invoke-virtual {v6, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    cmp-long v8, v14, v12

    if-gez v8, :cond_4

    goto :goto_4

    :cond_4
    cmp-long v8, v10, v14

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    move-wide/from16 v16, v12

    sub-long v12, v10, v14

    cmp-long v8, v12, v16

    if-ltz v8, :cond_7

    if-gtz v2, :cond_6

    goto :goto_3

    .line 341
    :cond_6
    invoke-virtual {v0, v12, v13, v2}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateChargeConsumedUC(JI)J

    move-result-wide v10

    .line 342
    invoke-virtual {v4, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_4

    .line 335
    :cond_7
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EnergyConsumer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": new energy ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ") but old energy ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "). Average voltage ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")Skipping. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "EnergyConsumerSnapshot"

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    return-object v4
.end method
