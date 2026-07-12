.class public Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;
.super Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;
.source "FakeSoundTriggerHal.java"


# instance fields
.field public final mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

.field public final mIsKeyphrase:Z

.field public mIsUnloaded:Z

.field public final mModelHandle:I

.field public mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

.field public mThreshold:I

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;


# direct methods
.method public static synthetic $r8$lambda$3ufpFdEAzJMmtJMjpCpdd7c0BVk(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .locals 0

    .line 214
    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void
.end method

.method public static synthetic $r8$lambda$qb5X1SYl0FCs3qEYbOWGSaiTkgM(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger/PhraseRecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->lambda$forceRecognitionForModel$0(Landroid/media/soundtrigger/PhraseRecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y_eY-d2JY3NOeDspNBkQhT0bVEM(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger/RecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->lambda$forceRecognitionForModel$1(Landroid/media/soundtrigger/RecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zpM3wiIVhMroZUIX7L4vxoh_Fgs(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->lambda$triggerUnloadModel$2(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsKeyphrase(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsKeyphrase:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModelHandle(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecognitionSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRecognitionSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforceRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->forceRecognitionForModel()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->getIsUnloaded()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetRecogSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->getRecogSession()Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetThresholdFactor(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->getThresholdFactor()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetThresholdFactor(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->setThresholdFactor(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->startRecognitionForModel()Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstopRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->stopRecognitionForModel()Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;ILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Z)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;-><init>()V

    const/4 p1, 0x0

    .line 120
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mThreshold:I

    .line 124
    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsUnloaded:Z

    .line 134
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    .line 135
    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 136
    iput-boolean p4, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsKeyphrase:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;ILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;ZLcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;ILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Z)V

    return-void
.end method


# virtual methods
.method public final forceRecognitionForModel()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsKeyphrase:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 158
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$smcreateDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger/PhraseRecognitionEvent;)V

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 162
    :cond_0
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$smcreateDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger/RecognitionEvent;)V

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 166
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getIsUnloaded()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 183
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsUnloaded:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRecogSession()Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 190
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getThresholdFactor()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 177
    :try_start_0
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mThreshold:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$forceRecognitionForModel$0(Landroid/media/soundtrigger/PhraseRecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .locals 0

    .line 160
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    invoke-interface {p2, p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    return-void
.end method

.method public final synthetic lambda$forceRecognitionForModel$1(Landroid/media/soundtrigger/RecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    invoke-interface {p2, p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    return-void
.end method

.method public final synthetic lambda$triggerUnloadModel$2(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .locals 0

    .line 206
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    invoke-interface {p1, p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->modelUnloaded(I)V

    return-void
.end method

.method public final setThresholdFactor(I)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    :try_start_0
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mThreshold:I

    .line 172
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startRecognitionForModel()Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_0
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 142
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopRecognitionForModel()Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    const/4 v2, 0x0

    .line 149
    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 150
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public triggerUnloadModel()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsUnloaded:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->triggerAbortRecognition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 204
    iput-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsUnloaded:Z

    .line 205
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 211
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$mgetNumLoadedModelsLocked(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmProperties(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Landroid/media/soundtrigger/Properties;

    move-result-object v3

    iget v3, v3, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmIsResourceContended(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmGlobalCallbackDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    move-result-object p0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 216
    :cond_2
    monitor-exit v0

    return-void

    .line 198
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    .line 216
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
