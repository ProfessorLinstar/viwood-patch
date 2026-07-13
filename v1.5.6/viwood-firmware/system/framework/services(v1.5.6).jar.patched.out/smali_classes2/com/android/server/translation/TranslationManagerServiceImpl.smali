.class public final Lcom/android/server/translation/TranslationManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "TranslationManagerServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActiveTranslations:Landroid/util/ArrayMap;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public mLastActivityTokens:Ljava/lang/ref/WeakReference;

.field public final mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

.field public mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

.field public mRemoteTranslationServiceInfo:Landroid/content/pm/ServiceInfo;

.field public final mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

.field public mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

.field public final mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;


# direct methods
.method public static synthetic $r8$lambda$Rl2aRRQwTHg90n7dONkwfe2wugs(Lcom/android/server/translation/TranslationManagerServiceImpl;ILandroid/os/Bundle;Ljava/util/List;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/translation/TranslationManagerServiceImpl;->lambda$invokeCallbacks$0(ILandroid/os/Bundle;Ljava/util/List;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j6tbxkY2NmhHvTAm3VTwgKmWdLs(Landroid/os/Bundle;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .locals 0

    .line 613
    :try_start_0
    invoke-interface {p1, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 615
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to invoke UiTranslationStateCallback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranslationManagerServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyClientsTranslationCapability(Lcom/android/server/translation/TranslationManagerServiceImpl;Landroid/view/translation/TranslationCapability;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->notifyClientsTranslationCapability(Landroid/view/translation/TranslationCapability;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 84
    const-string v0, "TranslationManagerServiceImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/translation/TranslationManagerService;Ljava/lang/Object;IZ)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 102
    new-instance p1, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;Lcom/android/server/translation/TranslationManagerServiceImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    .line 104
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    .line 106
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    .line 111
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 594
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 118
    invoke-direct {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateRemoteServiceLocked()V

    .line 119
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-void
.end method

.method private updateRemoteServiceLocked()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/translation/TranslationManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TranslationManagerServiceImpl"

    const-string/jumbo v1, "updateRemoteService(): destroying old remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    :cond_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 0
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .locals 8

    .line 656
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 658
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    if-eqz p1, :cond_0

    .line 661
    iget-object v4, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v5, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    iget-object v6, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    const/4 v3, 0x3

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 665
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 508
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 509
    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 512
    const-string/jumbo p1, "source_locale"

    invoke-virtual {p2}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 513
    const-string/jumbo p1, "target_locale"

    invoke-virtual {p3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 515
    :cond_0
    const-string/jumbo p1, "package_name"

    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 6

    .line 446
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLastActivityTokens:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 451
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 453
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    const-string v4, "--dump-dumpable"

    const-string v5, "UiTranslationController"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-interface {v2, v3, v0, p1, v4}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 451
    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 462
    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Got a RemoteException while dumping the activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 460
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Failure while dumping the activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 465
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    const-string p2, "No requested UiTranslation Activity."

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    :goto_2
    iget-object p2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 470
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    const-string/jumbo v0, "number waiting finish callback activities: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 473
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    .line 474
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    const-string/jumbo v0, "shareableActivityToken: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    :goto_4
    return-void
.end method

.method public final ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;
    .locals 9

    .line 155
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    if-nez v0, :cond_4

    .line 156
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 157
    const-string v2, "TranslationManagerServiceImpl"

    if-nez v0, :cond_1

    .line 158
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/translation/TranslationManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_0

    .line 159
    const-string p0, "ensureRemoteServiceLocked(): no service component name."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    .line 163
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 167
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/translation/TranslationManagerServiceImpl;->isServiceAvailableForUser(Landroid/content/ComponentName;)Z

    move-result v0

    .line 168
    iget-object v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v6, Lcom/android/server/translation/TranslationManagerService;

    iget-boolean v6, v6, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v6, :cond_2

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ensureRemoteServiceLocked(): isServiceAvailableForUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 173
    :cond_2
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_3

    .line 176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ensureRemoteServiceLocked(): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not available,"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 180
    :cond_3
    new-instance v3, Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/translation/RemoteTranslationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IZLandroid/os/IBinder;)V

    iput-object v3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    goto :goto_2

    .line 173
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    throw p0

    .line 183
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    return-object p0
.end method

.method public final getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I
    .locals 1

    if-eqz p2, :cond_0

    .line 233
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 234
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p1, v0, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 237
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot find packageManager for"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranslationManagerServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getEnabledInputMethods()Ljava/util/List;
    .locals 1

    .line 502
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 503
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getServiceSettingsActivityLocked()Landroid/content/ComponentName;
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 600
    :cond_0
    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 604
    :cond_1
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {p0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 605
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1

    .line 522
    const-string p0, "Failed to invoke UiTranslationStateCallback: "

    const-string v0, "TranslationManagerServiceImpl"

    if-ne p1, p2, :cond_0

    .line 525
    :try_start_0
    invoke-interface {p3, p4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 527
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/inputmethod/InputMethodInfo;

    .line 536
    invoke-virtual {p5}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p5

    iget-object p5, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p5, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, p5, :cond_1

    .line 546
    :try_start_1
    invoke-interface {p3, p4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 548
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V
    .locals 2

    .line 484
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 485
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p3

    .line 486
    sget-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invoking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callbacks for translation state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for app with uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "TranslationManagerServiceImpl"

    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getEnabledInputMethods()Ljava/util/List;

    move-result-object p1

    .line 496
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance p4, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p5, p2, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;ILandroid/os/Bundle;Ljava/util/List;)V

    invoke-virtual {p3, p4}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final invokeCallbacksIfNecessaryLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 9

    .line 372
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_1

    if-eqz p1, :cond_5

    .line 376
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating to translation state="

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for app with uid="

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName="

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but no active translation was found for it"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v1, "TranslationManagerServiceImpl"

    invoke-static {v1, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move v4, p1

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 p5, 0x3

    if-eq p1, p5, :cond_0

    goto :goto_1

    .line 417
    :cond_2
    iget-boolean p5, p5, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-nez p5, :cond_5

    goto :goto_0

    .line 409
    :cond_3
    iget-boolean p5, p5, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz p5, :cond_5

    goto :goto_0

    .line 384
    :cond_4
    iget-object v3, p5, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    .line 385
    invoke-virtual {p2}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v4

    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p5, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    .line 386
    invoke-virtual {v3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    .line 387
    invoke-virtual {p3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v4

    .line 386
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 389
    iget-boolean p5, p5, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz p5, :cond_0

    move v0, v1

    move v4, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v4, p1

    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p6

    .line 439
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method public final isServiceAvailableForUser(Landroid/content/ComponentName;)Z
    .locals 2

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.translation.TranslationService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 189
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x84

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 191
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$invokeCallbacks$0(ILandroid/os/Bundle;Ljava/util/List;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .locals 6

    .line 497
    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4

    .line 126
    new-instance v0, Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isTemporaryServiceSetLocked()Z

    move-result v2

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/service/translation/TranslationServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    .line 128
    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 129
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {p0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final notifyClientsTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .locals 2

    .line 609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 610
    const-string/jumbo v1, "translation_capabilities"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 611
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    new-instance p1, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onSessionCreatedLocked(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .locals 0

    .line 220
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    return-void

    .line 224
    :cond_0
    const-string p0, "TranslationManagerServiceImpl"

    const-string/jumbo p1, "onSessionCreatedLocked(): no remote service."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x0

    .line 225
    invoke-interface {p3, p0, p1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onTranslationCapabilitiesRequestLocked(IILandroid/os/ResultReceiver;)V
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V

    return-void

    .line 203
    :cond_0
    const-string p0, "TranslationManagerServiceImpl"

    const-string/jumbo p1, "onTranslationCapabilitiesRequestLocked(): no remote service."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x0

    .line 204
    invoke-virtual {p3, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onTranslationFinishedLocked(ZLandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 8

    .line 246
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, p3, v1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v7

    .line 247
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez p1, :cond_1

    .line 251
    iget-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x3

    move-object v2, p0

    .line 252
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 255
    iget-object p0, v2, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 256
    iget-object p0, v2, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    return-void
.end method

.method public registerUiTranslationStateCallbackLocked(Landroid/os/IRemoteCallback;I)V
    .locals 11

    .line 554
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 555
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New registered callback for sourceUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with currently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active translations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getEnabledInputMethods()Ljava/util/List;

    move-result-object v8

    const/4 v0, 0x0

    move v1, v0

    .line 564
    :goto_0
    iget-object v3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 565
    iget-object v3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 566
    iget v5, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    .line 567
    iget-object v10, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    .line 568
    sget-boolean v3, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Triggering callback for sourceUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for translated app with uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_1
    iget-object v3, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v4, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p0, v0, v3, v4, v10}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object v3, p0

    move-object v6, p1

    move v4, p2

    .line 577
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    .line 579
    iget-boolean p0, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz p0, :cond_2

    .line 581
    iget-object p0, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object p1, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    const/4 p2, 0x1

    invoke-virtual {v3, p2, p0, p1, v10}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 584
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    move p2, v4

    move-object p1, v6

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 591
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateActiveTranslationsLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 8

    .line 313
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 314
    const-string v1, "TranslationManagerServiceImpl"

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    :cond_0
    :goto_0
    move-object v6, p4

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_0

    .line 352
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    .line 345
    iput-boolean v2, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    .line 338
    iput-boolean p2, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    goto :goto_0

    :cond_4
    if-nez v0, :cond_0

    .line 318
    :try_start_0
    invoke-interface {p5, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move v5, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;-><init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILjava/lang/String;Lcom/android/server/translation/TranslationManagerServiceImpl-IA;)V

    invoke-virtual {p0, p5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, p4

    move-object p4, p3

    move-object p3, p2

    move-object p1, v0

    .line 320
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to call linkToDeath for translated app with uid="

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "; activity is already dead"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x3

    move-object p1, p0

    move-object p5, v6

    .line 325
    invoke-virtual/range {p1 .. p6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    return-void

    .line 358
    :goto_1
    sget-boolean p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz p0, :cond_5

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Updating to translation state="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for app with uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public updateLocked(Z)Z
    .locals 0

    .line 135
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    .line 136
    invoke-direct {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateRemoteServiceLocked()V

    return p1
.end method

.method public updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V
    .locals 11

    move-object/from16 v9, p5

    move/from16 v0, p6

    .line 272
    iget-object v3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 273
    invoke-virtual {v3, v0, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object v3

    .line 274
    const-string v10, "TranslationManagerServiceImpl"

    if-nez v3, :cond_0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown activity or it was finished to query for update translation state for token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " taskId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for state= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLastActivityTokens:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v3

    .line 284
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    .line 286
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p7

    move-object v2, v0

    invoke-interface/range {v2 .. v8}, Landroid/app/IApplicationThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update UiTranslationState fail: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v7

    .line 296
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v9

    .line 298
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacksIfNecessaryLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 300
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateActiveTranslationsLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V

    return-void
.end method
