.class public final Lcom/android/server/media/quality/MediaQualityService$BinderService;
.super Landroid/media/quality/IMediaQualityManager$Stub;
.source "MediaQualityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public static synthetic $r8$lambda$3BOZ1m5IOgjfAwaLKmmUAxLDfNA(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$setSuperResolutionEnabled$9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Jl4LU_IDMKH-Y2IS1vE7aJoZtU(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$removeSoundProfile$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9W6Ea2aO9aVOqh_m-F6O454YrJs(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$removePictureProfile$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BcS_KZxAMxZghtaMYpP1IBsrRzM(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$setSoundProfileAllowList$7(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BioHXLslaDYXkOxV_Nf_dqvNVTM(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/SoundProfile;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$createSoundProfile$3(Landroid/media/quality/SoundProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ELtWD0g-bkBCZrMQSIwJcVub4VI(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$setAutoPictureQualityEnabled$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NEEhBlKOS0hKcMyUqylZYEkMH74(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$updateSoundProfile$4(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lkyQAVm9D1cFC9e587tBDup9_QI(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$setAutoSoundQualityEnabled$10(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$oEI3bkIiBng7ZNtWxZcS2xyccM8(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$updatePictureProfile$1(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uHkse-zuKFzcjht-iekkBq_FX6w(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$setPictureProfileAllowList$6(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zF_A4d8t4DYQTUMNJ6Otwdl1apk(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/PictureProfile;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$createPictureProfile$0(Landroid/media/quality/PictureProfile;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/media/quality/IMediaQualityManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method


