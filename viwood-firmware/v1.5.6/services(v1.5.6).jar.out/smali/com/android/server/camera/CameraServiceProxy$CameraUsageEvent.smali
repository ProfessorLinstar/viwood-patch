.class public Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Lcom/android/server/camera/CameraServiceProxy$CameraEvent;


# instance fields
.field public final mAPILevel:I

.field public final mAction:I

.field public final mCameraFacing:I

.field public final mCameraId:Ljava/lang/String;

.field public final mClientName:Ljava/lang/String;

.field public mCompleted:Z

.field public mDeviceError:Z

.field public mDurationOrStartTimeMs:J

.field public mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

.field public mInternalReconfigure:I

.field public final mIsNdk:Z

.field public final mLatencyMs:I

.field public final mLogId:J

.field public mMostRequestedFpsRange:Landroid/util/Range;

.field public final mOperatingMode:I

.field public mRequestCount:J

.field public mResultErrorCount:J

.field public final mSessionIndex:I

.field public mStreamStats:Ljava/util/List;

.field public mUsedUltraWide:Z

.field public mUsedZoomOverride:Z

.field public mUserTag:Ljava/lang/String;

.field public mVideoStabilizationMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V
    .locals 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 281
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    .line 282
    iput p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    .line 283
    iput-object p3, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 284
    iput p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    const/4 p1, 0x0

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 286
    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 287
    iput-boolean p5, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    .line 288
    iput p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    .line 289
    iput p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    .line 290
    iput p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    .line 291
    iput-boolean p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    .line 292
    iput-wide p10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    .line 293
    iput p12, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    .line 294
    new-instance p1, Landroid/util/Range;

    invoke-direct {p1, p2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 330
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logSelf()V
    .locals 42

    move-object/from16 v0, p0

    .line 335
    iget v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    const-string v2, "CameraService_proxy"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown camera facing: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    move v12, v3

    goto :goto_0

    :cond_1
    move v12, v4

    goto :goto_0

    :cond_2
    move v12, v5

    .line 352
    :goto_0
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    const/4 v7, 0x4

    const/4 v8, -0x1

    if-eqz v1, :cond_8

    .line 353
    iget v1, v1, Landroid/hardware/CameraExtensionSessionStats;->type:I

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v7, :cond_3

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown extension type: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget v9, v9, Landroid/hardware/CameraExtensionSessionStats;->type:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v8, v7

    goto :goto_1

    :cond_4
    move v8, v3

    goto :goto_1

    :cond_5
    move v8, v4

    goto :goto_1

    :cond_6
    move v8, v5

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    .line 377
    :goto_1
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget-boolean v2, v1, Landroid/hardware/CameraExtensionSessionStats;->isAdvanced:Z

    .line 379
    iget v1, v1, Landroid/hardware/CameraExtensionSessionStats;->captureFormat:I

    move/from16 v41, v1

    move/from16 v36, v2

    :goto_2
    move/from16 v35, v8

    goto :goto_3

    :cond_8
    const/16 v36, 0x0

    const/16 v41, 0x0

    goto :goto_2

    .line 384
    :goto_3
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 385
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x5

    .line 424
    new-array v8, v2, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v2, :cond_b

    .line 426
    new-instance v10, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v10}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    aput-object v10, v8, v9

    if-ge v9, v1, :cond_a

    .line 428
    iget-object v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/CameraStreamStats;

    .line 429
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getWidth()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 430
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHeight()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 431
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getFormat()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 432
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getDataSpace()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 433
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getUsage()J

    move-result-wide v13

    iput-wide v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 434
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getRequestCount()J

    move-result-wide v13

    iput-wide v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 435
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getErrorCount()J

    move-result-wide v13

    iput-wide v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 436
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getStartLatencyMs()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 437
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getMaxHalBuffers()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 438
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getMaxAppBuffers()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 439
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramType()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 440
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramBins()[F

    move-result-object v13

    iput-object v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 441
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramCounts()[J

    move-result-object v13

    iput-object v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 442
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getDynamicRangeProfile()J

    move-result-wide v13

    iput-wide v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 443
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getStreamUseCase()J

    move-result-wide v13

    iput-wide v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 444
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getColorSpace()I

    move-result v10

    iput v10, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 472
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v9

    move-object v2, v8

    move-wide v8, v9

    iget v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    iget-object v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iget v14, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    iget-boolean v15, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    move/from16 v16, v3

    iget v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    move/from16 v17, v4

    iget v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    move/from16 v18, v5

    iget v5, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    move/from16 v20, v7

    const/16 v19, 0x0

    iget-wide v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    move/from16 v24, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    aget-object v2, v21, v19

    .line 476
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v25

    aget-object v2, v21, v18

    .line 477
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v26

    aget-object v2, v21, v17

    .line 478
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v27

    aget-object v2, v21, v16

    .line 479
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v28

    aget-object v2, v21, v20

    .line 480
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v29

    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    move/from16 v16, v1

    iget v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    move/from16 v31, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    move-wide/from16 v32, v1

    iget v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    iget-boolean v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedUltraWide:Z

    move/from16 v34, v1

    iget-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedZoomOverride:Z

    move/from16 v38, v1

    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 485
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v39

    iget-object v0, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v40

    move-wide/from16 v19, v6

    const/16 v7, 0xe3

    move/from16 v37, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v21, v22

    move/from16 v23, v16

    move/from16 v16, v3

    .line 472
    invoke-static/range {v7 .. v41}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJILjava/lang/String;ILjava/lang/String;IZIIIJJZI[B[B[B[B[BLjava/lang/String;IJIIZZZIII)V

    return-void
.end method

.method public markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V
    .locals 4

    .line 303
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 308
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    .line 309
    iput-wide p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    .line 310
    iput-wide p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    .line 311
    iput-boolean p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    .line 312
    iput-object p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    .line 313
    iput-object p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    .line 314
    iput p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    .line 315
    iput-boolean p10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedUltraWide:Z

    .line 316
    iput-boolean p11, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedZoomOverride:Z

    move-object/from16 p1, p13

    .line 317
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    move-object/from16 p1, p12

    .line 318
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    return-void
.end method
