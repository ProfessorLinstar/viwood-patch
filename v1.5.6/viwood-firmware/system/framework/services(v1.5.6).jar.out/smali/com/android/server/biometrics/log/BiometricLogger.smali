.class public Lcom/android/server/biometrics/log/BiometricLogger;
.super Ljava/lang/Object;
.source "BiometricLogger.java"


# instance fields
.field public final mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

.field public final mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

.field public mFirstAcquireTimeMs:J

.field public mShouldLogMetrics:Z

.field public final mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final mStatsAction:I

.field public final mStatsClient:I

.field public final mStatsModality:I


# direct methods
.method public constructor <init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/AuthenticationStatsCollector;Landroid/hardware/SensorManager;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 88
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 89
    iput p2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 90
    iput p3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 91
    iput-object p4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 92
    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 93
    new-instance p1, Lcom/android/server/biometrics/log/ALSProbe;

    invoke-direct {p1, p6}, Lcom/android/server/biometrics/log/ALSProbe;-><init>(Landroid/hardware/SensorManager;)V

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .locals 7

    .line 77
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v4

    const-class v0, Landroid/hardware/SensorManager;

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/hardware/SensorManager;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/AuthenticationStatsCollector;Landroid/hardware/SensorManager;)V

    return-void
.end method

.method public static ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 6

    .line 57
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    return-object v0
.end method


# virtual methods
.method public disableMetrics()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 105
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->destroy()V

    return-void
.end method

.method public getAmbientLightProbe(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;
    .locals 1

    .line 367
    new-instance v0, Lcom/android/server/biometrics/log/CallbackWithProbe;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/Probe;Z)V

    return-object v0
.end method

.method public logFingerprintsLoe()V
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportFingerprintsLoe(I)V

    return-void
.end method

.method public logOnAcquired(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V
    .locals 10

    .line 135
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 139
    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez p3, :cond_7

    .line 147
    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    const/4 v0, 0x7

    if-eq p3, v0, :cond_6

    :cond_5
    if-eqz v1, :cond_7

    const/16 v0, 0x14

    if-ne p3, v0, :cond_7

    .line 144
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 161
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_3
    return-void

    .line 165
    :cond_8
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 167
    invoke-static {p1, p5}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v6

    move-object v2, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 165
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->acquired(Lcom/android/server/biometrics/log/OperationContextExt;IIIZIII)V

    return-void
.end method

.method public logOnAuthenticated(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;ZZIZ)V
    .locals 12

    move/from16 v10, p5

    .line 209
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    goto :goto_4

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0, v10, p3}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->authenticate(IZ)V

    :cond_1
    if-nez p3, :cond_2

    const/4 p3, 0x1

    :goto_0
    move v8, p3

    goto :goto_1

    :cond_2
    if-eqz p6, :cond_3

    if-eqz p4, :cond_3

    const/4 p3, 0x2

    goto :goto_0

    :cond_3
    const/4 p3, 0x3

    goto :goto_0

    .line 230
    :goto_1
    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_4

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v0, v2

    :goto_2
    move-wide v6, v0

    goto :goto_3

    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 244
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Authentication latency: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BiometricLogger"

    invoke-static {v0, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result p3

    if-eqz p3, :cond_5

    :goto_4
    return-void

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 253
    invoke-static {p1, v10}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v5

    iget-object v11, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    move-object v1, p2

    move/from16 v9, p4

    .line 251
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZILcom/android/server/biometrics/log/ALSProbe;)V

    return-void
.end method

.method public logOnEnrolled(IJZII)V
    .locals 13

    .line 260
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v7, p2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 281
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->getMostRecentLux()F

    move-result v10

    move v6, p1

    move/from16 v9, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 280
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->enroll(IIIIJZFII)V

    return-void
.end method

.method public logOnEnumerated(II[I[I)V
    .locals 7

    .line 308
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->enumerated(III[I[I)V

    return-void
.end method

.method public logOnError(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V
    .locals 13

    .line 174
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 178
    :cond_0
    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v0, v2

    :goto_0
    move-wide v8, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 191
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return-void

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v6, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    move/from16 v12, p5

    .line 200
    invoke-static {p1, v12}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v7

    move-object v3, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 198
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V

    return-void
.end method

.method public logOnUnEnrolled(III)V
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->unenrolled(IIII)V

    return-void
.end method

.method public logUnknownEnrollmentInFramework()V
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledFramework(I)V

    return-void
.end method

.method public logUnknownEnrollmentInHal()V
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledHal(I)V

    return-void
.end method

.method public final shouldSkipLogging()Z
    .locals 3

    .line 114
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 117
    :goto_1
    const-string v2, "BiometricLogger"

    if-nez v0, :cond_2

    .line 118
    const-string v0, "Unknown field detected: MODALITY_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v0, :cond_3

    .line 122
    const-string v0, "Unknown field detected: ACTION_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    if-nez p0, :cond_4

    .line 126
    const-string p0, "Unknown field detected: CLIENT_UNKNOWN"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method public swapAction(Landroid/content/Context;I)Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 6

    .line 98
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    return-object v0
.end method
