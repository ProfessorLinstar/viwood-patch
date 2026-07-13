.class final Lcom/android/server/power/ScreenTimeoutOverridePolicy;
.super Ljava/lang/Object;
.source "ScreenTimeoutOverridePolicy.java"


# instance fields
.field public mLastAutoReleaseReason:I

.field public mPolicyCallback:Lcom/android/server/power/ScreenTimeoutOverridePolicy$PolicyCallback;

.field public mScreenTimeoutOverrideConfig:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/android/server/power/ScreenTimeoutOverridePolicy$PolicyCallback;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mLastAutoReleaseReason:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0129

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mScreenTimeoutOverrideConfig:J

    cmp-long p1, v0, p2

    if-gez p1, :cond_0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Screen timeout override is smaller than the minimum timeout : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mScreenTimeoutOverrideConfig:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenTimeoutOverridePolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, -0x1

    .line 128
    iput-wide p1, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mScreenTimeoutOverrideConfig:J

    .line 130
    :cond_0
    iput-object p4, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mPolicyCallback:Lcom/android/server/power/ScreenTimeoutOverridePolicy$PolicyCallback;

    return-void
.end method


# virtual methods
.method public checkScreenWakeLock(I)V
    .locals 1

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->isWakeLockAcquired(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0xe

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 219
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 222
    const-string p1, "ScreenTimeoutOverridePolicy:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenTimeoutOverrideConfig="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mScreenTimeoutOverrideConfig:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastAutoReleaseReason="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mLastAutoReleaseReason:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getScreenTimeoutOverrideLocked(IJ)J
    .locals 2

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->isWakeLockAcquired(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-wide p0, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mScreenTimeoutOverrideConfig:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    :goto_0
    return-wide p2

    .line 146
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final isWakeLockAcquired(I)Z
    .locals 0

    .line 0
    and-int/lit16 p0, p1, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logReleaseReason()V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Releasing all screen timeout override wake lock. (reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mLastAutoReleaseReason:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenTimeoutOverridePolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserActivity(II)V
    .locals 1

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->isWakeLockAcquired(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    if-eq p2, p1, :cond_1

    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    return-void

    :cond_2
    const/4 p1, 0x7

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    return-void

    :cond_3
    const/4 p1, 0x6

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    return-void

    :cond_4
    const/4 p1, 0x5

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    return-void

    .line 162
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    return-void
.end method

.method public onWakefulnessChange(II)V
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->isWakeLockAcquired(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final releaseAllWakeLocks(I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mPolicyCallback:Lcom/android/server/power/ScreenTimeoutOverridePolicy$PolicyCallback;

    invoke-interface {v0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy$PolicyCallback;->releaseAllScreenTimeoutOverrideWakelocks(I)V

    .line 214
    iput p1, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mLastAutoReleaseReason:I

    .line 215
    invoke-virtual {p0}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->logReleaseReason()V

    return-void
.end method
