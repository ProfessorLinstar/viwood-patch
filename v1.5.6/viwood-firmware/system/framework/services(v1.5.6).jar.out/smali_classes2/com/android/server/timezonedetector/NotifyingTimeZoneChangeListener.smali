.class public Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;
.super Ljava/lang/Object;
.source "NotifyingTimeZoneChangeListener.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneChangeListener;


# static fields
.field static final AUTO_REVERT_THRESHOLD:J


# instance fields
.field public mAcceptedLocationChanges:I

.field public mAcceptedManualChanges:I

.field public mAcceptedTelephonyChanges:I

.field public mAcceptedUnknownChanges:I

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field public final mConfigurationLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mEnvironment:Lcom/android/server/timezonedetector/Environment;

.field public final mHandler:Landroid/os/Handler;

.field public mIsRegistered:Z

.field public final mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotificationReceiver:Landroid/content/BroadcastReceiver;

.field public final mRes:Landroid/content/res/Resources;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field public final mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;


# direct methods
.method public static synthetic $r8$lambda$iOoFxBwY36rVGc24HJInvungJio(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->handleConfigurationUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotificationSwipedAway(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->notificationSwipedAway(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xf

    .line 112
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->AUTO_REVERT_THRESHOLD:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Landroid/app/NotificationManager;Lcom/android/server/timezonedetector/Environment;)V
    .locals 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRes:Landroid/content/res/Resources;

    .line 135
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 139
    new-instance v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    .line 196
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 198
    new-instance p1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V

    invoke-interface {p3, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V

    .line 200
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 201
    iput-object p4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 202
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    return-void
.end method

.method public static create(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/Environment;)Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;
    .locals 6

    .line 178
    new-instance v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    const-class v1, Landroid/app/NotificationManager;

    .line 182
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/NotificationManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Landroid/app/NotificationManager;Lcom/android/server/timezonedetector/Environment;)V

    .line 186
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->handleConfigurationUpdate()V

    return-object v0
.end method


# virtual methods
.method public final areNotificationsEnabled()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getNotificationsEnabledBehavior()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clearNotificationForUser(I)V
    .locals 2

    .line 470
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3e9

    .line 471
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 470
    const-string v1, "TimeZoneDetector"

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public getLastTimeZoneChangeRecord()Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter v0

    .line 652
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 653
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleConfigurationUpdate()V
    .locals 11

    .line 207
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 209
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 211
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->areNotificationsEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isNotificationTrackingSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    if-nez v2, :cond_1

    .line 213
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    const-string v2, "com.android.server.timezonedetector.TimeZoneNotificationDeleted"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 217
    iput-boolean v4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 219
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iput-boolean v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 226
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v5

    if-eq v2, v5, :cond_2

    move v3, v4

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->areNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_4

    .line 230
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->clearNotificationForUser(I)V

    .line 233
    :cond_4
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isNotificationTrackingSupported()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isNotificationTrackingSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isUserIdCurrentUser(I)Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 308
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final markChangeAsAccepted(III)V
    .locals 2

    .line 270
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isUserIdCurrentUser(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter p2

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    if-eqz v0, :cond_6

    .line 277
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getId()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 279
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result p1

    if-eqz p1, :cond_2

    .line 283
    monitor-exit p2

    return-void

    .line 285
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setAccepted(I)V

    .line 287
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    .line 298
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedUnknownChanges:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedUnknownChanges:I

    goto :goto_0

    .line 295
    :cond_3
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedLocationChanges:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedLocationChanges:I

    goto :goto_0

    .line 292
    :cond_4
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedTelephonyChanges:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedTelephonyChanges:I

    goto :goto_0

    .line 289
    :cond_5
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedManualChanges:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedManualChanges:I

    .line 302
    :cond_6
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notificationSwipedAway(II)V
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isNotificationTrackingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 239
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->markChangeAsAccepted(III)V

    :cond_0
    return-void
.end method
