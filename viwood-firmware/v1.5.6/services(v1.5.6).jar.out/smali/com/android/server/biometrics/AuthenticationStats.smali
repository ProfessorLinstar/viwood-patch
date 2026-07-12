.class public Lcom/android/server/biometrics/AuthenticationStats;
.super Ljava/lang/Object;
.source "AuthenticationStats.java"


# instance fields
.field public mEnrollmentNotifications:I

.field public mLastEnrollmentTime:J

.field public mLastFrrNotificationTime:J

.field public final mModality:I

.field public mRejectedAttempts:I

.field public mTotalAttempts:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 55
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 56
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    .line 58
    iput-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    .line 59
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    return-void
.end method

.method public constructor <init>(IIIIJJI)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 44
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 45
    iput p3, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 46
    iput p4, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 47
    iput-wide p5, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    .line 48
    iput-wide p7, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    .line 49
    iput p9, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    return-void
.end method


# virtual methods
.method public authenticate(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 102
    iget p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 104
    :cond_0
    iget p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 135
    :cond_0
    instance-of v1, p1, Lcom/android/server/biometrics/AuthenticationStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 139
    :cond_1
    check-cast p1, Lcom/android/server/biometrics/AuthenticationStats;

    .line 140
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getUserId()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v1

    .line 142
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getRejectedAttempts()I

    move-result v1

    .line 144
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getRejectedAttempts()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v1

    .line 146
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getLastEnrollmentTime()J

    move-result-wide v3

    .line 148
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getLastEnrollmentTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getLastFrrNotificationTime()J

    move-result-wide v3

    .line 150
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getLastFrrNotificationTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getModality()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getModality()I

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getEnrollmentNotifications()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    return p0
.end method

.method public getFrr()F
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    if-lez v0, :cond_0

    .line 93
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getLastEnrollmentTime()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    return-wide v0
.end method

.method public getLastFrrNotificationTime()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    return-wide v0
.end method

.method public getModality()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    return p0
.end method

.method public getRejectedAttempts()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    return p0
.end method

.method public getTotalAttempts()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    return p0
.end method

.method public getUserId()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 156
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 156
    const-string/jumbo v0, "userId: %d, totalAttempts: %d, rejectedAttempts: %d, enrollmentNotifications: %d, modality: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public resetData()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 110
    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 111
    const-string p0, "AuthenticationStats"

    const-string v0, "Reset Counters."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLastEnrollmentTime(J)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    return-void
.end method

.method public updateLastFrrNotificationTime(J)V
    .locals 0

    .line 126
    iput-wide p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    return-void
.end method

.method public updateNotificationCounter()V
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    return-void
.end method
