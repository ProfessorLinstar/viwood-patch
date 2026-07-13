.class public final Lcom/android/server/autofill/FillRequestEventLogger;
.super Ljava/lang/Object;
.source "FillRequestEventLogger.java"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I


# direct methods
.method public static synthetic $r8$lambda$24CQjw4dL7b-huLdlSskbHJw-nA(Landroid/content/Context;ILcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;)V
    .locals 4

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "No default IME found"

    const-string v3, "FillRequestEventLogger"

    if-eqz v1, :cond_0

    .line 128
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 140
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    .line 139
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iput p0, p2, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    return-void

    .line 142
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Couldn\'t find packageName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$CoLd8fUyUXqxNcPnnKTfLRAOBEA(ILcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;)V
    .locals 0

    .line 164
    iput p0, p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    return-void
.end method

.method public static synthetic $r8$lambda$MGuxFg3f8YvuvuBADs6jZIeanV4(ILcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;)V
    .locals 0

    .line 209
    iput p0, p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    return-void
.end method

.method public static synthetic $r8$lambda$aoCj0znXXSsx22eGJx0uYy5ER3U(ILcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;)V
    .locals 0

    .line 200
    iput p0, p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    return-void
.end method

.method public static synthetic $r8$lambda$e4nwCc8H8ZxIJkGwa5LuSXqdjfc(ILcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;)V
    .locals 0

    .line 116
    iput p0, p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    return-void
.end method

.method public static synthetic $r8$lambda$p4mBgqvO-ilbiqEiuAuUVYoD5H4(ZLcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;)V
    .locals 0

    .line 173
    iput-boolean p0, p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    return-void
.end method

.method public static synthetic $r8$lambda$r65oIv5z-u1jhECskrxZ9M64864(ILcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;)V
    .locals 0

    .line 155
    iput p0, p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    return-void
.end method

.method public static synthetic $r8$lambda$xDKLxfATc0NkqDV4VgeNx4Y7l3s(ZLcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;)V
    .locals 0

    .line 191
    iput-boolean p0, p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    return-void
.end method

.method public static synthetic $r8$lambda$y-LmHkHf9Wz_pehkMaq1N423xuY(ILcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;)V
    .locals 0

    .line 108
    iput p0, p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestId:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mSessionId:I

    .line 82
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public static forSessionId(I)Lcom/android/server/autofill/FillRequestEventLogger;
    .locals 1

    .line 89
    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/FillRequestEventLogger;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public logAndEndEvent()V
    .locals 17

    move-object/from16 v0, p0

    .line 217
    iget-object v1, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const-string v2, "FillRequestEventLogger"

    if-nez v1, :cond_0

    .line 218
    const-string v0, "Shouldn\'t be logging AutofillFillRequestReported again for same event"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;

    .line 223
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log AutofillFillRequestReported: requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAutofillServiceUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mInlineSuggestionHostUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mIsAugmented="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsClientSuggestionFallback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsClientSuggestionFallback:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsFillDialogEligible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mRequestTriggerReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatencyFillRequestSentMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAppPackageUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    iget v5, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestId:I

    iget v6, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mSessionId:I

    iget v7, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    iget v8, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    iget-boolean v9, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    iget-boolean v10, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsClientSuggestionFallback:Z

    iget-boolean v11, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    iget v12, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    iget v2, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    int-to-long v13, v2

    iget v15, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    iget v1, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    const/16 v4, 0x25c

    move/from16 v16, v1

    invoke-static/range {v4 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIZZZIJII)V

    .line 250
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public maybeSetAppPackageUid(I)V
    .locals 1

    .line 208
    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetAutofillServiceUid(I)V
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetFlags(I)V
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetInlineSuggestionHostUid(Landroid/content/Context;I)V
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetIsAugmented(Z)V
    .locals 1

    .line 172
    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetIsFillDialogEligible(Z)V
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetLatencyFillRequestSentMillis(I)V
    .locals 1

    .line 199
    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetRequestId(I)V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetRequestTriggerReason(I)V
    .locals 1

    .line 163
    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startLogForNewRequest()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string v0, "FillRequestEventLogger"

    const-string v1, "FillRequestEventLogger is not empty before starting for a new request"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;

    invoke-direct {v0}, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;-><init>()V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method
