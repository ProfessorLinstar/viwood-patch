.class public Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;
.super Ljava/lang/Object;
.source "SensitiveContentProtectionManagerService.java"


# instance fields
.field public final mAllSeenNotificationKeys:Landroid/util/ArraySet;

.field public final mIsExempted:Z

.field public final mSeenOtpNotificationKeys:Landroid/util/ArraySet;

.field public final mSessionId:J

.field public final mUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSessionId(Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$maddSeenNotificationKey(Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->addSeenNotificationKey(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddSeenOtpNotificationKey(Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->addSeenOtpNotificationKey(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IZJ)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    .line 106
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    .line 109
    iput p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    .line 110
    iput-boolean p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mIsExempted:Z

    .line 111
    iput-wide p3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    return-void
.end method


# virtual methods
.method public final addSeenNotificationKey(Ljava/lang/String;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSeenNotifications([Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    .line 176
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    .line 178
    const-string v2, "SensitiveContentProtect"

    const-string v3, "Unable to parse null notification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :cond_0
    invoke-static {v2, p2}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$smnotificationHasSensitiveContent(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->addSeenOtpNotificationKey(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->addSeenNotificationKey(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final addSeenOtpNotificationKey(Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public logAppBlocked(I)V
    .locals 6

    .line 145
    iget-wide v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    iget v4, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    const/4 v5, 0x1

    const/16 v0, 0x343

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    return-void
.end method

.method public logAppNotificationsProtected()V
    .locals 4

    .line 137
    iget-wide v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    iget-object v2, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    .line 140
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    .line 141
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    const/16 v3, 0x33f

    .line 137
    invoke-static {v3, v0, v1, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    return-void
.end method

.method public logAppUnblocked(I)V
    .locals 6

    .line 155
    iget-wide v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    iget v4, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    const/4 v5, 0x2

    const/16 v0, 0x343

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    return-void
.end method

.method public logProjectionSessionStart()V
    .locals 7

    .line 115
    iget-wide v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    iget v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    iget-boolean v4, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mIsExempted:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v0, 0x33e

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIZII)V

    return-void
.end method

.method public logProjectionSessionStop()V
    .locals 7

    .line 126
    iget-wide v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    iget v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    iget-boolean v4, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mIsExempted:Z

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/16 v0, 0x33e

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIZII)V

    return-void
.end method
