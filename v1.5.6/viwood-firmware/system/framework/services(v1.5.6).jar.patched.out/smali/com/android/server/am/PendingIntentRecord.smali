.class public final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# instance fields
.field public cancelReason:I

.field public canceled:Z

.field public final controller:Lcom/android/server/am/PendingIntentController;

.field public final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field public lastTag:Ljava/lang/String;

.field public lastTagPrefix:Ljava/lang/String;

.field public mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

.field public mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

.field public mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

.field public mAllowlistDuration:Landroid/util/ArrayMap;

.field public mCancelCallbacks:Landroid/os/RemoteCallbackList;

.field public final ref:Ljava/lang/ref/WeakReference;

.field public sent:Z

.field public stringName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public static synthetic $r8$lambda$n7a96RwVvewtpifhQ2aQt1qSbXo(Lcom/android/server/am/PendingIntentRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 1

    .line 286
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 118
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 127
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 128
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 287
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    .line 288
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 289
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 290
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static cancelReasonToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    .line 800
    const-string p0, "UNKNOWN"

    return-object p0

    .line 799
    :cond_0
    const-string p0, "ONE_SHOT_SENT"

    return-object p0

    .line 798
    :cond_1
    const-string p0, "SUPERSEDED"

    return-object p0

    .line 797
    :cond_2
    const-string p0, "HOSTING_ACTIVITY_DESTROYED"

    return-object p0

    .line 796
    :cond_3
    const-string p0, "OWNER_CANCELED"

    return-object p0

    .line 795
    :cond_4
    const-string p0, "OWNER_FORCE_STOPPED"

    return-object p0

    .line 794
    :cond_5
    const-string p0, "OWNER_UNINSTALLED"

    return-object p0

    .line 793
    :cond_6
    const-string p0, "USER_STOPPED"

    return-object p0

    .line 792
    :cond_7
    const-string p0, "NULL"

    return-object p0
.end method

.method public static getBackgroundStartPrivilegesAllowedByCaller(Landroid/app/ActivityOptions;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;
    .locals 0

    if-nez p0, :cond_0

    .line 394
    invoke-static {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 396
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesAllowedByCaller(Landroid/os/Bundle;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundStartPrivilegesAllowedByCaller(Landroid/os/Bundle;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;
    .locals 2

    if-nez p0, :cond_0

    .line 403
    invoke-static {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 405
    :cond_0
    const-string v0, "android.pendingIntent.backgroundActivityAllowed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    .line 416
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 408
    :cond_1
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 410
    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;
    .locals 2

    if-eqz p0, :cond_3

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 v0, 0xe94e127

    if-eqz p1, :cond_1

    .line 439
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 437
    invoke-static {v0, v1, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    goto :goto_0

    .line 439
    :cond_1
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    .line 442
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 444
    :cond_2
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 435
    :cond_3
    :goto_1
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method


# virtual methods
.method public clearAllowBgActivityStarts(Landroid/os/IBinder;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 332
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz p0, :cond_1

    .line 333
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    if-eqz p0, :cond_1

    .line 334
    iget p1, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 336
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final completeFinalize()V
    .locals 3

    .line 780
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 782
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_0

    .line 783
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v1, p0}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 786
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

.method public final createSafeActivityOptionsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    .line 360
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 805
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 806
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 807
    const-string v0, " featureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 808
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 811
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 812
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 815
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 816
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 819
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_6

    .line 823
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 824
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 825
    const-string v0, " cancelReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    invoke-static {v0}, Lcom/android/server/am/PendingIntentRecord;->cancelReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_9

    .line 828
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 829
    const-string v0, "allowlistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v1

    .line 830
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    if-eqz v0, :cond_7

    .line 832
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 835
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 838
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 840
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 841
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 847
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_a

    .line 848
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 850
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 770
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 775
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 776
    throw v0
.end method

.method public getAllowlistDurationLocked(Landroid/os/IBinder;)Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    return-object p0
.end method

.method public getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 749
    invoke-static {p1}, Landroid/app/BackgroundStartPrivileges;->allowBackgroundActivityStarts(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 750
    :cond_0
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public final getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;
    .locals 0

    .line 756
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 757
    invoke-static {p2}, Landroid/app/BackgroundStartPrivileges;->allowBackgroundActivityStarts(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 761
    :cond_0
    iget p1, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    if-eq p1, p4, :cond_1

    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 762
    invoke-static {p3, p4, p0}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesAllowedByCaller(Landroid/os/Bundle;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 764
    :cond_1
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 345
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v13, p7

    .line 366
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    return-void
.end method

.method public sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 30

    move-object/from16 v12, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p13

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 470
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setDefusable(Z)V

    :cond_0
    if-eqz v2, :cond_1

    .line 473
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 480
    :cond_1
    iget-object v3, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 481
    :try_start_0
    iget-boolean v6, v12, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    const/4 v14, 0x4

    const/16 v15, -0x60

    const/4 v7, 0x2

    if-eqz v6, :cond_3

    .line 482
    iget v0, v12, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    if-ne v0, v14, :cond_2

    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 483
    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 485
    const-string v0, "app.value_force_stop_cancelled_pi_sent_from_top_per_caller"

    invoke-static {v0, v5}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 488
    const-string v0, "app.value_force_stop_cancelled_pi_sent_from_top_per_owner"

    iget v1, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1b

    .line 492
    :cond_2
    :goto_0
    monitor-exit v3

    return v15

    .line 495
    :cond_3
    iput-boolean v13, v12, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 496
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v6, v8

    const/16 v8, 0x40

    if-eqz v6, :cond_4

    .line 497
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v6, v12, v13, v8}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;ZI)V

    .line 500
    :cond_4
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v6, :cond_5

    new-instance v6, Landroid/content/Intent;

    iget-object v9, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 502
    :goto_1
    iget-object v9, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v10, v9, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v11, 0x4000000

    and-int/2addr v11, v10

    if-eqz v11, :cond_6

    .line 516
    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    :goto_2
    move-object/from16 v19, v9

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_8

    .line 505
    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v9

    and-int/2addr v9, v7

    if-nez v9, :cond_7

    .line 507
    iget-object v9, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object/from16 v9, p4

    goto :goto_3

    .line 510
    :cond_8
    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    :goto_3
    move/from16 v10, p11

    and-int/lit16 v10, v10, -0xc4

    and-int v11, p12, v10

    .line 514
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v16

    not-int v10, v10

    and-int v10, v16, v10

    or-int/2addr v10, v11

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 521
    :goto_4
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_b

    .line 523
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v11

    if-eqz v11, :cond_a

    .line 525
    const-string v11, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resetting option setPendingIntentCreatorBackgroundActivityStartMode("

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") to SYSTEM_DEFINED from the options provided by the pending intent sender ("

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v14, v14, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ") because this option is meant for the pending intent creator"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 525
    invoke-static {v11, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v14, 0x131cf49a

    .line 534
    invoke-static {v14, v15, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v11

    if-nez v11, :cond_9

    .line 540
    invoke-virtual {v9, v10}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    goto :goto_5

    .line 536
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pendingIntentCreatorBackgroundActivityStartMode must not be set when sending a PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_a
    :goto_5
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 547
    :cond_b
    iget-object v11, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v11, v11, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    if-nez v11, :cond_c

    .line 549
    new-instance v11, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v11, v9, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    :goto_6
    move-object v14, v11

    goto :goto_7

    .line 551
    :cond_c
    invoke-virtual {v11, v9, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;II)V

    goto :goto_6

    .line 554
    :goto_7
    iget-object v9, v12, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v9, :cond_d

    .line 555
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    .line 558
    :goto_8
    iget-object v15, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v11, v15, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v11, v7, :cond_f

    iget-object v11, v15, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v11, :cond_f

    array-length v15, v11

    if-le v15, v13, :cond_f

    .line 562
    array-length v15, v11

    new-array v7, v15, [Landroid/content/Intent;

    .line 563
    array-length v8, v11

    move/from16 v20, v13

    new-array v13, v8, [Ljava/lang/String;

    move/from16 v21, v4

    .line 564
    array-length v4, v11

    invoke-static {v11, v10, v7, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    iget-object v4, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 566
    array-length v11, v4

    invoke-static {v4, v10, v13, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    add-int/lit8 v15, v15, -0x1

    .line 569
    aput-object v6, v7, v15

    add-int/lit8 v8, v8, -0x1

    .line 570
    aput-object v19, v13, v8

    move-object v15, v13

    move-object v13, v7

    goto :goto_9

    :cond_f
    move/from16 v21, v4

    move/from16 v20, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 573
    :goto_9
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    iget-object v3, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    move/from16 v4, v20

    if-ne v3, v4, :cond_10

    .line 580
    iget-object v3, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v2, v5}, Landroid/app/ActivityManagerInternal;->enforceBroadcastOptionsPermissions(Landroid/os/Bundle;I)V

    .line 583
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    const/4 v3, 0x5

    if-eqz v9, :cond_15

    .line 588
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 589
    const-string/jumbo v7, "setPendingIntentAllowlistDuration,reason:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v7, v9, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    if-nez v7, :cond_11

    const-string v7, ""

    goto :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_1a

    :cond_11
    :goto_a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string v7, ",pendingintent:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {v4, v5}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 593
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 595
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 596
    :cond_12
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 597
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_b

    .line 598
    :cond_13
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 599
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_14
    :goto_b
    iget-object v7, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move-object v8, v6

    iget v6, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move v11, v3

    move-object v3, v7

    move-object/from16 v18, v8

    iget-wide v7, v9, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    iget v10, v9, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    iget v9, v9, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 602
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 p4, v10

    move v10, v9

    move/from16 v9, p4

    move-object/from16 p4, v13

    const/16 v28, 0x0

    move v13, v11

    move-object v11, v4

    move/from16 v4, v21

    .line 601
    invoke-virtual/range {v3 .. v11}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V

    goto :goto_c

    :cond_15
    move-object/from16 v18, v6

    move/from16 v28, v10

    move-object/from16 p4, v13

    move/from16 v4, v21

    move v13, v3

    .line 603
    iget-object v3, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v3, v13, :cond_16

    if-eqz v2, :cond_16

    .line 607
    new-instance v3, Landroid/app/BroadcastOptions;

    invoke-direct {v3, v2}, Landroid/app/BroadcastOptions;-><init>(Landroid/os/Bundle;)V

    .line 608
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_16

    .line 609
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move-object v7, v3

    move-object v3, v6

    iget v6, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move-object v9, v7

    .line 610
    invoke-virtual {v9}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v7

    move-object v10, v9

    .line 611
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v9

    move-object v11, v10

    .line 612
    invoke-virtual {v11}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v10

    .line 613
    invoke-virtual {v11}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReason()Ljava/lang/String;

    move-result-object v11

    .line 609
    invoke-virtual/range {v3 .. v11}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V

    :cond_16
    :goto_c
    if-eqz p6, :cond_17

    const/16 v29, 0x1

    goto :goto_d

    :cond_17
    move/from16 v29, v28

    :goto_d
    if-eqz p6, :cond_18

    if-nez p1, :cond_18

    .line 620
    const-string v3, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requested resultTo without an IApplicationThread!"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    :cond_18
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_19

    .line 626
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v0

    :cond_19
    move/from16 v23, v0

    .line 632
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1f

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1c

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1a

    if-eq v3, v13, :cond_1a

    :goto_e
    move-object/from16 v8, v18

    const/16 v1, -0x60

    goto/16 :goto_17

    .line 690
    :cond_1a
    :try_start_2
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 691
    invoke-virtual {v12, v0, v1, v2, v5}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;

    move-result-object v24

    .line 694
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v3, v13, :cond_1b

    const/16 v20, 0x1

    goto :goto_f

    :cond_1b
    move/from16 v20, v28

    :goto_f
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    move-object/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v22, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v24}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_10

    :catch_1
    move-object/from16 v8, v18

    const/16 v0, -0x60

    const/16 v1, -0x60

    goto/16 :goto_19

    .line 699
    :goto_10
    :try_start_3
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startService intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 662
    :cond_1c
    iget-object v1, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    const/4 v4, -0x1

    move/from16 p12, p2

    move/from16 p11, v0

    move-object/from16 p7, v1

    move-object/from16 p9, v2

    move-object/from16 p10, v3

    move/from16 p8, v4

    move-object/from16 p13, v18

    invoke-virtual/range {p7 .. p13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_e

    :cond_1d
    move-object/from16 v9, v19

    move/from16 v19, v23

    .line 639
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_1e

    array-length v2, v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_1e

    .line 640
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move/from16 v21, v4

    iget-object v4, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move v6, v5

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 645
    invoke-virtual {v12, v1}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v13

    const/4 v11, 0x0

    move-object/from16 v8, p8

    move-object v0, v2

    move v1, v3

    move v3, v6

    move-object v9, v14

    move-object v7, v15

    move/from16 v10, v19

    move/from16 v2, v21

    move-object/from16 v6, p4

    .line 640
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    move-object v3, v12

    const/16 v25, -0x60

    :goto_11
    move v15, v0

    goto :goto_12

    :catch_2
    move-exception v0

    move-object v3, v12

    const/16 v25, -0x60

    goto :goto_13

    .line 648
    :cond_1e
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const-string v17, "PendingIntentRecord"

    .line 654
    invoke-virtual {v12, v1}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v20
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v8, v18

    const/16 v18, 0x0

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v15, v19

    const/16 v25, -0x60

    move-object/from16 v19, v12

    move/from16 v12, p10

    .line 648
    :try_start_5
    invoke-virtual/range {v2 .. v20}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v18, v8

    move-object/from16 v3, v19

    goto :goto_11

    :goto_12
    move v0, v15

    move-object/from16 v8, v18

    move/from16 v1, v25

    goto/16 :goto_19

    :catch_3
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v3, v19

    .line 658
    :goto_13
    :try_start_6
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v8, v18

    move/from16 v1, v25

    goto :goto_17

    :cond_1f
    move-object v3, v12

    move-object/from16 v9, v19

    move/from16 v19, v23

    const/16 v25, -0x60

    .line 667
    :try_start_7
    iget-object v0, v3, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 668
    invoke-virtual {v3, v0, v1, v2, v5}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;

    move-result-object v20

    .line 671
    invoke-virtual {v3, v2}, Lcom/android/server/am/PendingIntentRecord;->createSafeActivityOptionsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 674
    iget-object v0, v3, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    move v8, v6

    move v6, v5

    iget v5, v3, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p6, :cond_20

    move/from16 v17, v8

    :goto_14
    move-object/from16 v8, v18

    goto :goto_15

    :cond_20
    move/from16 v17, v28

    goto :goto_14

    :goto_15
    const/16 v18, 0x0

    const/16 v21, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p1

    move/from16 v12, p2

    move-object/from16 v11, p6

    move-object/from16 v15, p7

    move-object/from16 v16, v2

    move-object v3, v7

    move-object v2, v0

    move v7, v4

    move-object v4, v1

    move/from16 v1, v25

    :try_start_8
    invoke-virtual/range {v2 .. v21}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;[I)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v0, :cond_21

    move/from16 v10, v28

    goto :goto_16

    :cond_21
    move/from16 v10, v29

    :goto_16
    move/from16 v29, v10

    :goto_17
    move/from16 v0, v28

    goto :goto_19

    :catch_4
    move-exception v0

    goto :goto_18

    :catch_5
    move-exception v0

    move-object/from16 v8, v18

    move/from16 v1, v25

    .line 684
    :goto_18
    :try_start_9
    const-string v2, "ActivityManager"

    const-string v3, "Unable to send startActivity intent"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_17

    :goto_19
    if-eqz v29, :cond_22

    if-eq v0, v1, :cond_22

    .line 708
    :try_start_a
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p6

    move/from16 v16, v1

    invoke-interface/range {v9 .. v16}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 714
    :catch_6
    :cond_22
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_1a
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    throw v0

    .line 573
    :goto_1b
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public sendWithResult(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v13, p8

    .line 380
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public setAllowBgActivityStarts(Landroid/os/IBinder;I)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_3

    .line 323
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setAllowlistDurationLocked(Landroid/os/IBinder;JIILjava/lang/String;)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;-><init>(JIILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 301
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz p2, :cond_2

    .line 302
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-gtz p1, :cond_2

    .line 304
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 307
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 857
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 860
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 861
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 863
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 864
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    .line 866
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 867
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 870
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    .line 872
    const-string v1, " (allowlist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 873
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-eqz v1, :cond_2

    .line 875
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 878
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 879
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 878
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 882
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x7d

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 353
    iget-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    .line 354
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    :cond_1
    :goto_0
    return-void
.end method