# virtual methods
.method public createPictureProfile(Landroid/media/quality/PictureProfile;I)V
    .locals 1

    .line 279
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/PictureProfile;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public createSoundProfile(Landroid/media/quality/SoundProfile;I)V
    .locals 1

    .line 625
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/SoundProfile;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAvailablePictureProfiles(ZI)Ljava/util/List;
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 460
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAvailableSoundProfiles(ZI)Ljava/util/List;
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 789
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getDefaultPictureProfileHandleValue(I)J
    .locals 2

    .line 551
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 552
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPackageDefaultPictureProfileHandleMap(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 557
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    :goto_1
    monitor-exit p1

    return-wide v0

    .line 558
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getListParameterCapability([Landroid/hardware/tv/mediaquality/ParamCapability;)Ljava/util/List;
    .locals 8

    .line 1035
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 1038
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 1040
    iget-byte v4, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityUtils;->getParameterName(B)Ljava/lang/String;

    move-result-object v4

    .line 1041
    iget-boolean v5, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    .line 1042
    iget-object v6, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    if-nez v6, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 1043
    :goto_1
    iget-object v3, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-static {v6, v3}, Lcom/android/server/media/quality/MediaQualityUtils;->convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;

    move-result-object v3

    .line 1045
    new-instance v7, Landroid/media/quality/ParameterCapability;

    invoke-direct {v7, v4, v5, v6, v3}, Landroid/media/quality/ParameterCapability;-><init>(Ljava/lang/String;ZILandroid/os/Bundle;)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final getPackageOfCallingUid()Ljava/lang/String;
    .locals 2

    .line 852
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPackageManager(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 853
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 852
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 854
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 855
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParameterCapabilities(Ljava/util/List;I)Ljava/util/List;
    .locals 2

    .line 1023
    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityUtils;->convertParameterToByteArray(Ljava/util/List;)[B

    move-result-object p1

    .line 1024
    array-length p2, p1

    new-array p2, p2, [Landroid/hardware/tv/mediaquality/ParamCapability;

    .line 1026
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getParamCaps([B[Landroid/hardware/tv/mediaquality/ParamCapability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1028
    const-string v0, "MediaQualityService"

    const-string v1, "Failed to get parameter capabilities"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getListParameterCapability([Landroid/hardware/tv/mediaquality/ParamCapability;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPictureProfile(ILjava/lang/String;ZI)Landroid/media/quality/PictureProfile;
    .locals 5

    .line 404
    const-string p4, "_type = ? AND _name = ? AND _package = ?"

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, p2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v3, "picture_quality"

    .line 413
    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object p3

    .line 411
    invoke-static {v2, v3, p3, p4, v0}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetCursorAfterQuerying(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 430
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    if-le p4, v2, :cond_1

    .line 421
    :try_start_3
    const-string v2, "MediaQualityService"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%d entries found for type=%d and name=%s in %s. Should only ever be 0 or 1."

    .line 423
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo p0, "picture_quality"

    filled-new-array {v4, p4, p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 421
    invoke-static {v3, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 430
    :try_start_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 427
    :cond_1
    :try_start_5
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 428
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 430
    :try_start_6
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object p0

    :goto_1
    if-eqz p3, :cond_2

    .line 410
    :try_start_7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0

    .line 431
    :goto_3
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public getPictureProfileAllowList(I)Ljava/util/List;
    .locals 4

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1057
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p1

    .line 1059
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    .line 1057
    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1061
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileSharedPreference(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "allowlist"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1063
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1064
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 1066
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPictureProfileForTvInput(Ljava/lang/String;I)J
    .locals 4

    .line 572
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 573
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p2

    .line 575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    .line 573
    invoke-static {p2, v3, v0, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 577
    :cond_0
    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 578
    const-string v1, "_type = ? AND _name = ? AND _input_id = ?"

    .line 582
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "default"

    filled-new-array {v0, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 586
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 587
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo p0, "picture_quality"

    invoke-static {v2, p0, p2, v1, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetCursorAfterQuerying(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v1, -0x1

    if-nez p1, :cond_1

    .line 601
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 595
    :cond_1
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 596
    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 598
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 601
    :cond_2
    :goto_1
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_2
    if-eqz p0, :cond_3

    .line 587
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1

    .line 602
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public getPictureProfileHandle([Ljava/lang/String;I)Ljava/util/List;
    .locals 7

    .line 525
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 527
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 528
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 530
    new-instance v4, Landroid/media/quality/PictureProfileHandle;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Landroid/media/quality/PictureProfileHandle;-><init>(J)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 532
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    monitor-exit v0

    return-object p2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPictureProfileHandleValue(Ljava/lang/String;I)J
    .locals 0

    .line 542
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 543
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    .line 544
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    monitor-exit p2

    return-wide p0

    .line 545
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPictureProfilePackageNames(I)Ljava/util/List;
    .locals 4

    .line 506
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 507
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p1

    .line 509
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    .line 507
    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 511
    :cond_0
    const-string p1, "_package"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 512
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object p0

    .line 514
    invoke-static {p0, p1, v0, v0}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 515
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda4;-><init>()V

    .line 516
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 517
    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    .line 518
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 519
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 4

    .line 438
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result p3

    if-nez p3, :cond_0

    .line 439
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p3

    .line 441
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 439
    invoke-static {p3, v2, v3, v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 444
    :cond_0
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 445
    :try_start_0
    const-string v0, "_package = ?"

    .line 446
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 447
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object p0

    .line 448
    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object p2

    .line 447
    invoke-static {p0, p2, v0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    monitor-exit p3

    return-object p0

    :catchall_0
    move-exception p0

    .line 450
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSoundProfile(ILjava/lang/String;ZI)Landroid/media/quality/SoundProfile;
    .locals 4

    .line 734
    const-string p4, "_type = ? AND _name = ? AND _package = ?"

    .line 737
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 739
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 741
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v2, "sound_quality"

    .line 743
    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object p3

    .line 741
    invoke-static {v1, v2, p3, p4, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetCursorAfterQuerying(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 760
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p4

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    if-le p3, v1, :cond_1

    .line 751
    :try_start_3
    const-string v1, "MediaQualityService"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%d entries found for name=%s in %s. Should only ever be 0 or 1."

    .line 753
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo p0, "sound_quality"

    filled-new-array {v3, p3, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 751
    invoke-static {v2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 760
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 757
    :cond_1
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 758
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 760
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object p0

    :goto_1
    if-eqz p1, :cond_2

    .line 740
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0

    .line 761
    :goto_3
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public getSoundProfileAllowList(I)Ljava/util/List;
    .locals 4

    .line 1087
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1088
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p1

    .line 1089
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    .line 1088
    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1091
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileSharedPreference(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "allowlist"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1093
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1094
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 1096
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSoundProfileHandle([Ljava/lang/String;I)Ljava/util/List;
    .locals 5

    .line 608
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 609
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 610
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 611
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 613
    sget-object v3, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 615
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    :cond_1
    monitor-exit v0

    return-object p2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSoundProfilePackageNames(I)Ljava/util/List;
    .locals 4

    .line 834
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 835
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p1

    .line 836
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    .line 835
    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 838
    :cond_0
    const-string p1, "_name"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 840
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 841
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object p0

    .line 842
    invoke-static {p0, p1, v0, v0}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 844
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda7;-><init>()V

    .line 845
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 846
    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    .line 847
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 848
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 4

    .line 768
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result p3

    if-nez p3, :cond_0

    .line 769
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p3

    .line 770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 769
    invoke-static {p3, v2, v3, v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 773
    :cond_0
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 774
    :try_start_0
    const-string v0, "_package = ?"

    .line 775
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 776
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object p0

    .line 777
    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object p2

    .line 776
    invoke-static {p0, p2, v0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    monitor-exit p3

    return-object p0

    :catchall_0
    move-exception p0

    .line 779
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasGlobalPictureQualityServicePermission()Z
    .locals 1

    .line 865
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmContext(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_GLOBAL_PICTURE_QUALITY_SERVICE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasGlobalSoundQualityServicePermission()Z
    .locals 1

    .line 871
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmContext(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_GLOBAL_SOUND_QUALITY_SERVICE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPermissionToRemovePictureProfile(Landroid/media/quality/PictureProfile;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPermissionToRemoveSoundProfile(Landroid/media/quality/SoundProfile;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 725
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPermissionToUpdatePictureProfile(Ljava/lang/Long;Landroid/media/quality/PictureProfile;)Z
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v0

    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 347
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPermissionToUpdateSoundProfile(Ljava/lang/Long;Landroid/media/quality/SoundProfile;)Z
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object p1

    .line 682
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v0

    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 683
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 685
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasReadColorZonesPermission()Z
    .locals 1

    .line 877
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmContext(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_COLOR_ZONES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final incomingPackageEqualsCallingUidPackage(Ljava/lang/String;)Z
    .locals 0

    .line 861
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAmbientBacklightEnabled(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isAutoPictureQualityEnabled(I)Z
    .locals 2

    .line 1145
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoPqSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getAutoPqEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1153
    const-string v0, "MediaQualityService"

    const-string v1, "Failed to get auto picture quality"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1155
    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    .line 1156
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isAutoSoundQualityEnabled(I)Z
    .locals 2

    .line 1226
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1228
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoAqSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getAutoAqEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1234
    const-string v0, "MediaQualityService"

    const-string v1, "Failed to get auto sound quality"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1236
    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    .line 1237
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isSuperResolutionEnabled(I)Z
    .locals 2

    .line 1185
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1187
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoSrSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getAutoSrEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1193
    const-string v0, "MediaQualityService"

    const-string v1, "Failed to get super resolution"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    .line 1196
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isSupported(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$createPictureProfile$0(Landroid/media/quality/PictureProfile;)V
    .locals 10

    .line 281
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->incomingPackageEqualsCallingUidPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 286
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x1

    .line 284
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 293
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 294
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v7, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 297
    :goto_2
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getInputId()Ljava/lang/String;

    move-result-object v8

    .line 298
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v9

    const/4 v4, 0x0

    .line 292
    invoke-static/range {v4 .. v9}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v3

    .line 301
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v4, "picture_quality"

    invoke-virtual {v0, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/media/quality/MediaQualityUtils;->populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V

    .line 304
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    invoke-virtual {p1, v0}, Landroid/media/quality/PictureProfile;->setProfileId(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v1

    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 306
    invoke-static {v1, v0, p1, v3, v4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileAdded(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    .line 308
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0, p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$misPackageDefaultPictureProfile(Lcom/android/server/media/quality/MediaQualityService;Landroid/media/quality/PictureProfile;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPackageDefaultPictureProfileHandleMap(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object p0

    .line 310
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 309
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_3
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$createSoundProfile$3(Landroid/media/quality/SoundProfile;)V
    .locals 10

    .line 626
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->incomingPackageEqualsCallingUidPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x1

    .line 629
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 637
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 638
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v6

    .line 639
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 640
    :cond_1
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v7, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 641
    :goto_2
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getInputId()Ljava/lang/String;

    move-result-object v8

    .line 642
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v9

    const/4 v4, 0x0

    .line 636
    invoke-static/range {v4 .. v9}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v3

    .line 645
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v4, "sound_quality"

    invoke-virtual {v0, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/media/quality/MediaQualityUtils;->populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V

    .line 648
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 649
    invoke-virtual {p1, v0}, Landroid/media/quality/SoundProfile;->setProfileId(Ljava/lang/String;)V

    .line 650
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 651
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 650
    invoke-static {p0, v0, p1, v1, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileAdded(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

    .line 652
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$removePictureProfile$2(Ljava/lang/String;)V
    .locals 7

    .line 356
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 359
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v2

    .line 360
    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasPermissionToRemovePictureProfile(Landroid/media/quality/PictureProfile;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v3

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v6, 0x1

    .line 361
    invoke-static {v3, p1, v6, v4, v5}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 367
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 368
    const-string v4, "_id = ?"

    .line 369
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 370
    iget-object v6, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v6}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v6, "picture_quality"

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v1

    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v5, 0x3

    .line 373
    invoke-static {v1, p1, v5, v3, v4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    goto :goto_1

    .line 377
    :cond_1
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v3

    .line 378
    invoke-virtual {v3, v1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 377
    invoke-static {p1, v3, v2, v4, v5}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileRemoved(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    .line 380
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/media/quality/BiMap;->remove(Ljava/lang/Object;)Z

    .line 381
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 385
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1, v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$misPackageDefaultPictureProfile(Lcom/android/server/media/quality/MediaQualityService;Landroid/media/quality/PictureProfile;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 386
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPackageDefaultPictureProfileHandleMap(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object p0

    .line 387
    invoke-virtual {v2}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$removeSoundProfile$5(Ljava/lang/String;)V
    .locals 7

    .line 692
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 694
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v2

    .line 695
    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasPermissionToRemoveSoundProfile(Landroid/media/quality/SoundProfile;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 696
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v3

    .line 698
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v6, 0x1

    .line 696
    invoke-static {v3, p1, v6, v4, v5}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 701
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 702
    const-string v4, "_id = ?"

    .line 703
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 704
    iget-object v6, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v6}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v6, "sound_quality"

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 708
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p0

    .line 710
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x3

    .line 708
    invoke-static {p0, p1, v3, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    goto :goto_1

    .line 712
    :cond_1
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v3

    .line 713
    invoke-virtual {v3, v1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 714
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 712
    invoke-static {p1, v3, v2, v4, v5}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileRemoved(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

    .line 715
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/media/quality/BiMap;->remove(Ljava/lang/Object;)Z

    .line 716
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnSoundProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 719
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$setAutoPictureQualityEnabled$8(Z)V
    .locals 5

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1124
    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1131
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoPqSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAutoPqEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1136
    :try_start_1
    const-string p1, "MediaQualityService"

    const-string v1, "Failed to set auto picture quality"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1138
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$setAutoSoundQualityEnabled$10(Z)V
    .locals 5

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1204
    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1212
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoAqSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAutoAqEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1217
    :try_start_1
    const-string p1, "MediaQualityService"

    const-string v1, "Failed to set auto sound quality"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$setPictureProfileAllowList$6(Ljava/util/List;)V
    .locals 5

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1076
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1074
    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1078
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileSharedPreference(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1079
    const-string v0, ","

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "allowlist"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1080
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final synthetic lambda$setSoundProfileAllowList$7(Ljava/util/List;)V
    .locals 5

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1104
    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1108
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileSharedPreference(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1109
    const-string v0, ","

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "allowlist"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1110
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final synthetic lambda$setSuperResolutionEnabled$9(Z)V
    .locals 5

    .line 1163
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1164
    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1171
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoSrSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1172
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAutoSrEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1176
    :try_start_1
    const-string p1, "MediaQualityService"

    const-string v1, "Failed to set super resolution"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$updatePictureProfile$1(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .locals 7

    .line 321
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    .line 322
    invoke-virtual {p0, v1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasPermissionToUpdatePictureProfile(Ljava/lang/Long;Landroid/media/quality/PictureProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x1

    .line 323
    invoke-static {v0, p1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 329
    :try_start_0
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 330
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getInputId()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v6

    .line 328
    invoke-static/range {v1 .. v6}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    .line 335
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 334
    invoke-virtual {v1, v0, v2}, Lcom/android/server/media/quality/MediaQualityService;->updateDatabaseOnPictureProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V

    .line 336
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0, p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$misPackageDefaultPictureProfile(Lcom/android/server/media/quality/MediaQualityService;Landroid/media/quality/PictureProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPackageDefaultPictureProfileHandleMap(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object p0

    .line 338
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 337
    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 340
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$updateSoundProfile$4(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .locals 7

    .line 660
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    .line 661
    invoke-virtual {p0, v1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasPermissionToUpdateSoundProfile(Ljava/lang/Long;Landroid/media/quality/SoundProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x1

    .line 662
    invoke-static {v0, p1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 667
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 669
    :try_start_0
    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 670
    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 671
    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 672
    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getInputId()Ljava/lang/String;

    move-result-object v5

    .line 673
    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v6

    .line 668
    invoke-static/range {v1 .. v6}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v0

    .line 675
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/quality/MediaQualityService;->updateDatabaseOnSoundProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V

    .line 676
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyPictureProfileHandleSelection(JI)V
    .locals 1

    .line 564
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 566
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    :cond_0
    return-void
.end method

.method public registerActiveProcessingPictureListener(Landroid/media/quality/IActiveProcessingPictureListener;)V
    .locals 5

    .line 905
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 908
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v2

    .line 909
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmActiveProcessingPictureListenerMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {v4, p0, v1, v0, v3}, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;-><init>(Lcom/android/server/media/quality/MediaQualityService;IILjava/lang/String;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V
    .locals 5

    .line 920
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasReadColorZonesPermission()Z

    .line 924
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    .line 926
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 927
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    if-eqz v2, :cond_1

    .line 929
    iget-object v3, v2, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v3}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    const-string p0, "MediaQualityService"

    const-string p1, "AmbientBacklight Callback already registered"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 933
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->release()V

    .line 934
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_1
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;-><init>(Lcom/android/server/media/quality/MediaQualityService;Ljava/lang/String;Landroid/media/quality/IAmbientBacklightCallback;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerPictureProfileCallback(Landroid/media/quality/IPictureProfileCallback;)V
    .locals 3

    .line 884
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 885
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 887
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object p0

    .line 888
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object p0

    .line 889
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 888
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSoundProfileCallback(Landroid/media/quality/ISoundProfileCallback;)V
    .locals 3

    .line 894
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 895
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 897
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object p0

    .line 898
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object p0

    .line 899
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 898
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removePictureProfile(Ljava/lang/String;I)V
    .locals 1

    .line 355
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeSoundProfile(Ljava/lang/String;I)V
    .locals 1

    .line 691
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAmbientBacklightEnabled(ZI)V
    .locals 1

    .line 1006
    const-string p2, "MediaQualityService"

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasReadColorZonesPermission()Z

    .line 1010
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAmbientBacklightDetectionEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1016
    const-string p1, "Failed to set ambient backlight enabled"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1014
    :catch_1
    const-string p0, "The current device is not supported"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;I)V
    .locals 1

    .line 969
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasReadColorZonesPermission()Z

    .line 974
    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 975
    new-instance p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    invoke-direct {p2}, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;-><init>()V

    .line 977
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->uid:I

    .line 978
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getSource()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->source:B

    .line 979
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getMaxFps()I

    move-result v0

    iput v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->maxFramerate:I

    .line 980
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getColorFormat()I

    move-result v0

    int-to-byte v0, v0

    iput v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorFormat:I

    .line 981
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getHorizontalZonesCount()I

    move-result v0

    iput v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hZonesNumber:I

    .line 982
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getVerticalZonesCount()I

    move-result v0

    iput v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->vZonesNumber:I

    .line 983
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->isLetterboxOmitted()Z

    move-result v0

    iput-boolean v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hasLetterbox:Z

    .line 984
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getThreshold()I

    move-result p1

    iput p1, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorThreshold:I

    .line 986
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAmbientBacklightDetector(Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;)V

    .line 988
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalAmbientBacklightCallback(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

    move-result-object p1

    .line 989
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object p0

    .line 988
    invoke-virtual {p1, p0}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->setAmbientBacklightClientPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 996
    const-string p1, "MediaQualityService"

    const-string p2, "Failed to set ambient backlight settings"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setAutoPictureQualityEnabled(ZI)V
    .locals 1

    .line 1122
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAutoSoundQualityEnabled(ZI)V
    .locals 1

    .line 1202
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDefaultPictureProfile(Ljava/lang/String;I)Z
    .locals 6

    .line 466
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 467
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p2

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 467
    invoke-static {p2, p1, v0, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 472
    :cond_0
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    return p2

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 480
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 481
    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameters;

    invoke-direct {v2}, Landroid/hardware/tv/mediaquality/PictureParameters;-><init>()V

    .line 484
    const-string v3, "_id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 486
    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToPictureParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object p1

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 489
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4, v2, v3, v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$msetVendorPictureParameters(Lcom/android/server/media/quality/MediaQualityService;Landroid/hardware/tv/mediaquality/PictureParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V

    .line 491
    iput-object p1, v2, Landroid/hardware/tv/mediaquality/PictureParameters;->pictureParameters:[Landroid/hardware/tv/mediaquality/PictureParameter;

    .line 493
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/hardware/tv/mediaquality/IMediaQuality;->sendDefaultPictureParameters(Landroid/hardware/tv/mediaquality/PictureParameters;)V

    .line 494
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 498
    const-string p1, "MediaQualityService"

    const-string v0, "Failed to set default picture profile"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return p2
.end method

.method public setDefaultSoundProfile(Ljava/lang/String;I)Z
    .locals 6

    .line 795
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 796
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p2

    .line 798
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 796
    invoke-static {p2, p1, v0, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 801
    :cond_0
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    return p2

    .line 806
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v1

    .line 807
    invoke-virtual {v1}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 810
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 811
    new-instance v2, Landroid/hardware/tv/mediaquality/SoundParameters;

    invoke-direct {v2}, Landroid/hardware/tv/mediaquality/SoundParameters;-><init>()V

    .line 814
    const-string v3, "_id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 816
    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToSoundParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object p1

    .line 818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 819
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4, v2, v3, v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$msetVendorSoundParameters(Lcom/android/server/media/quality/MediaQualityService;Landroid/hardware/tv/mediaquality/SoundParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V

    .line 820
    iput-object p1, v2, Landroid/hardware/tv/mediaquality/SoundParameters;->soundParameters:[Landroid/hardware/tv/mediaquality/SoundParameter;

    .line 822
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/hardware/tv/mediaquality/IMediaQuality;->sendDefaultSoundParameters(Landroid/hardware/tv/mediaquality/SoundParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 826
    const-string p1, "MediaQualityService"

    const-string v0, "Failed to set default sound profile"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return p2
.end method

.method public setPictureProfileAllowList(Ljava/util/List;I)V
    .locals 1

    .line 1072
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSoundProfileAllowList(Ljava/util/List;I)V
    .locals 1

    .line 1102
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSuperResolutionEnabled(ZI)V
    .locals 1

    .line 1162
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;I)V
    .locals 1

    .line 320
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;I)V
    .locals 1

    .line 659
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
