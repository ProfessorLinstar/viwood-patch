.class public Lcom/android/server/autofill/SaveEventLogger;
.super Ljava/lang/Object;
.source "SaveEventLogger.java"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I

.field public final mSessionStartTimestamp:J


# direct methods
.method public static synthetic $r8$lambda$A16JBUmcZK2GPxVijkkYN95DijM(ZLcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 175
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    return-void
.end method

.method public static synthetic $r8$lambda$ActSjgEw7GNLqFgBJ5O2Ut_e-hY(ILcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 297
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    return-void
.end method

.method public static synthetic $r8$lambda$BATZhAA-dQgNV7v2Df2qSDAr1DM(ZLcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 287
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    return-void
.end method

.method public static synthetic $r8$lambda$BueTQ1MLCqp-nwgw2e8Tpc9WL7w(JLcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 259
    iput-wide p0, p2, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    return-void
.end method

.method public static synthetic $r8$lambda$Fau-GnFHAxBhd6b4HTPhVSKMGU0(ILcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 184
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    return-void
.end method

.method public static synthetic $r8$lambda$KM3kfdpT1_FtztVnb3B3WR9S8O4(ZLcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 229
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    return-void
.end method

.method public static synthetic $r8$lambda$R14UHEQp3YTr4-ESwSF7zPjPsVo(JLcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 245
    iput-wide p0, p2, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    return-void
.end method

.method public static synthetic $r8$lambda$Svb-BVoThSgsduCJfrVxOUxSfFU(ILcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 2

    int-to-long v0, p0

    .line 166
    iput-wide v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    return-void
.end method

.method public static synthetic $r8$lambda$WvoDHp-2-iU--_ELaItfJfCIafQ(ZLcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 220
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    return-void
.end method

.method public static synthetic $r8$lambda$bJ8M9Y9akEsS7UPmKZWGStrXz1w(ZLcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 211
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    return-void
.end method

.method public static synthetic $r8$lambda$dik15tPV8dLfpTrajBceCb8kZQ4(ILcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 148
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    return-void
.end method

.method public static synthetic $r8$lambda$fABNy0GcwdtN9yZlGiloXyRXrbY(ILcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 157
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    return-void
.end method

.method public static synthetic $r8$lambda$hIFq3MJpTaBU4ULDV66WBknWmu8(ILcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 140
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mRequestId:I

    return-void
.end method

.method public static synthetic $r8$lambda$leQ1_sS3kyVxAKaXQjTFdvhQhRg(ZLcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 202
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    return-void
.end method

.method public static synthetic $r8$lambda$skYRrZjKDm5LEQ0Nk0lCfg3wrZ8(JLcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 273
    iput-wide p0, p2, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    return-void
.end method

.method public static synthetic $r8$lambda$t0xCGQLeU5tdk0_cTWbJEMj4lBk(ILcom/android/server/autofill/SaveEventLogger$SaveEventInternal;)V
    .locals 0

    .line 193
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/android/server/autofill/SaveEventLogger;->mSessionId:I

    .line 127
    new-instance p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    invoke-direct {p1}, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;-><init>()V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 128
    iput-wide p2, p0, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    return-void
.end method

.method public static forSessionId(IJ)Lcom/android/server/autofill/SaveEventLogger;
    .locals 1

    .line 133
    new-instance v0, Lcom/android/server/autofill/SaveEventLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/autofill/SaveEventLogger;-><init>(IJ)V

    return-object v0
.end method


# virtual methods
.method public final getElapsedTime()J
    .locals 4

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public logAndEndEvent()V
    .locals 27

    move-object/from16 v0, p0

    .line 305
    iget-object v1, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const-string v2, "SaveEventLogger"

    if-nez v1, :cond_0

    .line 306
    const-string v0, "Shouldn\'t be logging AutofillSaveEventReported again for same event"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    .line 311
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log AutofillSaveEventReported: requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/autofill/SaveEventLogger;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAppPackageUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSaveUiTriggerIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mIsNewField="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSaveUiShownReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSaveUiNotShownReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSaveButtonClicked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mCancelButtonClicked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mDialogDismissed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsSaved="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mLatencySaveUiDisplayMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mLatencySaveRequestMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mLatencySaveFinishMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mIsFrameworkCreatedSaveInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mServiceUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    iget v5, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mRequestId:I

    iget v6, v0, Lcom/android/server/autofill/SaveEventLogger;->mSessionId:I

    iget v7, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    iget v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    int-to-long v8, v2

    iget-wide v10, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    iget-boolean v12, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    iget v13, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    iget v14, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    iget-boolean v15, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    iget-boolean v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    iget-boolean v3, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    move/from16 v16, v2

    move/from16 v17, v3

    iget-wide v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    move-wide/from16 v21, v2

    iget-wide v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    move-wide/from16 v23, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    iget v1, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    move/from16 v18, v4

    const/16 v4, 0x25e

    move/from16 v26, v1

    move/from16 v25, v2

    invoke-static/range {v4 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJJZIIZZZZJJJZI)V

    .line 350
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public maybeSetAppPackageUid(I)V
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetAutofillServiceUid(I)V
    .locals 1

    .line 295
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetCancelButtonClicked(Z)V
    .locals 1

    .line 210
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda11;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetDialogDismissed(Z)V
    .locals 1

    .line 219
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda13;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetFlag(I)V
    .locals 1

    .line 165
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetIsFrameworkCreatedSaveInfo(Z)V
    .locals 1

    .line 286
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda10;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetIsNewField(Z)V
    .locals 1

    .line 174
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetIsSaved(Z)V
    .locals 1

    .line 228
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetLatencySaveFinishMillis()V
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetLatencySaveFinishMillis(J)V

    return-void
.end method

.method public maybeSetLatencySaveFinishMillis(J)V
    .locals 1

    .line 272
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetLatencySaveRequestMillis()V
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetLatencySaveRequestMillis(J)V

    return-void
.end method

.method public maybeSetLatencySaveRequestMillis(J)V
    .locals 1

    .line 258
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda14;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetLatencySaveUiDisplayMillis()V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetLatencySaveUiDisplayMillis(J)V

    return-void
.end method

.method public maybeSetLatencySaveUiDisplayMillis(J)V
    .locals 1

    .line 244
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda8;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetRequestId(I)V
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSaveButtonClicked(Z)V
    .locals 1

    .line 201
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda12;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSaveUiNotShownReason(I)V
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSaveUiShownReason(I)V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSaveUiTriggerIds(I)V
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
