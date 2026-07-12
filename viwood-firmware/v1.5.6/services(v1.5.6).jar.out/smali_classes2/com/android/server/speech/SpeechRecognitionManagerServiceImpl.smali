.class public final Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SpeechRecognitionManagerServiceImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SpeechRecognitionManagerServiceImpl"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mRemoteServicesByUid:Ljava/util/Map;

.field public final mSessionCountByUid:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic $r8$lambda$E3jFJudA_HoGmJBAqumJ_9PfZPE(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->lambda$createSessionLocked$0(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ENbqGOo6dOvdEapT62e6pYlaMwg(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0

    .line 334
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$FBJSlkBgJtBBMv7YKotS5EQM_7k(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/os/IBinder;ILandroid/os/IBinder$DeathRecipient;Landroid/speech/IRecognitionService;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->lambda$createSessionLocked$1(Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/os/IBinder;ILandroid/os/IBinder$DeathRecipient;Landroid/speech/IRecognitionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hp5JZgCIK5y4F14FVeVMGV4PSC4(Landroid/content/ComponentName;Lcom/android/server/speech/RemoteSpeechRecognitionService;)Z
    .locals 0

    .line 300
    invoke-virtual {p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleClientDeath(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 65
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 67
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 72
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object p0
.end method

.method public static tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V
    .locals 0

    .line 433
    :try_start_0
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionServiceManagerCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 435
    :catch_0
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "Failed to respond with error"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final checkPrivilege(Landroid/content/ComponentName;)Z
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getDefaultRecognitionServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getOnDeviceComponentNameLocked()Landroid/content/ComponentName;

    move-result-object v1

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->isPreinstalledApp(Landroid/content/ComponentName;)Z

    move-result p0

    .line 361
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final componentMapsToRecognitionService(Landroid/content/ComponentName;)Z
    .locals 5

    .line 396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 399
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result p0

    const/4 v4, 0x0

    .line 399
    invoke-virtual {v2, v3, v4, p0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p0, :cond_0

    return v4

    .line 409
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 410
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 416
    :cond_2
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serviceComponent is not RecognitionService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catchall_0
    move-exception p0

    .line 402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    throw p0
.end method

.method public final createService(ILandroid/content/ComponentName;)Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .locals 8

    .line 274
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-lt v4, v3, :cond_0

    .line 280
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of remote services exceeded for uid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string/jumbo p0, "speech_recognition.value_exceed_service_connections_count"

    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 284
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 287
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getSessionCountByUidLocked(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 288
    sget-object v3, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of sessions exceeded for uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string/jumbo v3, "speech_recognition.value_exceed_session_count"

    invoke-static {v3, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_1
    if-eqz v0, :cond_3

    .line 298
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Landroid/content/ComponentName;)V

    .line 299
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v2, :cond_2

    .line 304
    sget-object v2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reused existing connection to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->incrementSessionCountForUidLocked(I)V

    .line 308
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    monitor-exit v1

    return-object p0

    :cond_3
    if-eqz p2, :cond_4

    .line 312
    invoke-virtual {p0, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->componentMapsToRecognitionService(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 313
    monitor-exit v1

    return-object v2

    :cond_4
    if-nez p2, :cond_5

    const/4 v0, 0x0

    :goto_0
    move v7, v0

    goto :goto_1

    .line 322
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->checkPrivilege(Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0

    .line 325
    :goto_1
    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 327
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 329
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v5

    move v6, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/speech/RemoteSpeechRecognitionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IIZ)V

    .line 333
    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 334
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 335
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p1, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_6

    .line 338
    sget-object p1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating a new connection to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->incrementSessionCountForUidLocked(I)V

    .line 342
    monitor-exit v1

    return-object v2

    .line 343
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createSessionLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .locals 8

    .line 106
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    .line 108
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 107
    const-string v2, "#createSessionLocked, component=%s, onDevice=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getOnDeviceComponentNameLocked()Landroid/content/ComponentName;

    move-result-object p1

    :cond_1
    const/4 v0, 0x5

    if-nez p3, :cond_2

    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 117
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "Isolated process can only start on device speech recognizer."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p4, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    return-void

    :cond_2
    if-nez p1, :cond_4

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p0, :cond_3

    .line 124
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "Service component is undefined, responding with error."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    invoke-static {p4, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    return-void

    .line 130
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 131
    invoke-virtual {p0, v6, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->createService(ILandroid/content/ComponentName;)Lcom/android/server/speech/RemoteSpeechRecognitionService;

    move-result-object v4

    if-nez v4, :cond_5

    const/16 p0, 0xa

    .line 134
    invoke-static {p4, p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    return-void

    .line 138
    :cond_5
    new-instance v7, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p2, v6, v4}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    const/4 p1, 0x0

    .line 143
    :try_start_0
    invoke-interface {p2, v7, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-virtual {v4}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance v1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v5, p2

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/os/IBinder;ILandroid/os/IBinder$DeathRecipient;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :catch_0
    move-object v2, p0

    move-object v5, p2

    const/4 p0, 0x1

    .line 146
    invoke-virtual {v2, v5, v6, v4, p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    return-void
.end method

.method public final decrementSessionCountForUidLocked(I)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public final getDefaultRecognitionServiceComponent()Landroid/content/ComponentName;
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_recognition_service"

    .line 386
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result p0

    .line 383
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 390
    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getOnDeviceComponentNameLocked()Landroid/content/ComponentName;
    .locals 4

    .line 237
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v1, :cond_0

    .line 239
    sget-object v1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolved component name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_2

    .line 243
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_1

    .line 244
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "ensureRemoteServiceLocked(): no service component name."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 248
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionCountByUidLocked(I)I
    .locals 1

    .line 253
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public final handleClientDeath(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 224
    invoke-virtual {p3, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->shutdown(Landroid/os/IBinder;)V

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 227
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->decrementSessionCountForUidLocked(I)V

    .line 228
    invoke-virtual {p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->hasActiveSessions()Z

    move-result p4

    if-nez p4, :cond_1

    .line 229
    invoke-virtual {p0, p2, p3}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->removeService(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 231
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final incrementSessionCountForUidLocked(I)V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    sget-object v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has opened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sessions"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isPreinstalledApp(Landroid/content/ComponentName;)Z
    .locals 3

    .line 367
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 373
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result p0

    const/high16 v2, 0x100000

    .line 373
    invoke-virtual {v0, p1, v2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 375
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    return p1

    :catch_0
    :cond_1
    return v1
.end method

.method public final synthetic lambda$createSessionLocked$0(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    return-void
.end method

.method public final synthetic lambda$createSessionLocked$1(Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/os/IBinder;ILandroid/os/IBinder$DeathRecipient;Landroid/speech/IRecognitionService;)V
    .locals 8

    const/4 v1, 0x5

    if-eqz p6, :cond_0

    .line 153
    :try_start_0
    new-instance v2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/os/IBinder;ILandroid/os/IBinder$DeathRecipient;)V

    invoke-interface {p1, v2}, Landroid/speech/IRecognitionServiceManagerCallback;->onSuccess(Landroid/speech/IRecognitionService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 211
    sget-object p2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p3, "Error creating a speech recognition session"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    invoke-static {p1, v1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    return-void

    .line 215
    :cond_0
    invoke-static {p1, v1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    return-void
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 86
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v1, 0x80

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 89
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeService(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 425
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 427
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateLocked(Z)Z
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p0

    return p0
.end method
