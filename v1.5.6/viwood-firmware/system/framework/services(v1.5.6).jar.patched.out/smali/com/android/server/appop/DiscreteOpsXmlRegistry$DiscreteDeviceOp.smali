.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public mAttributedOps:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$82ZxdHWtqc58qAvslomzoHk9Yz8(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1240
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateDiscreteOpEventsList(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->offsetHistory(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public addDiscreteAccess(Ljava/lang/String;IIJJII)V
    .locals 11

    .line 1214
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 1219
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 1220
    iget-wide v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-static {v1, v2}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide v1

    invoke-static/range {p4 .. p5}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    move/from16 v9, p8

    move/from16 v10, p9

    goto :goto_3

    .line 1223
    :cond_1
    iget v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    if-ne v1, p2, :cond_4

    iget v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    if-ne v1, p3, :cond_4

    iget v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    move/from16 v9, p8

    if-ne v1, v9, :cond_3

    iget v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v10, p9

    if-ne v1, v10, :cond_5

    .line 1226
    invoke-static/range {p6 .. p7}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-static {v3, v4}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    return-void

    :cond_3
    :goto_1
    move/from16 v10, p9

    goto :goto_2

    :cond_4
    move/from16 v9, p8

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1234
    :goto_3
    new-instance v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move v8, p2

    move v7, p3

    move-wide v3, p4

    move-wide/from16 v5, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;-><init>(JJIIII)V

    invoke-interface {p0, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1246
    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 1248
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 1249
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1250
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    move v12, v2

    :goto_1
    if-ge v12, v11, :cond_2

    .line 1252
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 1254
    iget v5, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1255
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v13, p5

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    if-eqz v5, :cond_1

    .line 1256
    invoke-virtual {v5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_1

    move/from16 v7, p2

    move-object/from16 v6, p3

    move/from16 v9, p4

    .line 1257
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z

    move-result v14

    if-eqz v14, :cond_1

    iget-object v5, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    if-eqz v5, :cond_1

    .line 1260
    new-instance v6, Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget v7, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    iget-object v9, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    invoke-direct {v6, v7, v9, v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v16, v6

    goto :goto_3

    :cond_0
    move-object/from16 v13, p5

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 1264
    :goto_3
    iget v5, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    move v6, v11

    iget v11, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    iget-wide v14, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 1265
    invoke-static {v14, v15}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide v14

    iget-wide v9, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 1266
    invoke-static {v9, v10}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide v9

    move/from16 v7, p2

    move/from16 v17, v6

    move/from16 v18, v12

    move-wide v12, v14

    move/from16 v6, p4

    move-wide v14, v9

    move v10, v5

    move-object v9, v8

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    .line 1264
    invoke-virtual/range {v5 .. v16}, Landroid/app/AppOpsManager$HistoricalOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    move-object v8, v9

    add-int/lit8 v12, v18, 0x1

    move/from16 v11, v17

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 9

    .line 1273
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1275
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    const-string v3, "Attribution: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1277
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1279
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1280
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge p5, v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    sub-int v5, v4, p5

    .line 1281
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_1
    if-ge v5, v4, :cond_1

    .line 1283
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, p2, p3, v7}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 14

    move-object/from16 v0, p6

    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_0

    .line 1175
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1177
    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1176
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1183
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1184
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 1185
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 1186
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v13, p11

    .line 1185
    invoke-static/range {v3 .. v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->-$$Nest$smfilterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v2

    .line 1188
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1190
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1239
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1156
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;)V
    .locals 6

    .line 1160
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1162
    iget-object v2, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1163
    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1164
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1165
    iget-object v5, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-static {v4, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->-$$Nest$smstableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final offsetHistory(J)V
    .locals 17

    move-object/from16 v0, p0

    .line 1196
    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1198
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1200
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    .line 1202
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 1203
    new-instance v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v9, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    sub-long v9, v9, p1

    iget-wide v11, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    iget v13, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    iget v14, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v15, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v7, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;-><init>(JJIIII)V

    invoke-interface {v4, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public serialize(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V
    .locals 10

    .line 1289
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    .line 1291
    const-string v4, "a"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1292
    iget-object v5, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1294
    const-string v6, "at"

    invoke-interface {p1, v3, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1296
    :cond_0
    iget-object v5, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1297
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_1

    .line 1299
    const-string v8, "e"

    invoke-interface {p1, v3, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1300
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-static {v9, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->-$$Nest$mserialize(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    .line 1301
    invoke-interface {p1, v3, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1303
    :cond_1
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
