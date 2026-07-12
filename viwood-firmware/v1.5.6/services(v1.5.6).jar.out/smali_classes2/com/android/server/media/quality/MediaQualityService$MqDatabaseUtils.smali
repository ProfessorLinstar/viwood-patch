.class public final Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;
.super Ljava/lang/Object;
.source "MediaQualityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public static bridge synthetic -$$Nest$mgetCursorAfterQuerying(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getPictureProfile(Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getPictureProfilesBasedOnConditions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getSoundProfile(Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSoundProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getSoundProfilesBasedOnConditions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    .line 1479
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method


# virtual methods
.method public final getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 1474
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1475
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final getPictureProfile(Ljava/lang/Long;)Landroid/media/quality/PictureProfile;
    .locals 1

    const/4 v0, 0x0

    .line 1393
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getPictureProfile(Ljava/lang/Long;Z)Landroid/media/quality/PictureProfile;

    move-result-object p0

    return-object p0
.end method

.method public final getPictureProfile(Ljava/lang/Long;Z)Landroid/media/quality/PictureProfile;
    .locals 6

    .line 1398
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1400
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    .line 1402
    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object p2

    .line 1400
    const-string/jumbo v1, "picture_quality"

    const-string v2, "_id = ?"

    invoke-virtual {p0, v1, p2, v2, v0}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 1404
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1417
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 1409
    :try_start_1
    const-string v3, "MediaQualityService"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%d entries found for id=%d in %s. Should only ever be 0 or 1."

    .line 1411
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    filled-new-array {v5, v0, p1, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1409
    invoke-static {v4, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1417
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1414
    :cond_1
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1415
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1417
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object p0

    :goto_0
    if-eqz p2, :cond_2

    .line 1400
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
.end method

.method public final getPictureProfilesBasedOnConditions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v0, "picture_quality"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1425
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1427
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1431
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :goto_1
    if-eqz p1, :cond_1

    .line 1422
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
.end method

.method public final getSoundProfile(Ljava/lang/Long;)Landroid/media/quality/SoundProfile;
    .locals 7

    .line 1436
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1438
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const/4 v2, 0x0

    .line 1440
    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v2

    .line 1438
    const-string/jumbo v3, "sound_quality"

    const-string v4, "_id = ?"

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1442
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1455
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_0
    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 1447
    :try_start_1
    const-string v4, "MediaQualityService"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%d entries found for id=%s in %s. Should only ever be 0 or 1."

    .line 1448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    filled-new-array {v6, v1, p1, v3}, [Ljava/lang/Object;

    move-result-object p0

    .line 1447
    invoke-static {v5, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1455
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1452
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1453
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1455
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :goto_0
    if-eqz v0, :cond_2

    .line 1438
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
.end method

.method public final getSoundProfilesBasedOnConditions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1460
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v1, "sound_quality"

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1463
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1464
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1465
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1469
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :goto_1
    if-eqz p1, :cond_1

    .line 1460
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
.end method
