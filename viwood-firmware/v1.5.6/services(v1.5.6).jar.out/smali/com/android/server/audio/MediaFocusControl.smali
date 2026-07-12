.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# static fields
.field public static final DEBUG:Z

.field public static final USAGES_TO_MUTE_IN_RING_OR_CALL:[I

.field public static final mAudioFocusLock:Ljava/lang/Object;

.field public static final mEventLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public mExtFocusChangeCounter:J

.field public final mExtFocusChangeLock:Ljava/lang/Object;

.field public final mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

.field public mFocusFollowers:Ljava/util/ArrayList;

.field public mFocusFreezeExemptUids:[I

.field public mFocusFreezerDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field public mFocusFreezerForTest:Landroid/os/IBinder;

.field public mFocusHandler:Landroid/os/Handler;

.field public mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

.field public mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field public final mFocusStack:Ljava/util/Stack;

.field public mFocusThread:Landroid/os/HandlerThread;

.field public mMultiAudioFocusEnabled:Z

.field public mMultiAudioFocusList:Ljava/util/ArrayList;

.field public mNotifyFocusOwnerOnDuck:Z

.field public mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field public mRingOrCallActive:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusPolicy(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMultiAudioFocusEnabled(Lcom/android/server/audio/MediaFocusControl;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRingOrCallActive(Lcom/android/server/audio/MediaFocusControl;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpostForgetUidLater(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/FocusRequester;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->postForgetUidLater(Lcom/android/server/audio/FocusRequester;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseFocusFreeze(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->releaseFocusFreeze()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveFocusEntryForExtPolicyOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusEntryForExtPolicyOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveFocusStackEntryOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetUSAGES_TO_MUTE_IN_RING_OR_CALL()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 68
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 223
    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x32

    const-string v3, "focus commands as seen by MediaFocusControl"

    invoke-direct {v0, v1, v3}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    const/16 v0, 0xe

    .line 1060
    filled-new-array {v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V
    .locals 4

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    .line 436
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 708
    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 716
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 754
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 760
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 766
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 1367
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    .line 1375
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 1384
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezeExemptUids:[I

    .line 111
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 112
    const-string v2, "appops"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 113
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getUserId()I

    move-result p2

    .line 115
    const-string/jumbo v2, "multi_audio_focus_enabled"

    invoke-static {p1, v2, v0, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->initFocusThreading()V

    return-void
.end method

.method public static getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .locals 0

    .line 1070
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/16 p1, 0x10

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x1f4

    return p0

    :pswitch_1
    const/16 p0, 0x3e8

    return p0

    :cond_0
    :pswitch_2
    const/16 p0, 0x2bc

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .locals 11

    .line 1316
    new-instance p1, Landroid/media/MediaMetrics$Item;

    const-string v0, "audio.focus"

    invoke-direct {p1, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 1317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 1318
    invoke-virtual {p1, v0, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 1319
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v1, "abandonAudioFocus"

    .line 1320
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    .line 1321
    invoke-virtual {p1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1324
    sget-object p1, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abandonAudioFocus() from uid/pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " clientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callingPack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "MediaFocusControl"

    .line 1328
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 1324
    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/4 p1, 0x1

    .line 1331
    :try_start_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v0, :cond_0

    .line 1334
    new-instance v2, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v10}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 1337
    invoke-virtual {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1338
    monitor-exit v1

    return p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object v5, p2

    .line 1342
    :cond_1
    iget-boolean p2, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const-string p3, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 1343
    invoke-virtual {p3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_2

    move p3, p1

    goto :goto_0

    :cond_2
    move p3, p4

    :goto_0
    and-int/2addr p2, p3

    if-eqz p2, :cond_3

    .line 1344
    iput-boolean p4, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 1346
    :cond_3
    invoke-virtual {p0, v5, p1, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    if-eqz p2, :cond_4

    .line 1349
    invoke-virtual {p0, p4}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 1351
    :cond_4
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1356
    const-string p2, "MediaFocusControl"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :goto_2
    return p1
.end method

.method public addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 722
    :cond_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 725
    invoke-interface {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 731
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 733
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 736
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final canReassignAudioFocus()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I
    .locals 4

    .line 951
    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 952
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchFocusChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to afi client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 952
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRequesterLocked(Ljava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    move-result-object p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    .line 960
    const-string p0, "MediaFocusControl"

    const-string p1, "> failed: no such focus requester known"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 962
    :cond_2
    :goto_1
    monitor-exit v1

    return v3

    .line 964
    :cond_3
    const-string p1, "audiomanager"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(ILjava/lang/String;)I

    move-result p0

    monitor-exit v1

    return p0

    .line 965
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dispatchFocusChangeWithFade(Landroid/media/AudioFocusInfo;ILjava/util/List;)I
    .locals 6

    .line 970
    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 971
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchFocusChangeWithFade "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/media/AudioManager;->audioFocusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to afi client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " other active afis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 971
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 977
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 979
    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRequesterLocked(Ljava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    .line 982
    const-string p0, "MediaFocusControl"

    const-string p1, "> failed: no such focus requester known"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 984
    :cond_1
    :goto_0
    monitor-exit v1

    return v2

    .line 988
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 989
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 991
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioFocusInfo;

    invoke-virtual {v5}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v5

    .line 990
    invoke-virtual {p0, v5, v2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRequesterLocked(Ljava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 995
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 999
    :cond_4
    invoke-virtual {v3, p2, v0}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChangeWithFadeLocked(ILjava/util/List;)I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 1002
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    :cond_5
    monitor-exit v1

    return p3

    .line 1006
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/audio/PlayerFocusEnforcer;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 124
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpMultiAudioFocus(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1032
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 1033
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1034
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1036
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 1037
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 3

    .line 445
    const-string v0, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 451
    :cond_0
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v1, :cond_1

    .line 453
    const-string v1, "No external focus policy\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External focus policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", focus owners:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V

    .line 458
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify on duck:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " In ring or call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 458
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dumpMultiAudioFocus(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multi Audio Focus enabled :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1531
    const-string v0, "Multi Audio Focus List:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1532
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 1534
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1536
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public enterAudioFocusFreezeForTest(Landroid/os/IBinder;[I)Z
    .locals 3

    .line 1417
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterAudioFocusFreezeForTest UIDs exempt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1420
    const-string p0, "MediaFocusControl"

    const-string p1, "Error enterAudioFocusFreezeForTest: focus already frozen"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1425
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v1, p0}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 1432
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1433
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    .line 1434
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezeExemptUids:[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1441
    :try_start_2
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p1, 0x0

    .line 1437
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    .line 1438
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezeExemptUids:[I

    .line 1439
    monitor-exit v0

    return v2

    .line 1441
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public exitAudioFocusFreezeForTest(Landroid/os/IBinder;)Z
    .locals 4

    .line 1446
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eq v1, p1, :cond_1

    .line 1448
    const-string p1, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error exitAudioFocusFreezeForTest: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    if-nez p0, :cond_0

    .line 1450
    const-string p0, "call to exit while not frozen"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1451
    :cond_0
    const-string p0, "call to exit not coming from freeze owner"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1448
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    monitor-exit v0

    return v2

    .line 1454
    :cond_1
    iget-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerDeathHandler:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1455
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->releaseFocusFreeze()V

    .line 1456
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0, p1, p2}, Lcom/android/server/audio/PlayerFocusEnforcer;->fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    move-result p0

    return p0
.end method

.method public forgetUid(I)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->forgetUid(I)V

    return-void
.end method

.method public getCurrentAudioFocus()I
    .locals 2

    .line 1042
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 1044
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1046
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result p0

    monitor-exit v0

    return p0

    .line 1048
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getExclusiveFocusOwnerUid()I
    .locals 4

    .line 332
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 334
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    .line 337
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    .line 338
    monitor-exit v0

    return v2

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result p0

    monitor-exit v0

    return p0

    .line 341
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J
    .locals 0

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 200
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getFadeOutDurationMillis(Landroid/media/AudioAttributes;)J
    .locals 0

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->getFadeOutDurationMillis(Landroid/media/AudioAttributes;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .locals 0

    .line 1525
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getFadeOutDurationMillis(Landroid/media/AudioAttributes;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getFocusFadeOutDurationForTest()J
    .locals 2

    .line 135
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->getFadeOutDurationMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFocusRequesterLocked(Ljava/lang/String;Z)Lcom/android/server/audio/FocusRequester;
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const-string v1, "MediaFocusControl"

    if-nez v0, :cond_1

    .line 1012
    sget-boolean p0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1013
    const-string p0, "> failed: no focus policy"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 1020
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    goto :goto_0

    .line 1022
    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    :goto_0
    if-nez p0, :cond_3

    .line 1025
    sget-boolean p1, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 1026
    const-string p1, "> failed: no such focus requester known"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p0
.end method

.method public getFocusStack()Ljava/util/List;
    .locals 3

    .line 318
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 321
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 323
    :cond_0
    monitor-exit v0

    return-object v1

    .line 324
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFocusUnmuteDelayAfterFadeOutForTest()J
    .locals 2

    .line 145
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 146
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMultiAudioFocusEnabled()Z
    .locals 0

    .line 1518
    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    return p0
.end method

.method public hasAudioFocusUsers()Z
    .locals 1

    .line 248
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initFocusThreading()V
    .locals 2

    .line 1574
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaFocusControl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusThread:Landroid/os/HandlerThread;

    .line 1575
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1576
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$4;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/MediaFocusControl$4;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    return-void
.end method

.method public final isFocusFrozenForTest()Z
    .locals 0

    .line 1390
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFocusFrozenForTestForUid(I)Z
    .locals 4

    .line 1402
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->isFocusFrozenForTest()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1406
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezeExemptUids:[I

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .locals 0

    .line 607
    const-string p0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, p0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result p0

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

.method public maybeDiscardAudioFocusOwner()Z
    .locals 5

    .line 262
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 265
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->isAlwaysVisibleUser()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 266
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    const/4 p0, -0x1

    const/4 v3, 0x0

    .line 267
    invoke-virtual {v1, p0, v3, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 269
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 270
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 272
    :cond_0
    monitor-exit v0

    return v4

    .line 275
    :cond_1
    monitor-exit v0

    return v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public mustNotifyFocusOwnerOnDuck()Z
    .locals 0

    .line 714
    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return p0
.end method

.method public mutePlayersForCall([I)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    return-void
.end method

.method public noFocusForSuspendedApp(Ljava/lang/String;I)V
    .locals 6

    .line 229
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 234
    invoke-virtual {v3, p2}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v4, "app suspension"

    const/4 v5, -0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(ILjava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 240
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v1, p2

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 242
    invoke-virtual {p0, v3, p2, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 244
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    if-eqz v0, :cond_1

    .line 937
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 941
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v0, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t call notifyAudioFocusAbandon() on IAudioPolicyCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 944
    invoke-interface {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 943
    const-string v0, "MediaFocusControl"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    .locals 10

    .line 865
    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 866
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyExtFocusPolicyFocusRequest client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dispatcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 870
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    invoke-virtual {p1, v2, v3}, Landroid/media/AudioFocusInfo;->setGen(J)V

    .line 871
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 875
    invoke-virtual {v0, p2}, Lcom/android/server/audio/FocusRequester;->hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 876
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_0

    :cond_1
    move-object v8, p0

    move-object v4, p1

    goto :goto_1

    .line 883
    :cond_2
    :goto_0
    new-instance v7, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v7, p0, p3}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 885
    :try_start_1
    invoke-interface {p3, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 891
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/FocusRequester;

    sget-object v9, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    move-object v8, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/utils/EventLogger;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    :goto_1
    :try_start_2
    iget-object p0, v8, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 p1, 0x1

    invoke-interface {p0, v4, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 900
    const-string p1, "MediaFocusControl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t call notifyAudioFocusRequest() on IAudioPolicyCallback "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v8, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 901
    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 900
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 871
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 1

    .line 802
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 820
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 6

    .line 827
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 830
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    const-string v4, "MediaFocusControl"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 6

    .line 842
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 845
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 847
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 847
    const-string v4, "MediaFocusControl"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyTopOfAudioFocusStack()V
    .locals 6

    .line 375
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 381
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 383
    invoke-virtual {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 384
    invoke-virtual {v4, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public postDelayedLossAfterFade(Lcom/android/server/audio/FocusRequester;J)V
    .locals 2

    .line 1543
    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postDelayedLossAfterFade loser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 1547
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1546
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final postForgetUidLater(Lcom/android/server/audio/FocusRequester;)V
    .locals 3

    .line 1551
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 1553
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;-><init>(I)V

    const/4 v2, 0x2

    .line 1552
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1554
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J

    move-result-wide p0

    .line 1551
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V
    .locals 7

    .line 398
    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    const-string v1, "MediaFocusControl"

    if-eqz v0, :cond_0

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "propagateFocusLossFromGain_syncAf gain:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 404
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 405
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 406
    sget-boolean v4, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "propagateFocusLossFromGain_syncAf checking client:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_2
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 413
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 417
    const-string/jumbo v0, "propagateFocusLossFromGain_syncAf empty stack"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 421
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :cond_5
    :goto_1
    if-ge v4, v3, :cond_6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    .line 423
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 425
    invoke-virtual {v5}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 430
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x1

    .line 431
    invoke-virtual {p0, p2, v1, p3}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final pushBelowLockedFocusOwnersAndPropagate(Lcom/android/server/audio/FocusRequester;)I
    .locals 7

    .line 624
    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    const-string v1, "MediaFocusControl"

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushBelowLockedFocusOwnersAndPropagate client="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 628
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    .line 629
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 633
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    .line 635
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v0

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 639
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 643
    :cond_3
    sget-boolean v2, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "> lastLockedFocusOwnerIndex="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_4
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1, v0}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 650
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sub-int/2addr v0, v3

    :goto_1
    if-ltz v0, :cond_6

    .line 652
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 653
    invoke-virtual {v5, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    .line 654
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v6

    .line 653
    invoke-virtual {v5, v6, p1, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 656
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v5}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 659
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 660
    sget-boolean v2, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "> removing focus client "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_7
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_8
    const/4 p0, 0x2

    return p0
.end method

.method public final releaseFocusFreeze()V
    .locals 2

    .line 1461
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1462
    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 1463
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezeExemptUids:[I

    .line 1464
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    .line 1465
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeFocusEntryForExtPolicyOnDeath(Landroid/os/IBinder;)V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 575
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 576
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 578
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 579
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 581
    sget-object p1, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    const-string v2, "died"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 582
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 583
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 743
    :cond_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 745
    invoke-interface {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 746
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 750
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 6

    .line 473
    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    const-string v1, "MediaFocusControl"

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFocusStackEntry client:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 482
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->maybeRelease()V

    if-eqz p3, :cond_1

    .line 484
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    :cond_1
    if-eqz p2, :cond_5

    .line 488
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    goto :goto_1

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 496
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 497
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 498
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    if-eqz p3, :cond_4

    .line 503
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    .line 506
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->maybeRelease()V

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 512
    invoke-virtual {v2}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    const/4 p3, 0x0

    .line 513
    invoke-virtual {p0, v2, p3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 516
    :cond_6
    iget-boolean p3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    .line 517
    iget-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 518
    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 519
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 520
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 521
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 522
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    .line 528
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    :cond_9
    return-void
.end method

.method public final removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    .locals 7

    .line 539
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 540
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 543
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 544
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 546
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaFocusControl"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    const-string v6, " died"

    invoke-direct {v5, v3, v6}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 549
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 551
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 553
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 559
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    :cond_3
    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZIZ)I
    .locals 18

    move-object/from16 v10, p0

    move/from16 v5, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p5

    move-object/from16 v4, p6

    move/from16 v7, p7

    move/from16 v13, p9

    .line 1122
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.focus"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 1123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 1124
    invoke-virtual {v0, v1, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 1125
    invoke-virtual {v0, v1, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "requestAudioFocus"

    .line 1126
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    .line 1127
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FOCUS_CHANGE_HINT:Landroid/media/MediaMetrics$Key;

    .line 1129
    invoke-static {v5}, Landroid/media/AudioManager;->audioFocusToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1128
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    const/16 v0, 0x8

    if-ne v7, v0, :cond_0

    move/from16 v2, p10

    goto :goto_0

    .line 1137
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move v2, v1

    .line 1138
    :goto_0
    sget-object v12, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestAudioFocus() from uid/pid "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " AA="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " clientId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " callingPack="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " req="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " flags=0x"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " sdk="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "MediaFocusControl"

    .line 1146
    invoke-virtual {v1, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 1138
    invoke-virtual {v12, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1148
    invoke-interface {v9}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    const/4 v14, 0x0

    if-nez v1, :cond_1

    .line 1149
    const-string v0, "MediaFocusControl"

    const-string v1, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    .line 1153
    :cond_1
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1155
    :try_start_0
    invoke-virtual {v10}, Lcom/android/server/audio/MediaFocusControl;->isFocusFrozenForTest()Z

    move-result v1

    if-eqz v1, :cond_4

    and-int/lit8 v1, v7, 0x8

    if-ne v1, v0, :cond_2

    move/from16 v0, p10

    goto :goto_1

    .line 1161
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1163
    :goto_1
    invoke-virtual {v10, v0}, Lcom/android/server/audio/MediaFocusControl;->isFocusFrozenForTestForUid(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1164
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAudioFocus: focus frozen for test for uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    monitor-exit v15

    return v14

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 1168
    :cond_3
    const-string v1, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestAudioFocus: focus frozen for test but uid:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is exempt"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_4
    iget-object v0, v10, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/16 v11, 0x64

    if-le v0, v11, :cond_5

    .line 1173
    const-string v0, "MediaFocusControl"

    const-string v1, "Max AudioFocus stack size reached, failing requestAudioFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    monitor-exit v15

    return v14

    .line 1177
    :cond_5
    iget-boolean v0, v10, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 1178
    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_2

    :cond_6
    move v3, v14

    :goto_2
    and-int v16, v0, v3

    if-eqz v16, :cond_7

    .line 1179
    iput-boolean v1, v10, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 1182
    :cond_7
    iget-object v0, v10, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v0, :cond_8

    .line 1184
    new-instance v0, Landroid/media/AudioFocusInfo;

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    move-object v6, v3

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    .line 1193
    :goto_3
    invoke-virtual {v10}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_a

    and-int/lit8 v1, v7, 0x1

    if-nez v1, :cond_9

    .line 1195
    monitor-exit v15

    return v14

    :cond_9
    const/16 v17, 0x1

    goto :goto_4

    :cond_a
    move/from16 v17, v14

    .line 1205
    :goto_4
    iget-object v1, v10, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_c

    move-object/from16 v4, p4

    .line 1206
    invoke-virtual {v10, v0, v4, v9}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1209
    monitor-exit v15

    return v11

    .line 1212
    :cond_b
    monitor-exit v15

    return v14

    :cond_c
    move-object/from16 v4, p4

    .line 1219
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v0, v10, v9}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    :try_start_1
    invoke-interface {v9, v0, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1229
    :try_start_2
    iget-object v1, v10, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v10, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, v6}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1232
    iget-object v1, v10, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1233
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v3

    if-ne v3, v5, :cond_d

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v3

    if-ne v3, v7, :cond_d

    .line 1236
    invoke-interface {v9, v0, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1237
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v10, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1239
    monitor-exit v15

    return v3

    :cond_d
    const/4 v3, 0x1

    if-nez v17, :cond_f

    .line 1244
    iget-object v8, v10, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1246
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_5

    :cond_e
    const/4 v3, 0x1

    .line 1251
    :cond_f
    :goto_5
    invoke-virtual {v10, v6, v14, v14}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    move-object v7, v0

    .line 1253
    new-instance v0, Lcom/android/server/audio/FocusRequester;

    move-object/from16 p11, v9

    move v9, v2

    move v2, v5

    move-object/from16 v5, p11

    move-object/from16 v1, p1

    move-object/from16 v8, p6

    move/from16 v11, p8

    move/from16 p11, v14

    move v14, v3

    move/from16 v3, p7

    invoke-direct/range {v0 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;ILcom/android/server/utils/EventLogger;)V

    move v5, v2

    .line 1256
    iget-boolean v1, v10, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v1, :cond_13

    if-ne v5, v14, :cond_13

    if-eqz v16, :cond_10

    .line 1259
    iget-object v1, v10, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1260
    iget-object v1, v10, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, p11

    :goto_6
    if-ge v3, v2, :cond_13

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 1261
    invoke-virtual {v4, v5, v0, v13}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    goto :goto_6

    .line 1266
    :cond_10
    iget-object v1, v10, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1267
    iget-object v1, v10, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, p11

    :cond_11
    if-ge v3, v2, :cond_12

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 1268
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-ne v4, v5, :cond_11

    goto :goto_7

    .line 1275
    :cond_12
    iget-object v1, v10, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    :goto_7
    invoke-virtual {v0, v14}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    .line 1278
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    invoke-virtual {v10, v0, v14}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1280
    monitor-exit v15

    return v14

    :cond_13
    if-eqz v17, :cond_15

    .line 1287
    invoke-virtual {v10, v0}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwnersAndPropagate(Lcom/android/server/audio/FocusRequester;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 1289
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    invoke-virtual {v10, v0, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1291
    :cond_14
    monitor-exit v15

    return v1

    .line 1294
    :cond_15
    invoke-virtual {v10, v5, v0, v13}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 1297
    iget-object v1, v10, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    invoke-virtual {v0, v14}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    .line 1300
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    invoke-virtual {v10, v0, v14}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    if-eqz v16, :cond_16

    .line 1304
    invoke-virtual {v10, v14}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 1306
    :cond_16
    monitor-exit v15

    return v14

    :catch_0
    move-object v5, v9

    move/from16 p11, v14

    .line 1225
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    monitor-exit v15

    return p11

    .line 1306
    :goto_8
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 162
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 163
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;-><init>(I)V

    const/4 p1, 0x2

    .line 162
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final runAudioCheckerForRingOrCallAsync(Z)V
    .locals 1

    .line 1475
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$3;-><init>(Lcom/android/server/audio/MediaFocusControl;Z)V

    .line 1494
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public sendFocusLoss(Landroid/media/AudioFocusInfo;)Z
    .locals 7

    .line 353
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 356
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p1, -0x1

    .line 357
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    move-object v4, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 364
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0, v4}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->release()V

    const/4 p0, 0x1

    .line 366
    monitor-exit v0

    return p0

    .line 368
    :cond_2
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;)V
    .locals 4

    .line 286
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 291
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/AudioFocusInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 293
    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 295
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 297
    iget-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 299
    iget-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 300
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->sendFocusLoss(Landroid/media/AudioFocusInfo;)Z

    .line 307
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDuckingInExtPolicyAvailable(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 711
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return-void
.end method

.method public setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 773
    :cond_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_1

    .line 775
    :try_start_0
    iget-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 777
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 778
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V
    .locals 5

    .line 907
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 908
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGen()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 909
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 911
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 913
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/MediaFocusControl;->getFocusRequesterLocked(Ljava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 916
    invoke-virtual {p0, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusResultFromExtPolicy(I)V

    .line 920
    invoke-virtual {p0, p2}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 923
    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 911
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public shouldEnforceFade()Z
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0}, Lcom/android/server/audio/PlayerFocusEnforcer;->shouldEnforceFade()Z

    move-result p0

    return p0
.end method

.method public unmutePlayersForCall()V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3

    .line 1469
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1470
    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1471
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 785
    :cond_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_1

    .line 789
    iget-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 791
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 794
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateMultiAudioFocus(Z)V
    .locals 6

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMultiAudioFocus( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 1500
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1502
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 1501
    const-string/jumbo v2, "multi_audio_focus_enabled"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1503
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 1505
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    :cond_0
    if-nez p1, :cond_2

    .line 1508
    iget-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1509
    iget-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    .line 1510
    invoke-virtual {v5, v2, v1, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    goto :goto_0

    .line 1512
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method
