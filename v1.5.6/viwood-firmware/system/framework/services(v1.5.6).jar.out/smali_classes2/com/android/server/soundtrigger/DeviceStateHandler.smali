.class public Lcom/android/server/soundtrigger/DeviceStateHandler;
.super Ljava/lang/Object;
.source "DeviceStateHandler.java"

# interfaces
.implements Lcom/android/server/soundtrigger/PhoneCallStateHandler$Callback;


# instance fields
.field public final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field public mCallbackSet:Ljava/util/Set;

.field public final mDelayedNotificationExecutor:Ljava/util/concurrent/Executor;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public mIsPhoneCallOngoing:Z

.field public final mLock:Ljava/lang/Object;

.field public mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

.field public mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public mSoundTriggerPowerSaveMode:I


# direct methods
.method public static synthetic $r8$lambda$eB3dX0zZ1hqEZb49BnztDtI9vWg(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V
    .locals 0

    .line 178
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;->onSoundTriggerDeviceStateUpdate(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iBPDPb3N-SdXvbaWQfIqTLFiNjk(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V
    .locals 0

    .line 146
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;->onSoundTriggerDeviceStateUpdate(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/soundtrigger/DeviceStateHandler;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhoneStateChangePendingNotify(Lcom/android/server/soundtrigger/DeviceStateHandler;)Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPhoneStateChangePendingNotify(Lcom/android/server/soundtrigger/DeviceStateHandler;Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mevaluateStateChange(Lcom/android/server/soundtrigger/DeviceStateHandler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->evaluateStateChange()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/utils/EventLogger;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    .line 66
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    const/4 v0, 0x4

    .line 75
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    .line 77
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mDelayedNotificationExecutor:Ljava/util/concurrent/Executor;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 134
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method


# virtual methods
.method public final computeState()Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;
    .locals 3

    .line 184
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    if-eqz v0, :cond_0

    .line 185
    sget-object p0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-object p0

    .line 187
    :cond_0
    iget v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 190
    sget-object p0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-object p0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected power state code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2
    sget-object p0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->CRITICAL:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-object p0

    .line 188
    :cond_3
    sget-object p0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerSaveMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final evaluateStateChange()V
    .locals 5

    .line 168
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->computeState()Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 174
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateEvent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateEvent;-><init>(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 176
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;

    .line 177
    iget-object v3, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v0}, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getDeviceState()Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPhoneCallStateChanged(Z)V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;

    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    if-ne v1, p1, :cond_0

    .line 99
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->cancel()V

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    .line 106
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    if-nez p1, :cond_2

    .line 109
    new-instance p1, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$1;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/DeviceStateHandler$1;-><init>(Lcom/android/server/soundtrigger/DeviceStateHandler;)V

    const-wide/16 v2, 0x3e8

    invoke-direct {p1, v1, v2, v3}, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;-><init>(Ljava/lang/Runnable;J)V

    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    .line 124
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mDelayedNotificationExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->evaluateStateChange()V

    .line 128
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPowerModeChanged(I)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;

    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 83
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    if-ne p1, v1, :cond_0

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 88
    :cond_0
    iput p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    .line 89
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->evaluateStateChange()V

    .line 90
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerListener(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;)V
    .locals 3

    .line 144
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->getDeviceState()Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v0}, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 147
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterListener(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
