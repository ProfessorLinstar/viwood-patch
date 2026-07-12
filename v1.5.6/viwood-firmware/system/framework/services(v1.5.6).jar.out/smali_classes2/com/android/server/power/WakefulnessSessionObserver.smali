.class public Lcom/android/server/power/WakefulnessSessionObserver;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"


# static fields
.field public static final HANDLER_TOKEN:Ljava/lang/Object;


# instance fields
.field public final mClock:Lcom/android/server/power/WakefulnessSessionObserver$Clock;

.field public mContext:Landroid/content/Context;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mOverrideTimeoutMs:I

.field public mPhysicalDisplayPortIdForDefaultDisplay:I

.field public final mPowerGroups:Landroid/util/SparseArray;

.field public mScreenOffTimeoutMs:I

.field public mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/power/WakefulnessSessionObserver;)Lcom/android/server/power/WakefulnessSessionObserver$Clock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mClock:Lcom/android/server/power/WakefulnessSessionObserver$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/WakefulnessSessionObserver;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/WakefulnessSessionObserver;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/WakefulnessSessionObserver;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPhysicalDisplayPortId(Lcom/android/server/power/WakefulnessSessionObserver;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->getPhysicalDisplayPortId(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/WakefulnessSessionObserver;->getScreenOffTimeout()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/WakefulnessSessionObserver;->HANDLER_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/WakefulnessSessionObserver$Injector;)V
    .locals 4

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 162
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 165
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 174
    new-instance p2, Lcom/android/server/power/WakefulnessSessionObserver$Injector;

    invoke-direct {p2}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;-><init>()V

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {p2}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;->getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 180
    invoke-virtual {p2}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;->getWakefulnessSessionFrameworkStatsLogger()Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    .line 181
    invoke-virtual {p2}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;->getClock()Lcom/android/server/power/WakefulnessSessionObserver$Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mClock:Lcom/android/server/power/WakefulnessSessionObserver$Clock;

    .line 182
    invoke-virtual {p2}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    .line 183
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->updateSettingScreenOffTimeout(Landroid/content/Context;)V

    .line 186
    :try_start_0
    new-instance p1, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;Lcom/android/server/power/WakefulnessSessionObserver-IA;)V

    .line 187
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    const-string v1, "WakefulnessSessionObserver"

    invoke-interface {p2, p1, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :catch_0
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0129

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 195
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "screen_off_timeout"

    .line 197
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$1;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/WakefulnessSessionObserver$1;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;Landroid/os/Handler;)V

    const/4 v2, -0x1

    .line 196
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/server/power/WakefulnessSessionObserver;->getPhysicalDisplayPortId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    .line 208
    invoke-virtual {p0}, Lcom/android/server/power/WakefulnessSessionObserver;->registerDisplayListener()V

    .line 209
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance p2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {p2, p0, v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 330
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 331
    const-string v0, "Wakefulness Session Observer:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "override timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 335
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    .line 336
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {v2, v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getPhysicalDisplayPortId(I)I
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 357
    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p0

    .line 358
    iget-object p0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    check-cast p0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p0

    return p0
.end method

.method public final getScreenOffTimeout()I
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 364
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyUserActivity(JII)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v1, p0, p3}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->notifyUserActivity(JI)V

    return-void
.end method

.method public onScreenPolicyUpdate(JII)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v1, p0, p3}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->onScreenPolicyUpdate(JI)V

    return-void
.end method

.method public onWakeLockAcquired(I)V
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->acquireTimeoutOverrideWakeLock()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWakeLockReleased(II)V
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {v0, p2}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->releaseTimeoutOverrideWakeLock(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWakefulnessChangeStarted(IIIJ)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 284
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->onWakefulnessChangeStarted(IIJ)V

    return-void
.end method

.method public final registerDisplayListener()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 217
    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/WakefulnessSessionObserver$2;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;)V

    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    :cond_0
    return-void
.end method

.method public removePowerGroup(I)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method public updateSettingScreenOffTimeout(Landroid/content/Context;)V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screen_off_timeout"

    const/16 v2, 0x3a98

    const/4 v3, -0x2

    .line 345
    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    .line 350
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
