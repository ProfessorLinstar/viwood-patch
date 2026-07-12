.class abstract Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
.super Ljava/lang/Object;
.source "NotificationAttentionHelper.java"


# instance fields
.field public mApplyPerPackage:Z

.field public final mExemptionProvider:Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

.field public mIsActive:Z

.field public final mLastUpdatedTimestampByPackage:Ljava/util/Map;

.field public final mTimeoutMuted:I

.field public final mTimeoutPolite:I

.field public final mVolumeMuted:F

.field public final mVolumePolite:F

.field public final mVolumeStates:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$mgetVibrationIntensity(Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;Lcom/android/server/notification/NotificationRecord;)F
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getVibrationIntensity(Lcom/android/server/notification/NotificationRecord;)F

    move-result p0

    return p0
.end method

.method public constructor <init>(IIIILcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V
    .locals 1

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1237
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mIsActive:Z

    .line 1243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeStates:Ljava/util/Map;

    .line 1244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mLastUpdatedTimestampByPackage:Ljava/util/Map;

    .line 1246
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutPolite:I

    .line 1247
    iput p2, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutMuted:I

    int-to-float p1, p3

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 1248
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumePolite:F

    int-to-float p1, p4

    div-float/2addr p1, p2

    .line 1249
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeMuted:F

    .line 1250
    iput-object p5, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mExemptionProvider:Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

    return-void
.end method


# virtual methods
.method public getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 2

    .line 1272
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1277
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mApplyPerPackage:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->hasUserSetSound()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1278
    const-string v0, ""

    .line 1281
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;)J
    .locals 2

    .line 1336
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hasUserSetSound()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mApplyPerPackage:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1339
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mLastUpdatedTimestampByPackage:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 1340
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1339
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 1337
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLastNotificationUpdateTimeMs()J

    move-result-wide p0

    return-wide p0
.end method

.method public getNextState(IJ)I
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    .line 1370
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getNextState unexpected volume state: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "NotifAttentionHelper"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 1363
    :cond_0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutMuted:I

    int-to-long p0, p0

    cmp-long p0, p2, p0

    if-lez p0, :cond_1

    return v0

    :cond_1
    return v1

    .line 1354
    :cond_2
    iget p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutMuted:I

    int-to-long v2, p1

    cmp-long p1, p2, v2

    if-gez p1, :cond_3

    return v1

    .line 1356
    :cond_3
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutPolite:I

    int-to-long p0, p0

    cmp-long p0, p2, p0

    if-lez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    return v0

    .line 1349
    :cond_5
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutPolite:I

    int-to-long v1, p0

    cmp-long p0, p2, v1

    if-gez p0, :cond_6

    return v0

    :cond_6
    return p1
.end method

.method public getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeStates:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F
    .locals 4

    .line 1287
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    .line 1290
    const-string v1, "NotifAttentionHelper"

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 1301
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundVolume unexpected volume state: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1298
    :cond_0
    iget v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeMuted:F

    goto :goto_0

    .line 1295
    :cond_1
    iget v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumePolite:F

    .line 1305
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 1306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundVolume state: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vol: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method public final getVibrationIntensity(Lcom/android/server/notification/NotificationRecord;)F
    .locals 0

    .line 1315
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result p0

    return p0
.end method

.method public abstract onNotificationPosted(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3

    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1321
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeStates:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 1322
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V

    return-void
.end method

.method public setApplyCooldownPerPackage(Z)V
    .locals 0

    .line 1261
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mApplyPerPackage:Z

    return-void
.end method

.method public setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V
    .locals 1

    .line 1331
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationChannel;->setLastNotificationUpdateTimeMs(J)V

    .line 1332
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mLastUpdatedTimestampByPackage:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
