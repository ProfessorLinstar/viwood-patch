.class public final Lcom/android/server/timedetector/TimeDetectorService;
.super Landroid/app/timedetector/ITimeDetectorService$Stub;
.source "TimeDetectorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Landroid/util/ArrayMap;

.field public final mNtpTrustedTime:Landroid/util/NtpTrustedTime;

.field public final mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;


# direct methods
.method public static synthetic $r8$lambda$DS6HlIiLYXva6vquXcmkQhr52JE(Lcom/android/server/timedetector/TimeDetectorService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$EN7QZRbPYZ_SUBWF87NKCcmKHyU(Lcom/android/server/timedetector/TimeDetectorService;Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$suggestNetworkTime$2(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_LLfcDfEebTfdqhbl7tl6sg16wM(Lcom/android/server/timedetector/TimeDetectorService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->handleChangeOnHandlerThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$sWZPzjgslPq4cdz-MjG_Hmrtt_Y(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$suggestTelephonyTime$1(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tuB5k22of5WkdCc-5qTKIr43d90(Lcom/android/server/timedetector/TimeDetectorService;Lcom/android/server/timedetector/GnssTimeSuggestion;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$suggestGnssTime$3(Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y_J75_oYh67a3FAzEJUSJOgz1UQ(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/time/ExternalTimeSuggestion;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$suggestExternalTime$4(Landroid/app/time/ExternalTimeSuggestion;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timedetector/TimeDetectorStrategy;Landroid/util/NtpTrustedTime;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;-><init>()V

    .line 116
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    .line 127
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 128
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 129
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lcom/android/server/timedetector/TimeDetectorService;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 133
    new-instance p1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timedetector/TimeDetectorService;)V

    invoke-interface {p4, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->addChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/app/time/ITimeDetectorListener;)V
    .locals 4

    .line 185
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-interface {p1}, Landroid/app/time/ITimeDetectorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 195
    :try_start_1
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 198
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    :try_start_2
    const-string/jumbo v1, "time_detector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to linkToDeath() for listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public binderDied()V
    .locals 1

    .line 229
    const-string/jumbo p0, "time_detector"

    const-string v0, "binderDied() called unexpectedly."

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 242
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 243
    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 250
    :cond_1
    const-string/jumbo v1, "time_detector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notified of binder death for who="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but did not remove any listeners. mListeners="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearLatestNetworkTime()V
    .locals 3

    .line 375
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestNetworkTimePermission()V

    .line 377
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy;->clearLatestNetworkSuggestion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 382
    throw v2
.end method

.method public clearNetworkTimeForSystemClockForTests()V
    .locals 3

    .line 471
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestNetworkTimePermission()V

    .line 473
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 478
    :try_start_0
    invoke-static {}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy;->clearLatestNetworkSuggestion()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->clearCachedTimeResult()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :goto_0
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 486
    throw v2
.end method

.method public confirmTime(Landroid/app/time/UnixEpochTime;)Z
    .locals 3

    .line 305
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 310
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v2, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->confirmTime(Landroid/app/time/UnixEpochTime;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 313
    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 492
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "time_detector"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 494
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 495
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1, p3}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public final enforceManageTimeDetectorPermission()V
    .locals 2

    .line 538
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    const-string v1, "manage time and time zone detection"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestExternalTimePermission()V
    .locals 2

    .line 532
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUGGEST_EXTERNAL_TIME"

    const-string/jumbo v1, "suggest time from external source"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestGnssTimePermission()V
    .locals 2

    .line 525
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SET_TIME"

    const-string/jumbo v1, "suggest gnss time"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestManualTimePermission()V
    .locals 2

    .line 513
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE"

    const-string/jumbo v1, "suggest manual time and time zone"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestNetworkTimePermission()V
    .locals 2

    .line 519
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SET_TIME"

    const-string/jumbo v1, "suggest network time"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestTelephonyTimePermission()V
    .locals 2

    .line 507
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE"

    const-string/jumbo v1, "suggest telephony time and time zone"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/TimeDetectorService;->getTimeCapabilitiesAndConfig(I)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p0

    return-object p0
.end method

.method public getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public final getTimeCapabilitiesAndConfig(I)Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    .line 147
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getCapabilitiesAndConfig(IZ)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 153
    throw p1
.end method

.method public getTimeState()Landroid/app/time/TimeState;
    .locals 3

    .line 278
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    .line 280
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeState()Landroid/app/time/TimeState;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 285
    throw v2
.end method

.method public final handleChangeOnHandlerThread()V
    .locals 8

    .line 261
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 264
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/time/ITimeDetectorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    invoke-interface {v3}, Landroid/app/time/ITimeDetectorListener;->onChange()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 270
    :try_start_2
    const-string/jumbo v5, "time_detector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to notify listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_0
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$new$0()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timedetector/TimeDetectorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$suggestExternalTime$4(Landroid/app/time/ExternalTimeSuggestion;)V
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V

    return-void
.end method

.method public final synthetic lambda$suggestGnssTime$3(Lcom/android/server/timedetector/GnssTimeSuggestion;)V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    return-void
.end method

.method public final synthetic lambda$suggestNetworkTime$2(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method

.method public final synthetic lambda$suggestTelephonyTime$1(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    return-void
.end method

.method public latestNetworkTime()Landroid/app/time/UnixEpochTime;
    .locals 6

    .line 391
    invoke-static {}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;

    move-result-object p0

    goto :goto_0

    .line 396
    :cond_0
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 398
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    new-instance v1, Landroid/app/time/UnixEpochTime;

    .line 400
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 401
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getUncertaintyMillis()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/timedetector/NetworkTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;I)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object p0

    return-object p0

    .line 407
    :cond_2
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Missing network time fix"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 502
    new-instance v0, Lcom/android/server/timedetector/TimeDetectorShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/TimeDetectorShellCommand;-><init>(Lcom/android/server/timedetector/TimeDetectorService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public removeListener(Landroid/app/time/ITimeDetectorListener;)V
    .locals 4

    .line 207
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 211
    :try_start_0
    invoke-interface {p1}, Landroid/app/time/ITimeDetectorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 215
    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 219
    :cond_0
    const-string/jumbo v1, "time_detector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client asked to remove listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but no listeners were removed. mListeners="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .locals 5

    .line 318
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v1

    .line 327
    :try_start_0
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    const/4 v4, 0x0

    invoke-interface {v3, v0, p1, v4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestManualTime(ILandroid/app/timedetector/ManualTimeSuggestion;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v1, v2}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v1, v2}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 331
    throw p1
.end method

.method public setNetworkTimeForSystemClockForTests(Landroid/app/time/UnixEpochTime;I)V
    .locals 8

    .line 445
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestNetworkTimePermission()V

    .line 450
    invoke-static {}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    invoke-direct {v0, p1, p2}, Lcom/android/server/timedetector/NetworkTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;I)V

    .line 453
    const-string p1, "Injected for tests"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 454
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void

    .line 456
    :cond_0
    new-instance v1, Landroid/util/NtpTrustedTime$TimeResult;

    .line 457
    invoke-virtual {p1}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v2

    .line 458
    invoke-virtual {p1}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    move-result-wide v4

    const-string/jumbo p1, "time.set.for.tests"

    const/16 v0, 0x7b

    .line 460
    invoke-static {p1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v7

    move v6, p2

    invoke-direct/range {v1 .. v7}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJILjava/net/InetSocketAddress;)V

    .line 461
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p0, v1}, Landroid/util/NtpTrustedTime;->setCachedTimeResult(Landroid/util/NtpTrustedTime$TimeResult;)V

    return-void
.end method

.method public setTimeState(Landroid/app/time/TimeState;)V
    .locals 3

    .line 293
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    .line 295
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v2, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->setTimeState(Landroid/app/time/TimeState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 300
    throw p1
.end method

.method public suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .locals 2

    .line 432
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestExternalTimePermission()V

    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/time/ExternalTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V
    .locals 2

    .line 424
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestGnssTimePermission()V

    .line 425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .locals 5

    .line 344
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestManualTimePermission()V

    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 348
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v1

    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    const/4 v4, 0x0

    invoke-interface {v3, v0, p1, v4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestManualTime(ILandroid/app/timedetector/ManualTimeSuggestion;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v1, v2}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v1, v2}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 355
    throw p1
.end method

.method public suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestNetworkTimePermission()V

    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestTelephonyTimePermission()V

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateConfiguration(ILandroid/app/time/TimeConfiguration;)Z
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    const-string/jumbo v1, "updateConfiguration"

    invoke-interface {v0, p1, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->resolveUserId(ILjava/lang/String;)I

    move-result p1

    .line 169
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    .line 171
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, v3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->updateConfiguration(ILandroid/app/time/TimeConfiguration;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 180
    throw p1
.end method

.method public updateConfiguration(Landroid/app/time/TimeConfiguration;)Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->updateConfiguration(ILandroid/app/time/TimeConfiguration;)Z

    move-result p0

    return p0
.end method
