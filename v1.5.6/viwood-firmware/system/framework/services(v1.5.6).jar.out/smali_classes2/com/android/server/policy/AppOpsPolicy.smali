.class public final Lcom/android/server/policy/AppOpsPolicy;
.super Ljava/lang/Object;
.source "AppOpsPolicy.java"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final SYSPROP_HOTWORD_DETECTION_SERVICE_REQUIRED:Z


# instance fields
.field public final mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mContext:Landroid/content/Context;

.field public final mIsHotwordDetectionServiceRequired:Z

.field public final mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mLock:Ljava/lang/Object;

.field public final mPerUidLocationTags:Landroid/util/SparseArray;

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public final mToken:Landroid/os/IBinder;

.field public final mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$gxkrPEeLHT1_QPplunPoH4a1dCY(Lcom/android/server/policy/AppOpsPolicy;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->lambda$new$1(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$laOMxe-XDRkQA64xS88xc0B7in4(Lcom/android/server/policy/AppOpsPolicy;ILandroid/os/PackageTagsList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->lambda$new$0(ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleManager(Lcom/android/server/policy/AppOpsPolicy;)Landroid/app/role/RoleManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateActivityRecognizerTags(Lcom/android/server/policy/AppOpsPolicy;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/AppOpsPolicy;->updateActivityRecognizerTags(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 71
    const-class v0, Lcom/android/server/policy/AppOpsPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/AppOpsPolicy;->LOG_TAG:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "ro.hotword.detection_service_required"

    const/4 v1, 0x0

    .line 77
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/AppOpsPolicy;->SYSPROP_HOTWORD_DETECTION_SERVICE_REQUIRED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    .line 82
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/AppOpsPolicy;->mToken:Landroid/os/IBinder;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 130
    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy;->mContext:Landroid/content/Context;

    .line 131
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    .line 132
    const-class v1, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/voice/VoiceInteractionManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/android/server/policy/AppOpsPolicy;->isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mIsHotwordDetectionServiceRequired:Z

    .line 137
    const-class v1, Landroid/location/LocationManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManagerInternal;

    if-eqz v1, :cond_0

    .line 140
    new-instance v2, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    invoke-virtual {v1, v2}, Landroid/location/LocationManagerInternal;->setLocationPackageTagsListener(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;)V

    .line 164
    :cond_0
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 169
    new-instance v6, Lcom/android/server/policy/AppOpsPolicy$1;

    invoke-direct {v6, p0}, Lcom/android/server/policy/AppOpsPolicy$1;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 188
    invoke-virtual {v5}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    invoke-virtual {v0, p1, v1, v7}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/server/policy/AppOpsPolicy;->initializeActivityRecognizersTags()V

    .line 199
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 200
    const-string p1, "android.hardware.telephony"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.hardware.microphone"

    .line 201
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.software.telecom"

    .line 202
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 203
    const-class p0, Landroid/app/AppOpsManager;

    invoke-virtual {v5, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v2, 0x64

    const/4 v3, 0x1

    .line 204
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    const/16 v2, 0x65

    .line 206
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    :cond_1
    return-void
.end method

.method public static getVoiceActivationOp()I
    .locals 1

    .line 0
    const/16 v0, 0x66

    return v0
.end method

.method public static isDatasourceAttributionTag(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0

    .line 431
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PackageTagsList;

    if-eqz p0, :cond_0

    .line 432
    invoke-virtual {p0, p1, p2}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z
    .locals 1

    .line 226
    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.software.leanback"

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    sget-boolean p0, Lcom/android/server/policy/AppOpsPolicy;->SYSPROP_HOTWORD_DETECTION_SERVICE_REQUIRED:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static resolveArOp(I)I
    .locals 1

    .line 0
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    const/16 p0, 0x71

    :cond_0
    return p0
.end method

.method public static resolveLocationOp(I)I
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x6c

    return p0

    :cond_1
    const/16 p0, 0x6d

    return p0
.end method

.method public static updateAllowListedTagsForPackageLocked(ILandroid/os/PackageTagsList;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 425
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .locals 0

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p5, p0, p1, p2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public checkOperation(IILjava/lang/String;Ljava/lang/String;IZLcom/android/internal/util/function/HexFunction;)I
    .locals 1

    move v0, p1

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 238
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    move-object p0, p7

    .line 237
    invoke-interface/range {p0 .. p6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final clearActivityRecognitionTags()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 385
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpTags(Ljava/io/PrintWriter;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const-string v0, "  AppOps policy location tags:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/AppOpsPolicy;->writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V

    .line 325
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    const-string v0, "  AppOps policy activity recognition tags:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/AppOpsPolicy;->writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V

    .line 330
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/HexConsumer;)V
    .locals 1

    .line 304
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 305
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object p0, p7

    move-object p2, v0

    .line 304
    invoke-interface/range {p0 .. p6}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .locals 3

    .line 312
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 313
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 314
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 312
    invoke-interface {p5, p1, p0, p3, p2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final initializeActivityRecognizersTags()V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    const-string v1, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 371
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 374
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 375
    invoke-virtual {p0, v3}, Lcom/android/server/policy/AppOpsPolicy;->updateActivityRecognizerTags(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/AppOpsPolicy;->clearActivityRecognitionTags()V

    return-void
.end method

.method public final synthetic lambda$new$0(ILandroid/os/PackageTagsList;)V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-virtual {p2}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object p2, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 149
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 150
    new-instance p2, Landroid/os/PackageTagsList$Builder;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    .line 151
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 153
    iget-object v3, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 154
    iget-object v3, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PackageTagsList;

    invoke-virtual {p2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {p2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2, p0}, Lcom/android/server/policy/AppOpsPolicy;->updateAllowListedTagsForPackageLocked(ILandroid/os/PackageTagsList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 160
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$new$1(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 190
    const-string p2, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/server/policy/AppOpsPolicy;->initializeActivityRecognizersTags()V

    :cond_0
    return-void
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZILcom/android/internal/util/function/NonaFunction;)Landroid/app/SyncNotedAppOp;
    .locals 1

    .line 254
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 256
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p8

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    move-object p0, p10

    move-object p1, v0

    .line 254
    invoke-interface/range {p0 .. p9}, Lcom/android/internal/util/function/NonaFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .locals 3

    .line 265
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 266
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 267
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 268
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    move-object p6, p4

    move-object p4, p1

    move-object p1, p7

    move-object p7, p5

    move-object p5, p6

    move-object p6, p3

    move-object p3, p2

    move-object p2, p0

    .line 265
    invoke-interface/range {p1 .. p7}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0
.end method

.method public final resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveRecordAudioOp(II)I

    move-result p1

    .line 346
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveSandboxedServiceOp(II)I

    move-result p1

    if-nez p4, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-static {p1}, Lcom/android/server/policy/AppOpsPolicy;->resolveLocationOp(I)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 352
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, p0}, Lcom/android/server/policy/AppOpsPolicy;->isDatasourceAttributionTag(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 357
    :cond_1
    invoke-static {p1}, Lcom/android/server/policy/AppOpsPolicy;->resolveArOp(I)I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 359
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, p0}, Lcom/android/server/policy/AppOpsPolicy;->isDatasourceAttributionTag(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return p1
.end method

.method public final resolveRecordAudioOp(II)I
    .locals 1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    .line 454
    iget-boolean v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mIsHotwordDetectionServiceRequired:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 460
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 462
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result p0

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x1b

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method public final resolveSandboxedServiceOp(II)I
    .locals 2

    .line 471
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1a

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 476
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 478
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result p0

    if-ne p2, p0, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x87

    return p0

    :cond_2
    const/16 p0, 0x86

    return p0

    :cond_3
    :goto_0
    return p1
.end method

.method public final resolveUid(II)I
    .locals 1

    .line 498
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    .line 502
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 503
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 505
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 506
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    move-result p0

    return p0

    :cond_1
    return p2
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIILcom/android/internal/util/function/DodecFunction;)Landroid/app/SyncNotedAppOp;
    .locals 1

    .line 279
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 280
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    .line 281
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p8

    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p10

    .line 282
    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p12

    move-object p0, p13

    move-object p2, v0

    .line 279
    invoke-interface/range {p0 .. p12}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .locals 3

    .line 293
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 294
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 295
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 296
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    .line 297
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    move-object p11, p2

    move-object p2, p1

    move-object p1, p12

    move-object p12, p10

    move-object p10, p8

    move-object p8, p5

    move-object p5, p11

    move-object p11, p9

    move-object p9, p7

    move-object p7, p6

    move-object p6, p4

    move-object p4, p3

    move-object p3, p0

    .line 293
    invoke-interface/range {p1 .. p12}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0
.end method

.method public final updateActivityRecognizerTags(Ljava/lang/String;)V
    .locals 4

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTIVITY_RECOGNIZER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object p1, p0, Lcom/android/server/policy/AppOpsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const v1, 0xc8084

    const/4 v2, 0x0

    .line 398
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 399
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    goto :goto_0

    .line 408
    :cond_1
    const-string v1, "android:activity_recognition_allow_listed_tags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 410
    new-instance v1, Landroid/os/PackageTagsList$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v3, ";"

    .line 412
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 410
    invoke-virtual {v1, v2, v0}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 415
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 414
    invoke-static {p1, v0, p0}, Lcom/android/server/policy/AppOpsPolicy;->updateAllowListedTagsForPackageLocked(ILandroid/os/PackageTagsList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 418
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void

    .line 400
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/server/policy/AppOpsPolicy;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Service recognizer doesn\'t handle android.intent.action.ACTIVITY_RECOGNIZER, ignoring!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V
    .locals 2

    .line 336
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 337
    const-string v1, "    #"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PackageTagsList;

    invoke-virtual {p1, p2}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method
