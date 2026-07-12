.class public final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# static fields
.field public static final LOG:Z

.field public static final TAG:Ljava/lang/String; = "WiredAccessoryManager"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

.field public final mHandler:Landroid/os/Handler;

.field public mHeadsetState:I

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field public mSwitchValues:I

.field public final mUseDevInputEventForAudioJack:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseDevInputEventForAudioJack(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monSystemReady(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDevicesState(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/WiredAccessoryManager;->LOG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateBit([IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 59
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/WiredAccessoryManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 264
    new-instance v0, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 96
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 97
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 99
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 100
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111028d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 105
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-direct {p1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 106
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    return-void
.end method

.method public static updateBit([IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 607
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 609
    aget p2, p0, v0

    or-int/2addr p2, p1

    aput p2, p0, v0

    .line 610
    aget p2, p0, v2

    or-int/2addr p1, p2

    aput p1, p0, v2

    return-void

    .line 611
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "=0"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 612
    aget p2, p0, v0

    or-int/2addr p2, p1

    aput p2, p0, v0

    .line 613
    aget p2, p0, v2

    not-int p1, p1

    and-int/2addr p1, p2

    aput p1, p0, v2

    :cond_1
    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JIIZ)V

    return-void
.end method

.method public notifyWiredAccessoryChanged(JIIZ)V
    .locals 3

    .line 150
    sget-boolean v0, Lcom/android/server/WiredAccessoryManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bits="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mask="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 158
    :try_start_0
    iget p2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int p4, p4

    and-int/2addr p2, p4

    or-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 p2, p2, 0x54

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    const/4 p4, 0x4

    if-eq p2, p4, :cond_3

    const/16 p4, 0x10

    const/4 v0, 0x1

    if-eq p2, p4, :cond_2

    const/16 p4, 0x14

    if-eq p2, p4, :cond_2

    const/16 p4, 0x40

    if-eq p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/16 p3, 0x20

    goto :goto_0

    :cond_2
    move p3, v0

    goto :goto_0

    :cond_3
    const/4 p3, 0x2

    .line 186
    :cond_4
    :goto_0
    const-string p2, "h2w"

    iget p4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 p4, p4, -0x24

    or-int/2addr p3, p4

    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;IZ)V

    .line 190
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSystemReady()V
    .locals 7

    .line 110
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/16 v3, -0x100

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    const/4 v1, 0x4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v5, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x10

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x6

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x40

    :cond_2
    move v4, v0

    const/16 v5, 0x54

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    move-object v1, p0

    .line 123
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JIIZ)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    .line 131
    :goto_1
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 132
    iget-boolean p0, v1, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz p0, :cond_4

    .line 133
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v0, "Both input event and extcon are used for audio jack, please just choose one."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_4
    iget-object p0, v1, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->-$$Nest$minit(Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;)V

    return-void

    .line 138
    :cond_5
    iget-object p0, v1, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    return-void
.end method

.method public final setDeviceStateLocked(IIILjava/lang/String;)V
    .locals 4

    and-int/2addr p2, p1

    and-int/2addr p3, p1

    if-eq p2, p3, :cond_a

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    const/4 v1, 0x4

    if-ne p1, v0, :cond_1

    const p3, -0x7ffffff0

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne p1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    const/16 v2, 0x20

    if-ne p1, v2, :cond_3

    const/high16 v1, 0x20000

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    const/16 v1, 0x800

    goto :goto_1

    :cond_4
    if-ne p1, v3, :cond_5

    const/16 v1, 0x1000

    goto :goto_1

    :cond_5
    const/16 v1, 0x10

    if-ne p1, v1, :cond_9

    const/16 v1, 0x400

    .line 324
    :goto_1
    sget-boolean p1, Lcom/android/server/WiredAccessoryManager;->LOG:Z

    if-eqz p1, :cond_7

    .line 325
    sget-object p1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "headsetName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v0, :cond_6

    .line 326
    const-string v0, " connected"

    goto :goto_2

    :cond_6
    const-string v0, " disconnected"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_7
    const-string p1, ""

    if-eqz v1, :cond_8

    .line 330
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p2, p1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz p3, :cond_a

    .line 333
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p3, p2, p1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 320
    :cond_9
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setDeviceState() invalid headset type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public final setDevicesState(IILjava/lang/String;)V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/16 v2, 0x3f

    :goto_0
    if-eqz v2, :cond_1

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    .line 286
    :try_start_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    not-int v3, v1

    and-int/2addr v2, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final switchCodeToString(II)Ljava/lang/String;
    .locals 1

    .line 339
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "SW_HEADPHONE_INSERT "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1

    .line 346
    const-string p1, "SW_MICROPHONE_INSERT"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public systemReady()V
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 198
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 199
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateLocked(Ljava/lang/String;IZ)V
    .locals 7

    and-int/lit8 v0, p2, 0x3f

    and-int/lit8 v1, p2, 0x4

    and-int/lit8 v2, p2, 0x8

    and-int/lit8 v3, p2, 0x23

    .line 221
    sget-boolean v4, Lcom/android/server/WiredAccessoryManager;->LOG:Z

    if-eqz v4, :cond_0

    .line 222
    sget-object v4, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " newState="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " headsetState="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " prev headsetState="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne p1, v0, :cond_1

    .line 229
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p1, "No state change."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    const/16 p2, 0x23

    const/4 v4, 0x1

    if-ne v3, p2, :cond_2

    .line 237
    sget-object p2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "Invalid combination, unsetting h2w flag"

    invoke-static {p2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, p1

    goto :goto_0

    :cond_2
    move p2, v4

    :goto_0
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    const/16 v1, 0x8

    if-ne v2, v1, :cond_3

    .line 243
    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "Invalid combination, unsetting usb flag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move p1, v4

    :goto_1
    if-nez p2, :cond_4

    if-nez p1, :cond_4

    .line 247
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p1, "invalid transition, returning ..."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 251
    :cond_4
    const-string p1, ""

    if-eqz p3, :cond_5

    .line 252
    iget p2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    goto :goto_2

    .line 254
    :cond_5
    iget-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 255
    sget-object p2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p3, "MSG_NEW_DEVICE_STATE"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget p3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {p2, v4, v0, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 258
    iget-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    :goto_2
    iput v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return-void
.end method
