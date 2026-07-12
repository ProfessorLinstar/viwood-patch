.class public Lcom/android/server/location/contexthub/ContextHubClientBroker;
.super Landroid/hardware/location/IContextHubClient$Stub;
.source "ContextHubClientBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/AppOpsManager$OnOpChangedListener;
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

.field public mAttributionTag:Ljava/lang/String;

.field public final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContext:Landroid/content/Context;

.field public mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mForceDeniedNapps:Ljava/util/Set;

.field public final mHostEndPointId:S

.field public final mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsWakelockUsable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mMessageChannelNanoappIdMap:Ljava/util/Map;

.field public final mNappToAuthTimerMap:Ljava/util/Map;

.field public final mPackage:Ljava/lang/String;

.field public final mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

.field public final mPid:I

.field public final mQueryPermsCallback:Landroid/hardware/location/IContextHubTransactionCallback;

.field public mRegistered:Z

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final mUid:I

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$2s0Uo-bKcYW50DntaGwWtoAYALM(JLandroid/hardware/location/IContextHubClientCallback;)V
    .locals 0

    .line 703
    invoke-interface {p2, p0, p1}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppUnloaded(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$5LN1r8kQkqBv9B8howzlawnr-GI(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubClientCallback;)V
    .locals 0

    .line 668
    invoke-interface {p1, p0}, Landroid/hardware/location/IContextHubClientCallback;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5NIXhCVA4VhSgwflJ-dV8OT4jsk(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onNanoAppAborted$9(JI)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$681F4A4Rw6HIBZ-W1cnA_UimUkA(JLandroid/hardware/location/IContextHubClientCallback;)V
    .locals 0

    .line 692
    invoke-interface {p2, p0, p1}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppLoaded(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$7GaKk9ODLn9h9dIT1DAjkZFa4iM(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$releaseWakeLock$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$8sNz7ZvFVHUHWU9J0d7z49uPt4Q(Lcom/android/server/location/contexthub/ContextHubClientBroker;J)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onNanoAppLoaded$4(J)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CpfiRa0Zz_8mVJfdif37pr_NZ6A(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$sendAuthStateCallback$11(JI)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ILnN8vk5-WpxaAwvuV43zlxBSUs(Lcom/android/server/location/contexthub/ContextHubClientBroker;J)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onNanoAppUnloaded$6(J)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QjaJyLv-rQuyhtluWSnqhPk-eIU(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$acquireWakeLock$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zu1QHvg1AenGCS8KjTx02VlsIxE(Lcom/android/server/location/contexthub/ContextHubClientBroker;Landroid/hardware/location/NanoAppMessage;Ljava/lang/Byte;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$sendMessageToClient$2(Landroid/hardware/location/NanoAppMessage;Ljava/lang/Byte;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_514VloU4I_f3jcd_merkncFFPg(JILandroid/hardware/location/IContextHubClientCallback;)V
    .locals 0

    .line 724
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppAborted(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$ahBzeyv7fFYSmK4rFMm3QoYECH8(JILandroid/hardware/location/IContextHubClientCallback;)V
    .locals 0

    .line 891
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onClientAuthorizationChanged(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$bCClfpweAsRrfPAGme_k2SsgRNM(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onHubReset$7()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ePtUO3zyFt4xzp4VerSXlIAHOtk(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$releaseWakeLockOnExit$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$sgL02r5loG_cZwA7hYdldQh6nwE(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/hardware/location/NanoAppMessage;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$sendMessageToClient$1(JLandroid/hardware/location/NanoAppMessage;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPermQueryIssued(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessageChannelNanoappIdMap(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateNanoAppAuthState(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLjava/util/List;Z)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;Z)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/app/PendingIntent;JLjava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .locals 13

    .line 428
    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 417
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V
    .locals 3

    .line 343
    invoke-direct {p0}, Landroid/hardware/location/IContextHubClient$Stub;-><init>()V

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    .line 190
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsWakelockUsable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 233
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 239
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 246
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 253
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    .line 258
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    .line 264
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mQueryPermsCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 344
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    .line 345
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 346
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 347
    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 348
    iput-short p5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    .line 349
    iput-object p6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

    if-nez p9, :cond_0

    .line 351
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    goto :goto_0

    .line 353
    :cond_0
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {p2, p9, p10, p11}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;-><init>(Landroid/app/PendingIntent;J)V

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 356
    :goto_0
    const-string p2, "ContextHubClientBroker"

    if-nez p12, :cond_2

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 358
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    .line 357
    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 359
    array-length p4, p3

    if-lez p4, :cond_1

    .line 360
    aget-object p12, p3, v2

    .line 362
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createClient: Provided package name null. Using first package name "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    iput-object p12, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    .line 367
    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    .line 368
    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 370
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPid:I

    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    .line 372
    const-class p4, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/AppOpsManager;

    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 374
    const-class p4, Landroid/os/PowerManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 375
    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 376
    new-instance p2, Landroid/os/WorkSource;

    invoke-direct {p2, p3, p12}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 377
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->startMonitoringOpChanges()V

    .line 380
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendHostEndpointConnectedEvent()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)V
    .locals 13

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v12, p9

    .line 393
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final acquireWakeLock()V
    .locals 1

    .line 1190
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public attachDeathRecipient()V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

    if-eqz v0, :cond_0

    .line 756
    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_0
    return-void
.end method

.method public final authStateToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 1087
    const-string p0, "UNKNOWN"

    return-object p0

    .line 1085
    :cond_0
    const-string p0, "GRANTED"

    return-object p0

    .line 1083
    :cond_1
    const-string p0, "DENIED_GRACE_PERIOD"

    return-object p0

    .line 1081
    :cond_2
    const-string p0, "DENIED"

    return-object p0
.end method

.method public binderDied()V
    .locals 0

    .line 565
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onClientExit()V

    return-void
.end method

.method public callbackFinished()V
    .locals 0

    .line 1166
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->releaseWakeLock()V

    return-void
.end method

.method public final checkNanoappPermsAsync()V
    .locals 4

    .line 790
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 792
    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mQueryPermsCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    .line 791
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v0

    .line 793
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->clear()V

    .line 551
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onClientExit()V

    return-void

    :catchall_0
    move-exception v0

    .line 551
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final createIntent(I)Landroid/content/Intent;
    .locals 2

    .line 930
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 931
    const-string v1, "android.hardware.location.extra.EVENT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    const-string p1, "android.hardware.location.extra.CONTEXT_HUB_INFO"

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public final createIntent(IJ)Landroid/content/Intent;
    .locals 0

    .line 945
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object p0

    .line 946
    const-string p1, "android.hardware.location.extra.NANOAPP_ID"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public final doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I
    .locals 11

    .line 472
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 477
    invoke-virtual {p1, v1}, Landroid/hardware/location/NanoAppMessage;->setIsReliable(Z)V

    .line 478
    invoke-virtual {p1, v1}, Landroid/hardware/location/NanoAppMessage;->setMessageSequenceNumber(I)V

    .line 481
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->isRegistered()Z

    move-result v0

    const-string v2, "ContextHubClientBroker"

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 482
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 483
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 482
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0xacf3007

    .line 485
    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p0

    if-nez p0, :cond_0

    return v3

    .line 486
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Client doesn\'t have valid permissions to send message to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ne v0, v5, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    .line 501
    :cond_2
    const-string v4, ")"

    if-nez p2, :cond_3

    .line 503
    :try_start_0
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-short v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 504
    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v5

    .line 503
    invoke-virtual {p2, v0, v5, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, p1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException in sendMessageToNanoApp (target hub ID = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 508
    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, p1

    move p2, v3

    goto :goto_0

    .line 514
    :cond_3
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-short v6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 516
    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v7

    .line 517
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v8, p1

    move-object v9, p2

    .line 515
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createMessageTransaction(SILandroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 519
    :try_start_1
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p2, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move p2, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 521
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to add a transaction in sendMessageToNanoApp (target hub ID = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 522
    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 521
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x7

    .line 527
    :goto_0
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 528
    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p0

    if-nez p2, :cond_4

    move v1, v3

    .line 527
    :cond_4
    invoke-virtual {p1, p0, v8, v1}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->logMessageToNanoapp(ILandroid/hardware/location/NanoAppMessage;Z)V

    return p2

    :cond_5
    move-object v8, p1

    .line 532
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p1

    invoke-virtual {v8}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    .line 533
    iget-short p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    .line 535
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 533
    const-string p1, "Failed to send message (connection closed): hostEndpointId= %1$d payload %2$s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/PendingIntent$OnFinished;)B
    .locals 8

    .line 1030
    :try_start_0
    const-string v6, "android.permission.ACCESS_CONTEXT_HUB"

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->acquireWakeLock()V

    .line 1032
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    .line 1042
    :catch_0
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1044
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PendingIntent has been canceled, unregistering from client (host endpoint ID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextHubClientBroker"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->close()V

    const/4 p0, 0x2

    return p0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10500000001L

    .line 1111
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getHostEndPointId()S

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000003L

    .line 1113
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x10800000005L

    const/4 v2, 0x1

    .line 1115
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1116
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v0

    const-wide v2, 0x10300000004L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000007L

    .line 1119
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->isPendingIntentCancelled()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000008L

    .line 1120
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public getAttachedContextHubId()I
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p0

    return p0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public getHostEndPointId()S
    .locals 0

    .line 621
    iget-short p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    return p0
.end method

.method public getId()I
    .locals 0

    .line 557
    iget-short p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 591
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 592
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleAuthStateTimerExpiry(J)V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    monitor-enter v0

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 775
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 780
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x1

    .line 778
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;Z)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 775
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public hasPendingIntent(Landroid/app/PendingIntent;J)Z
    .locals 3

    .line 740
    monitor-enter p0

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v1

    .line 743
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    cmp-long p0, v1, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    .line 743
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B
    .locals 3

    monitor-enter p0

    .line 906
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 908
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->acquireWakeLock()V

    .line 909
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;->accept(Landroid/hardware/location/IContextHubClientCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 911
    :try_start_2
    const-string v0, "ContextHubClientBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while invoking client callback (host endpoint ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 917
    monitor-exit p0

    const/4 p0, 0x2

    return p0

    .line 920
    :cond_0
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public isPendingIntentCancelled()Z
    .locals 0

    .line 764
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized isRegistered()Z
    .locals 1

    monitor-enter p0

    .line 1059
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isWakelockUsable()Z
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsWakelockUsable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 585
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$acquireWakeLock$12()V
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsWakelockUsable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$onHubReset$7()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x6

    .line 711
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onNanoAppAborted$9(JI)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x4

    .line 727
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.hardware.location.extra.NANOAPP_ABORT_CODE"

    .line 728
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onNanoAppLoaded$4(J)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 694
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onNanoAppUnloaded$6(J)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 705
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$releaseWakeLock$13()V
    .locals 2

    .line 1206
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1210
    const-string v0, "ContextHubClientBroker"

    const-string v1, "Releasing the wakelock fails - "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final synthetic lambda$releaseWakeLockOnExit$14()V
    .locals 2

    .line 1224
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsWakelockUsable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1225
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1229
    const-string v0, "ContextHubClientBroker"

    const-string v1, "Releasing the wakelock for all acquisitions fails - "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final synthetic lambda$sendAuthStateCallback$11(JI)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x7

    .line 894
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE"

    .line 895
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$sendMessageToClient$1(JLandroid/hardware/location/NanoAppMessage;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x5

    .line 674
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.hardware.location.extra.MESSAGE"

    .line 675
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$sendMessageToClient$2(Landroid/hardware/location/NanoAppMessage;Ljava/lang/Byte;)V
    .locals 0

    .line 677
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageDeliveryStatusToContextHub(IB)V

    return-void
.end method

.method public final declared-synchronized onClientExit()V
    .locals 3

    monitor-enter p0

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1065
    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 1066
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1069
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ContextHubClientManager;->unregisterClient(S)V

    .line 1071
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    .line 1072
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1073
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-short v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onHostEndpointDisconnected(S)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->releaseWakeLockOnExit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onHubReset()V
    .locals 1

    .line 710
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    .line 711
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;)B

    .line 714
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendHostEndpointConnectedEvent()V

    return-void
.end method

.method public onNanoAppAborted(JI)V
    .locals 1

    .line 724
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda12;-><init>(JI)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    .line 726
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)V

    .line 729
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)B

    return-void
.end method

.method public onNanoAppLoaded(J)V
    .locals 1

    .line 690
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    .line 692
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    .line 693
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;J)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)B

    return-void
.end method

.method public onNanoAppUnloaded(J)V
    .locals 1

    .line 703
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda14;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    .line 704
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;J)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)B

    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 570
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 571
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    :cond_0
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->releaseWakeLock()V

    return-void
.end method

.method public final releaseWakeLock()V
    .locals 1

    .line 1204
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final releaseWakeLockOnExit()V
    .locals 1

    .line 1222
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reliableMessageCallbackFinished(IB)V
    .locals 0

    .line 1175
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageDeliveryStatusToContextHub(IB)V

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->callbackFinished()V

    return-void
.end method

.method public final sendAuthStateCallback(JI)V
    .locals 1

    .line 891
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;-><init>(JI)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    .line 893
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)V

    .line 896
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)B

    return-void
.end method

.method public sendHostEndpointConnectedEvent()V
    .locals 3

    .line 1092
    new-instance v0, Landroid/hardware/contexthub/HostEndpointInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/HostEndpointInfo;-><init>()V

    .line 1093
    iget-short v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    int-to-char v1, v1

    iput-char v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->hostEndpointId:C

    .line 1094
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->packageName:Ljava/lang/String;

    .line 1095
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->attributionTag:Ljava/lang/String;

    .line 1096
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1098
    :goto_0
    iput v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->type:I

    .line 1099
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V

    return-void
.end method

.method public final sendMessageDeliveryStatusToContextHub(IB)V
    .locals 1

    .line 1240
    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    .line 1241
    iput p1, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    .line 1242
    iput-byte p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    .line 1243
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 1245
    const-string p0, "ContextHubClientBroker"

    const-string p1, "Failed to send the reliable message status"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public sendMessageToClient(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 639
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    const/4 v4, 0x0

    move-object/from16 v5, p2

    .line 642
    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;Z)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    .line 647
    const-string v7, ". "

    const-string v8, "Dropping message from "

    const-string v9, "ContextHubClientBroker"

    if-ne v4, v5, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in grace period and napp msg has permissions"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    if-eqz v4, :cond_4

    .line 655
    iget-object v10, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v11, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    iget-object v12, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NanoappMessageDelivery "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v14, p3

    .line 656
    invoke-static/range {v10 .. v15}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->notePermissions(Landroid/app/AppOpsManager;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 668
    :cond_1
    new-instance v4, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/location/NanoAppMessage;)V

    invoke-virtual {v0, v4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    move-result v4

    if-eqz v4, :cond_2

    return v4

    .line 673
    :cond_2
    new-instance v4, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/hardware/location/NanoAppMessage;)V

    .line 676
    new-instance v5, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Landroid/hardware/location/NanoAppMessage;)V

    .line 679
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 678
    :goto_0
    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;JLjava/util/function/Consumer;)B

    move-result v0

    return v0

    .line 663
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t have permission"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .locals 1

    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result p0

    return p0
.end method

.method public final declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;)B
    .locals 1

    monitor-enter p0

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/PendingIntent$OnFinished;)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 962
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;J)B
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 974
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;JLjava/util/function/Consumer;)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;JLjava/util/function/Consumer;)B
    .locals 2

    monitor-enter p0

    .line 989
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 990
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-nez p2, :cond_0

    .line 992
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;

    invoke-direct {p2, p0, p4, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Ljava/util/function/Consumer;Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    .line 1011
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/PendingIntent$OnFinished;)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1014
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendReliableMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result p0

    return p0
.end method

.method public setAttributionTag(Ljava/lang/String;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    return-void
.end method

.method public final startMonitoringOpChanges()V
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1127
    const-string v1, "endpointID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getHostEndPointId()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    const-string v1, "contextHub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1130
    const-string v1, "attributionTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1133
    const-string v1, "intentCreatorPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    const-string/jumbo v1, "nanoAppId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 1135
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 1136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1138
    :cond_1
    const-string/jumbo v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1141
    const-string/jumbo v1, "messageChannelNanoappSet: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 1143
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1144
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1146
    const-string v3, "Nanoapp 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Auth state: "

    .line 1148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->authStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1151
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1154
    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1157
    :try_start_0
    const-string/jumbo v2, "wakelock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1158
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1158
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateNanoAppAuthState(JLjava/util/List;Z)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    .line 799
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I

    move-result p0

    return p0
.end method

.method public updateNanoAppAuthState(JLjava/util/List;ZZ)I
    .locals 8

    .line 822
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    monitor-enter v0

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPid:I

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    .line 826
    invoke-static {v1, v2, v3, p3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->hasPermissions(Landroid/content/Context;IILjava/util/Collection;)Z

    move-result v1

    .line 828
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 829
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 828
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v4, :cond_0

    .line 835
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p5, :cond_5

    .line 844
    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    if-ne v2, v5, :cond_4

    goto :goto_2

    :cond_2
    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    if-eq v2, v3, :cond_4

    if-eqz v1, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_2

    .line 846
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eq v4, v5, :cond_6

    .line 860
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    if-eqz v1, :cond_7

    .line 862
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->cancel()V

    goto :goto_3

    :cond_6
    if-ne v2, v3, :cond_7

    .line 865
    new-instance v1, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 866
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/os/Looper;)V

    .line 867
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->start()V

    :cond_7
    :goto_3
    if-eq v2, v4, :cond_8

    .line 872
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_b

    if-eqz v4, :cond_9

    if-ne v4, v5, :cond_a

    .line 878
    :cond_9
    const-string v0, "ContextHubClientBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNanoAppAuthState auth error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 878
    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_a
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendAuthStateCallback(JI)V

    :cond_b
    return v4

    .line 874
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
