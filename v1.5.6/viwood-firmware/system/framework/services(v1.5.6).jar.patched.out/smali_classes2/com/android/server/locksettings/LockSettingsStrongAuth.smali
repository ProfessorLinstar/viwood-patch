.class public Lcom/android/server/locksettings/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# static fields
.field public static final DEBUG:Z

.field protected static final NON_STRONG_BIOMETRIC_IDLE_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsPrimaryAuth.nonStrongBiometricIdleTimeoutForUser"

.field protected static final NON_STRONG_BIOMETRIC_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsPrimaryAuth.nonStrongBiometricTimeoutForUser"

.field protected static final STRONG_AUTH_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsStrongAuth.timeoutForUser"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultIsNonStrongBiometricAllowed:Z

.field public final mDefaultStrongAuthFlags:I

.field protected final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

.field protected final mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

.field protected final mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStrongAuthForUser:Landroid/util/SparseIntArray;

.field protected final mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mTrackers:Landroid/os/RemoteCallbackList;


# direct methods
.method public static bridge synthetic -$$Nest$mhandleAddStrongAuthTracker(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNoLongerRequireStrongAuth(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleNoLongerRequireStrongAuth(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRefreshStrongAuthTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRefreshStrongAuthTimeout(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRemoveStrongAuthTracker(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRemoveUser(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRequireStrongAuth(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScheduleNonStrongBiometricIdleTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleNonStrongBiometricIdleTimeout(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScheduleNonStrongBiometricTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleNonStrongBiometricTimeout(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScheduleStrongAuthTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleStrongAuthTimeout(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStrongBiometricUnlock(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleStrongBiometricUnlock(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "LockSettingsStrongAuth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    invoke-direct {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 85
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 87
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultIsNonStrongBiometricAllowed:Z

    .line 598
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;

    .line 599
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 117
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getDefaultStrongAuthFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 118
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method


# virtual methods
.method public final cancelNonStrongBiometricAlarmListener(I)V
    .locals 4

    .line 329
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    const-string v1, "LockSettingsStrongAuth"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNonStrongBiometricAlarmListener for userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 333
    const-string v0, "Cancel alarm for non-strong biometric fallback timeout"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 336
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final cancelNonStrongBiometricIdleAlarmListener(I)V
    .locals 4

    .line 341
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    const-string v1, "LockSettingsStrongAuth"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNonStrongBiometricIdleAlarmListener for userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 347
    const-string v0, "Cancel alarm for non-strong biometric idle timeout"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_2
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    .line 638
    const-string v0, "PrimaryAuthFlags state:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 640
    :goto_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const-string/jumbo v3, "userId="

    if-ge v1, v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 642
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 643
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", primaryAuthFlags="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 646
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 648
    const-string v1, "NonStrongBiometricAllowed state:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 650
    :goto_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 651
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 652
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allowed="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 655
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 656
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const-string v3, "LockSettingsStrongAuth"

    if-ge v1, v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 166
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 168
    :try_start_0
    invoke-interface {p1, v4, v2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 170
    const-string v4, "Exception while adding StrongAuthTracker."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 178
    :try_start_1
    invoke-interface {p1, v2, v1}, Landroid/app/trust/IStrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 180
    const-string v2, "Exception while adding StrongAuthTracker: IsNonStrongBiometricAllowedChanged."

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    return-void
.end method

.method public final handleNoLongerRequireStrongAuth(II)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleNoLongerRequireStrongAuthOneUser(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleNoLongerRequireStrongAuthOneUser(II)V

    return-void
.end method

.method public final handleNoLongerRequireStrongAuthOneUser(II)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    if-eq v0, p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    :cond_0
    return-void
.end method

.method public final handleRefreshStrongAuthTimeout(I)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->getLatestStrongAuthTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->rescheduleStrongAuthTimeoutAlarm(JI)V

    :cond_0
    return-void
.end method

.method public final handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final handleRemoveUser(I)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 236
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(ZI)V

    :cond_1
    return-void
.end method

.method public final handleRequireStrongAuth(II)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    return-void
.end method

.method public final handleRequireStrongAuthOneUser(II)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    or-int/2addr p1, v0

    :goto_0
    if-eq v0, p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    :cond_1
    return-void
.end method

.method public final handleScheduleNonStrongBiometricIdleTimeout(I)V
    .locals 12

    .line 386
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    const-string v1, "LockSettingsStrongAuth"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleScheduleNonStrongBiometricIdleTimeout for userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    const-wide/32 v3, 0xdbba00

    .line 388
    invoke-virtual {v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getNextAlarmTimeMs(J)J

    move-result-wide v7

    .line 390
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 391
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 393
    const-string p1, "Cancel existing alarm for non-strong biometric idle timeout"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :goto_0
    move-object v10, v2

    goto :goto_1

    .line 396
    :cond_2
    new-instance v2, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    invoke-direct {v2, p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 397
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    .line 400
    const-string p1, "Schedule a new alarm for non-strong biometric idle timeout"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_3
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v9, "LockSettingsPrimaryAuth.nonStrongBiometricIdleTimeoutForUser"

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final handleScheduleNonStrongBiometricTimeout(I)V
    .locals 12

    .line 292
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    const-string v1, "LockSettingsStrongAuth"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleScheduleNonStrongBiometricTimeout for userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getNextAlarmTimeMs(J)J

    move-result-wide v7

    .line 294
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 300
    const-string v0, "There is an existing alarm for non-strong biometric fallback timeout, so do not re-schedule"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 305
    const-string v0, "Schedule a new alarm for non-strong biometric fallback timeout"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    new-instance v10, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    invoke-direct {v10, p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 308
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v9, "LockSettingsPrimaryAuth.nonStrongBiometricTimeoutForUser"

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 315
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    return-void
.end method

.method public final handleScheduleStrongAuthTimeout(I)V
    .locals 2

    .line 273
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScheduleStrongAuthTimeout for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsStrongAuth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getElapsedRealtimeMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->rescheduleStrongAuthTimeoutAlarm(JI)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricAlarmListener(I)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    const/4 v0, 0x1

    .line 281
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    return-void
.end method

.method public final handleStrongBiometricUnlock(I)V
    .locals 2

    .line 319
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStrongBiometricUnlock for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsStrongAuth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricAlarmListener(I)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    const/4 v0, 0x1

    .line 325
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    return-void
.end method

.method public noLongerRequireStrongAuth(II)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "userId must be an explicit user id or USER_ALL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 470
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 471
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyStrongAuthTrackers(II)V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 414
    :try_start_1
    const-string v2, "LockSettingsStrongAuth"

    const-string v3, "Exception while notifying StrongAuthTracker."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 418
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 419
    throw p1

    .line 418
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(ZI)V
    .locals 4

    .line 424
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    const-string v1, "LockSettingsStrongAuth"

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStrongAuthTrackersForIsNonStrongBiometricAllowed for allowed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 433
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v2, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 436
    :try_start_1
    const-string v3, "Exception while notifying StrongAuthTracker: IsNonStrongBiometricAllowedChanged."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 441
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 442
    throw p1

    .line 441
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public refreshStrongAuthTimeout(I)V
    .locals 2

    .line 494
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    .line 446
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeUser(I)V
    .locals 2

    .line 455
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportSuccessfulBiometricUnlock(ZI)V
    .locals 2

    .line 501
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportSuccessfulBiometricUnlock for isStrongBiometric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsStrongAuth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 507
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 508
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 510
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 511
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportSuccessfulStrongAuthUnlock(I)V
    .locals 2

    .line 487
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportUnlock(I)V
    .locals 1

    const/4 v0, 0x0

    .line 479
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "userId must be an explicit user id or USER_ALL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 460
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 461
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final rescheduleStrongAuthTimeoutAlarm(JI)V
    .locals 11

    .line 252
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 255
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    if-eqz v1, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 258
    invoke-virtual {v1, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->setLatestStrongAuthTime(J)V

    :goto_0
    move-object v9, v1

    goto :goto_1

    .line 260
    :cond_0
    new-instance v1, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;JI)V

    .line 261
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    .line 265
    invoke-virtual {v0, v1, p3}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v0

    add-long v6, p1, v0

    .line 268
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v8, "LockSettingsStrongAuth.timeoutForUser"

    iget-object v10, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public scheduleNonStrongBiometricIdleTimeout(I)V
    .locals 2

    .line 519
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleNonStrongBiometricIdleTimeout for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsStrongAuth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 522
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setIsNonStrongBiometricAllowed(ZI)V
    .locals 2

    .line 354
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsNonStrongBiometricAllowed for allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsStrongAuth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    .line 359
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowedOneUser(ZI)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 364
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowedOneUser(ZI)V

    return-void
.end method

.method public final setIsNonStrongBiometricAllowedOneUser(ZI)V
    .locals 4

    .line 369
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    const-string v1, "LockSettingsStrongAuth"

    if-eqz v0, :cond_0

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsNonStrongBiometricAllowedOneUser for allowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eq p1, v2, :cond_2

    if-eqz v0, :cond_1

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsNonStrongBiometricAllowedForUser value changed: oldValue="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", allowed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 381
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(ZI)V

    :cond_2
    return-void
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    .line 450
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
