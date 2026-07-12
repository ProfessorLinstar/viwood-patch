.class public final Lcom/android/server/autofill/FieldClassificationEventLogger;
.super Ljava/lang/Object;
.source "FieldClassificationEventLogger.java"


# instance fields
.field public mEventInternal:Ljava/util/Optional;


# direct methods
.method public static synthetic $r8$lambda$3Q_Q_CxUyra6xw5awlgWdcO7eFU(ILcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V
    .locals 0

    .line 111
    iput p0, p1, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    return-void
.end method

.method public static synthetic $r8$lambda$JckCvfx21W9S-KpiQqy-fgVlYQg(ILcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V
    .locals 0

    .line 102
    iput p0, p1, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    return-void
.end method

.method public static synthetic $r8$lambda$ON-CG3AJtzAJuOGpv4GlBJzTrKg(JLcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V
    .locals 0

    .line 93
    iput-wide p0, p2, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    return-void
.end method

.method public static synthetic $r8$lambda$TBCcbY8h9ZW0darqC2ApqqH0iTQ(ILcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V
    .locals 0

    .line 147
    iput p0, p1, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mStatus:I

    return-void
.end method

.method public static synthetic $r8$lambda$c_qNDsg3exQGg4t9r7v_evNKS14(ILcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V
    .locals 0

    .line 129
    iput p0, p1, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    return-void
.end method

.method public static synthetic $r8$lambda$rqPjZCqY_47A2xjd_2DUYW8avxA(ILcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V
    .locals 0

    .line 120
    iput p0, p1, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    return-void
.end method

.method public static synthetic $r8$lambda$x2gYRUpZZ5jAi4MkMpAjIWXa2_g(ILcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V
    .locals 0

    .line 138
    iput p0, p1, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    return-void
.end method

.method public static synthetic $r8$lambda$xqPIU9CQ3eBdDLWooILzLp3g3Po(ZLcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V
    .locals 0

    .line 156
    iput-boolean p0, p1, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mIsSessionGc:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public static createLogger()Lcom/android/server/autofill/FieldClassificationEventLogger;
    .locals 1

    .line 73
    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger;

    invoke-direct {v0}, Lcom/android/server/autofill/FieldClassificationEventLogger;-><init>()V

    return-object v0
.end method


# virtual methods
.method public logAndEndEvent()V
    .locals 13

    .line 164
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "FieldClassificationEventLogger"

    if-nez v0, :cond_0

    .line 165
    const-string p0, "Shouldn\'t be logging AutofillFieldClassificationEventInternal again for same event"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    .line 170
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log AutofillFieldClassificationEventReported: mLatencyClassificationRequestMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mCountClassifications="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNextFillRequestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAppPackageUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsSessionGc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mIsSessionGc:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    iget-wide v4, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    iget v6, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    iget v7, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    iget v8, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    iget v9, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    iget v10, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    iget v11, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mStatus:I

    iget-boolean v12, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mIsSessionGc:Z

    const/16 v3, 0x293

    invoke-static/range {v3 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIIIIZ)V

    .line 192
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public maybeSetAppPackageUid(I)V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetCountClassifications(I)V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetLatencyMillis(J)V
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetNextFillRequestId(I)V
    .locals 1

    .line 128
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetRequestId(I)V
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetRequestStatus(I)V
    .locals 1

    .line 146
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSessionGc(Z)V
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSessionId(I)V
    .locals 1

    .line 110
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startNewLogForRequest()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "FieldClassificationEventLogger"

    const-string v1, "FieldClassificationEventLogger is not empty before starting for a new request"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    invoke-direct {v0}, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;-><init>()V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method
