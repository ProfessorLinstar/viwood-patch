.class public Lcom/android/server/biometrics/AuthenticationStatsCollector;
.super Ljava/lang/Object;
.source "AuthenticationStatsCollector.java"


# static fields
.field static final FRR_MINIMAL_DURATION:Ljava/time/Duration;

.field static final MAXIMUM_ENROLLMENT_NOTIFICATIONS:I = 0x1


# instance fields
.field public mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

.field public mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public final mEnabled:Z

.field public final mEnrollTimeUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mModality:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mThreshold:F

.field public final mUserAuthenticationStatsMap:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/biometrics/AuthenticationStatsCollector;)Ljava/time/Clock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModality(Lcom/android/server/biometrics/AuthenticationStatsCollector;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserAuthenticationStatsMap(Lcom/android/server/biometrics/AuthenticationStatsCollector;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAuthenticationStatsMapIfNeeded(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->updateAuthenticationStatsMapIfNeeded(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7

    .line 59
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->FRR_MINIMAL_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/biometrics/sensors/BiometricNotification;Ljava/time/Clock;)V
    .locals 5

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;-><init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v1, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;-><init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V

    iput-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnrollTimeUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnabled:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1130001

    const/4 v4, 0x1

    .line 112
    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    .line 113
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 114
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    .line 115
    iput-object p3, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    .line 116
    iput-object p4, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 119
    const-class p2, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/face/FaceManager;

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 120
    const-class p2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 122
    new-instance p2, Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    .line 124
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->initializeUserAuthenticationStatsMap()V

    .line 125
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->persistFrrThreshold(F)V

    .line 127
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    const-string p2, "android.intent.action.USER_REMOVED"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    const-string/jumbo p2, "last_enroll_time_changed"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 133
    invoke-virtual {p1, v1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public authenticate(IZ)V
    .locals 3

    .line 148
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->isSingleModalityDevice()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFingerprint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->updateAuthenticationStatsMapIfNeeded(I)V

    .line 160
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/AuthenticationStats;

    .line 161
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v1

    sget v2, Lcom/android/server/biometrics/AuthenticationStatsCollector;->MAXIMUM_ENROLLMENT_NOTIFICATIONS:I

    if-lt v1, v2, :cond_2

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/AuthenticationStats;->authenticate(Z)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->sendNotificationIfNeeded(I)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->persistDataIfNeeded(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getAuthenticationStatsForUser(I)Lcom/android/server/biometrics/AuthenticationStats;
    .locals 1

    .line 319
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/AuthenticationStats;

    return-object p0
.end method

.method public final hasEnrolledFace(I)Z
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasEnrolledFingerprint(I)Z
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final initializeUserAuthenticationStatsMap()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getAllFrrStats(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationStats;

    .line 140
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationStats;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isSingleModalityDevice()Z
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.hardware.biometrics.face"

    .line 299
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onUserRemoved(I)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->removeFrrStats(I)V

    return-void
.end method

.method public final persistDataIfNeeded(I)V
    .locals 11

    .line 258
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/AuthenticationStats;

    .line 259
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v0

    rem-int/lit8 v0, v0, 0x32

    if-nez v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getUserId()I

    move-result v2

    .line 261
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v3

    .line 262
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getRejectedAttempts()I

    move-result v4

    .line 263
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v5

    .line 264
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getLastEnrollmentTime()J

    move-result-wide v6

    .line 265
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getLastFrrNotificationTime()J

    move-result-wide v8

    .line 266
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getModality()I

    move-result v10

    .line 260
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->persistFrrStats(IIIIJJI)V

    :cond_0
    return-void
.end method

.method public sendFaceReEnrollNotification()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFaceEnrollNotification(Landroid/content/Context;)V

    return-void
.end method

.method public sendFingerprintReEnrollNotification()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFpEnrollNotification(Landroid/content/Context;)V

    return-void
.end method

.method public final sendNotificationIfNeeded(I)V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/AuthenticationStats;

    .line 188
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v1

    const/16 v2, 0x96

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v1

    sget v2, Lcom/android/server/biometrics/AuthenticationStatsCollector;->MAXIMUM_ENROLLMENT_NOTIFICATIONS:I

    if-ge v1, v2, :cond_3

    .line 203
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getFrr()F

    move-result v1

    iget v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 212
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->resetData()V

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFace(I)Z

    move-result v1

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFingerprint(I)Z

    move-result p1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFpEnrollNotification(Landroid/content/Context;)V

    .line 229
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/AuthenticationStats;->updateLastFrrNotificationTime(J)V

    .line 230
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->updateNotificationCounter()V

    return-void

    :cond_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFaceEnrollNotification(Landroid/content/Context;)V

    .line 233
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/AuthenticationStats;->updateLastFrrNotificationTime(J)V

    .line 234
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->updateNotificationCounter()V

    :cond_2
    :goto_0
    return-void

    .line 208
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->resetData()V

    return-void
.end method

.method public setAuthenticationStatsForUser(ILcom/android/server/biometrics/AuthenticationStats;)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateAuthenticationStatsMapIfNeeded(I)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->initializeUserAuthenticationStatsMap()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/AuthenticationStats;

    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    invoke-direct {v2, p1, p0}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
