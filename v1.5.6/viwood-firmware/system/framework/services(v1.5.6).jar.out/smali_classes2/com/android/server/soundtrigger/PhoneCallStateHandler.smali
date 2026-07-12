.class public Lcom/android/server/soundtrigger/PhoneCallStateHandler;
.super Ljava/lang/Object;
.source "PhoneCallStateHandler.java"


# instance fields
.field public final mCallback:Lcom/android/server/soundtrigger/PhoneCallStateHandler$Callback;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mIsPhoneCallOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mListenerList:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$1NFlBhED3_ICM4Ppo54VxYgjQhM(Lcom/android/server/soundtrigger/PhoneCallStateHandler;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->lambda$checkCallStatus$1(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PYES1WIVYNsQutEzliFnI13fLQQ(Lcom/android/server/soundtrigger/PhoneCallStateHandler;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->lambda$updateTelephonyListeners$4(Landroid/telephony/TelephonyManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VMrqL1t_2WaAtzDQKkOiS44tSvA(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 144
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$cmK-0IqP8EB6MJlh1-3ZaCnS9ZM(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$zNtuXxrhf7Rp2sFnW2uoztEiRzk(Lcom/android/server/soundtrigger/PhoneCallStateHandler;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->lambda$updateTelephonyListeners$3(Landroid/telephony/SubscriptionInfo;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExecutor(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateCallStatus(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->updateCallStatus()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTelephonyListeners(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->updateTelephonyListeners()V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Lcom/android/server/soundtrigger/PhoneCallStateHandler$Callback;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mListenerList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mIsPhoneCallOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 67
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mCallback:Lcom/android/server/soundtrigger/PhoneCallStateHandler$Callback;

    .line 68
    new-instance p2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;

    invoke-direct {p2, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    invoke-virtual {p1, v0, p2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public static isCallOngoingFromState(I)Z
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected call state from Telephony Manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final checkCallStatus()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda3;-><init>()V

    .line 122
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    .line 124
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$checkCallStatus$1(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 126
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 127
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 128
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result p0

    .line 126
    invoke-static {p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->isCallOngoingFromState(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$updateTelephonyListeners$3(Landroid/telephony/SubscriptionInfo;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$updateTelephonyListeners$4(Landroid/telephony/TelephonyManager;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    new-instance v1, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;Landroid/telephony/TelephonyManager;)V

    .line 150
    iget-object v2, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mListenerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, p0, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateCallStatus()V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->checkCallStatus()Z

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mIsPhoneCallOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mCallback:Lcom/android/server/soundtrigger/PhoneCallStateHandler$Callback;

    invoke-interface {p0, v0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$Callback;->onPhoneCallStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public final updateTelephonyListeners()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;

    .line 138
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->cleanup()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 141
    iget-object v1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 142
    monitor-exit v0

    return-void

    .line 143
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;-><init>()V

    .line 144
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    .line 146
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    .line 147
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 154
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
