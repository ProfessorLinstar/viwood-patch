.class public Lcom/android/server/companion/virtual/GenericWindowPolicyController;
.super Landroid/window/DisplayWindowPolicyController;
.source "GenericWindowPolicyController.java"


# static fields
.field public static final BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field public mActivityLaunchAllowedByDefault:Z

.field public final mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

.field public final mActivityPolicyExemptions:Landroid/util/ArraySet;

.field public final mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

.field public final mAllowedUsers:Landroid/util/ArraySet;

.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mCrossTaskNavigationAllowedByDefault:Z

.field public final mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

.field public mCurrentWindowFlags:I

.field public final mCustomHomeComponent:Landroid/content/ComponentName;

.field public final mDisplayCategories:Ljava/util/Set;

.field public mDisplayId:I

.field public final mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mGenericWindowPolicyControllerLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public mIsMirrorDisplay:Z

.field public final mRunningAppsChangedListeners:Landroid/util/ArraySet;

.field public final mRunningUids:Landroid/util/ArraySet;

.field public mShowTasksInHostDeviceRecents:Z


# direct methods
.method public static synthetic $r8$lambda$02U1odZ6o6YS3y0icH3ZN59VRfo(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$keepActivityOnWindowFlagsChanged$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q4-qR8hIE_MCMQoXPRM74QPKBFo(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/ComponentName;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onTopActivityChanged$2(ILandroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bbXS2KwiPC7_e4kKJzTVkNuGKnU(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/pm/ActivityInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$keepActivityOnWindowFlagsChanged$0(ILandroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tzd6uyr53U3EVZgEiuhju3ASygM(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onRunningAppsChanged$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tzhyKGqOen2FKRsQ76KIvqDswU8(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 1

    .line 435
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;

    .line 436
    invoke-interface {v0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;->onRunningAppsChanged(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/app/BlockedAppStreamingActivity;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(IILandroid/content/AttributionSource;Landroid/util/ArraySet;ZLjava/util/Set;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;Ljava/util/Set;ZLandroid/content/ComponentName;)V
    .locals 3

    .line 186
    invoke-direct {p0}, Landroid/window/DisplayWindowPolicyController;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    .line 127
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 130
    iput v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    .line 132
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    .line 187
    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 188
    iput-object p4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    .line 189
    iput-boolean p5, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    .line 190
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    .line 191
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    .line 192
    iput-boolean p8, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationAllowedByDefault:Z

    .line 193
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3, p9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 194
    invoke-virtual/range {p0 .. p2}, Landroid/window/DisplayWindowPolicyController;->setInterestedWindowFlags(II)V

    .line 195
    iput-object p10, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    .line 196
    iput-object p11, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    .line 197
    iput-boolean p12, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    move-object/from16 p1, p13

    .line 198
    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCustomHomeComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static isAllowedByPolicy(ZLjava/util/Set;Landroid/content/ComponentName;)Z
    .locals 0

    .line 500
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final activityMatchesDisplayCategory(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 466
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v1

    .line 468
    :cond_1
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    .line 469
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public addActivityPolicyExemption(Landroid/content/ComponentName;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 258
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addActivityPolicyExemption(Ljava/lang/String;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZZLjava/util/function/Supplier;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {v1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->shouldInterceptIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 299
    const-string p1, "Virtual device intercepting intent"

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v0

    .line 302
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p6, :cond_1

    const/4 p7, 0x0

    .line 307
    :cond_1
    invoke-virtual {p0, p1, p7}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->notifyActivityBlocked(Landroid/content/pm/ActivityInfo;Ljava/util/function/Supplier;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z
    .locals 5

    .line 318
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetIsMirrorDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 319
    const-string p1, "Mirror virtual displays cannot contain activities."

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    .line 322
    :cond_0
    invoke-virtual {p0, p2}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Virtual device doesn\'t support windowing mode "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    .line 327
    :cond_1
    iget p2, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v0, 0x10000

    and-int/2addr p2, v0

    if-nez p2, :cond_2

    .line 328
    const-string p1, "Activity requires android:canDisplayOnRemoteDevices=true"

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    .line 332
    :cond_2
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 333
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 334
    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    const-string v2, "Activity launch disallowed from user "

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    .line 338
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 339
    sget-object v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_4

    return v4

    .line 343
    :cond_4
    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    .line 347
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->activityMatchesDisplayCategory(Landroid/content/pm/ActivityInfo;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The activity\'s required display category \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found on virtual display with the following categories: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    .line 354
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->isAllowedByPolicy(Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity launch disallowed by policy: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    :cond_7
    if-eqz p4, :cond_8

    if-eqz p3, :cond_8

    .line 359
    iget-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationAllowedByDefault:Z

    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 360
    invoke-static {p1, p2, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->isAllowedByPolicy(ZLjava/util/Set;Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cross task navigation disallowed by policy: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    :cond_8
    return v4
.end method

.method public canShowTasksInHostDeviceRecents()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsUid(I)Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 461
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCustomHomeComponent()Landroid/content/ComponentName;
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCustomHomeComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getRunningAppsChangedListenersSizeForTesting()I
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 507
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isAllowedByPolicy(Landroid/content/ComponentName;)Z
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    .line 489
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 490
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    .line 493
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z
    .locals 4

    .line 379
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    and-int/lit16 v1, p2, 0x2000

    if-eqz v1, :cond_0

    .line 384
    iget v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/pm/ActivityInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez v1, :cond_1

    .line 388
    iget v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    :cond_1
    iput p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    .line 394
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 396
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    const-wide/32 v2, 0xc05e3df

    .line 394
    invoke-static {v2, v3, v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_3

    and-int/lit16 p2, p2, 0x2000

    if-nez p2, :cond_2

    const/high16 p2, 0x80000

    and-int/2addr p2, p3

    if-eqz p2, :cond_3

    :cond_2
    const/4 p2, 0x0

    .line 400
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->notifyActivityBlocked(Landroid/content/pm/ActivityInfo;Ljava/util/function/Supplier;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$keepActivityOnWindowFlagsChanged$0(ILandroid/content/pm/ActivityInfo;)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onSecureWindowShown(ILandroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public final synthetic lambda$keepActivityOnWindowFlagsChanged$1(I)V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onSecureWindowHidden(I)V

    return-void
.end method

.method public final synthetic lambda$onRunningAppsChanged$3(I)V
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onDisplayEmpty(I)V

    return-void
.end method

.method public final synthetic lambda$onTopActivityChanged$2(ILandroid/content/ComponentName;I)V
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V

    return-void
.end method

.method public final logActivityLaunchBlocked(Ljava/lang/String;)V
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Virtual device activity launch disallowed on display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", reason: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 371
    const-string p1, "GenericWindowPolicyController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final notifyActivityBlocked(Landroid/content/pm/ActivityInfo;Ljava/util/function/Supplier;)V
    .locals 2

    .line 474
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result v0

    .line 477
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetIsMirrorDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 479
    :cond_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/IntentSender;

    .line 478
    :goto_0
    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onActivityLaunchBlocked(ILandroid/content/pm/ActivityInfo;Landroid/content/IntentSender;)V

    .line 481
    :cond_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 483
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    .line 481
    const-string/jumbo p1, "virtual_devices.value_activity_blocked_count"

    invoke-static {p1, p0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 425
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result v1

    .line 427
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 431
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 432
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 434
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTopActivityChanged(Landroid/content/ComponentName;II)V
    .locals 2

    .line 410
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public registerRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 283
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeActivityPolicyExemption(Landroid/content/ComponentName;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 264
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeActivityPolicyExemption(Ljava/lang/String;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setActivityLaunchDefaultAllowed(Z)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    if-eq v1, p1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 249
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 251
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    .line 252
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDisplayId(IZ)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    .line 206
    iput-boolean p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    .line 207
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public setShowInHostDeviceRecents(Z)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    .line 242
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 290
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final waitAndGetDisplayId()I
    .locals 6

    .line 212
    const-string v0, "GenericWindowPolicyController"

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    const-string p0, "Timed out while waiting for GWPC displayId to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 220
    :cond_0
    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    return p0

    .line 217
    :catch_0
    const-string p0, "Interrupted while waiting for GWPC displayId to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final waitAndGetIsMirrorDisplay()Z
    .locals 6

    .line 225
    const-string v0, "GenericWindowPolicyController"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    const-string p0, "Timed out while waiting for GWPC isMirrorDisplay to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 233
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    return p0

    .line 230
    :catch_0
    const-string p0, "Interrupted while waiting for GWPC isMirrorDisplay to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
