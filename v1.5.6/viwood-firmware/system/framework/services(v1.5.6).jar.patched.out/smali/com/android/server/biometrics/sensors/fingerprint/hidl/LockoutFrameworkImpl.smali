.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;
.super Ljava/lang/Object;
.source "LockoutFrameworkImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mFailedAttempts:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockoutReceiver:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;

.field public final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

.field public final mLockoutResetIntent:Ljava/util/function/Function;

.field public final mTimedLockoutCleared:Landroid/util/SparseBooleanArray;


# direct methods
.method public static synthetic $r8$lambda$Tgc87nh1VusqHmBvdWU4lKurth8(Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->lambda$scheduleLockoutResetForUser$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uc-wEIk5KRpiCiNMfTLyrucvgHU(Landroid/content/Context;Ljava/lang/Integer;)Landroid/app/PendingIntent;
    .locals 3

    .line 92
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lockout_reset_user"

    .line 93
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0xc000000

    .line 92
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;Landroid/os/Handler;)V
    .locals 1

    .line 92
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;Ljava/util/function/Function;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;Ljava/util/function/Function;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

    .line 104
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 105
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 106
    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 107
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;

    const/4 p2, 0x0

    invoke-direct {v1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl-IA;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutReceiver:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;

    if-nez p4, :cond_0

    .line 108
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mHandler:Landroid/os/Handler;

    .line 109
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetIntent:Ljava/util/function/Function;

    .line 111
    new-instance v2, Landroid/content/IntentFilter;

    const-string p0, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addFailedAttemptForUser(I)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->scheduleLockoutResetForUser(I)V

    :cond_0
    return-void
.end method

.method public final cancelLockoutResetForUser(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetIntent:Ljava/util/function/Function;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public getLockoutModeForUser(I)I
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-lez v0, :cond_1

    .line 150
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 151
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-nez p0, :cond_1

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final synthetic lambda$scheduleLockoutResetForUser$2(I)V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetIntent:Ljava/util/function/Function;

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    const/4 p1, 0x2

    .line 167
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public resetFailedAttemptsForUser(ZI)V
    .locals 2

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset biometric lockout for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clearAttemptCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockoutFrameworkImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 130
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->cancelLockoutResetForUser(I)V

    .line 131
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

    invoke-interface {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;->onLockoutReset(I)V

    return-void
.end method

.method public final scheduleLockoutResetForUser(I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLockoutModeForUser(II)V
    .locals 0

    .line 0
    return-void
.end method
