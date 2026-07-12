.class public final Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;
.super Ljava/lang/Object;
.source "MediaQualityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public static bridge synthetic -$$Nest$mnotifyOnPictureProfileAdded(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnPictureProfileError(Ljava/lang/String;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOnPictureProfileParameterCapabilitiesChanged(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnPictureProfileParameterCapabilitiesChanged(Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOnPictureProfileRemoved(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOnPictureProfileUpdated(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOnSoundProfileAdded(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnSoundProfileError(Ljava/lang/String;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOnSoundProfileParameterCapabilitiesChanged(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnSoundProfileParameterCapabilitiesChanged(Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOnSoundProfileRemoved(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOnSoundProfileUpdated(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    .line 1668
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method


# virtual methods
.method public final notifyOnPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .line 1497
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public final notifyOnPictureProfileError(Ljava/lang/String;III)V
    .locals 8

    .line 1514
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public final notifyOnPictureProfileParameterCapabilitiesChanged(Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V
    .locals 9

    .line 1520
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 1521
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v3, p2, v1

    .line 1523
    iget-byte v4, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityUtils;->getParameterName(B)Ljava/lang/String;

    move-result-object v4

    .line 1524
    iget-boolean v6, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    .line 1525
    iget-object v7, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    if-nez v7, :cond_0

    move v7, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 1526
    :goto_1
    iget-object v3, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-static {v7, v3}, Lcom/android/server/media/quality/MediaQualityUtils;->convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;

    move-result-object v3

    .line 1528
    new-instance v8, Landroid/media/quality/ParameterCapability;

    invoke-direct {v8, v4, v6, v7, v3}, Landroid/media/quality/ParameterCapability;-><init>(Ljava/lang/String;ZILandroid/os/Bundle;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move v6, p3

    move v7, p4

    .line 1530
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public final notifyOnPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .line 1508
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public final notifyOnPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .line 1502
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public final notifyOnSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .line 1585
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public final notifyOnSoundProfileError(Ljava/lang/String;III)V
    .locals 8

    .line 1599
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public final notifyOnSoundProfileParameterCapabilitiesChanged(Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V
    .locals 9

    .line 1605
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 1606
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1607
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v3, p2, v1

    .line 1608
    iget-byte v4, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityUtils;->getParameterName(B)Ljava/lang/String;

    move-result-object v4

    .line 1609
    iget-boolean v6, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    .line 1610
    iget-object v7, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    if-nez v7, :cond_0

    move v7, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 1611
    :goto_1
    iget-object v3, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-static {v7, v3}, Lcom/android/server/media/quality/MediaQualityUtils;->convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;

    move-result-object v3

    .line 1613
    new-instance v8, Landroid/media/quality/ParameterCapability;

    invoke-direct {v8, v4, v6, v7, v3}, Landroid/media/quality/ParameterCapability;-><init>(Ljava/lang/String;ZILandroid/os/Bundle;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move v6, p3

    move v7, p4

    .line 1615
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public final notifyOnSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .line 1595
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public final notifyOnSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .line 1590
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public final notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V
    .locals 16

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p0

    .line 1537
    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v5

    .line 1538
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    :goto_0
    if-ge v4, v6, :cond_b

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    .line 1542
    :try_start_0
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    .line 1543
    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    .line 1544
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v12

    .line 1545
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1547
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v13, p7

    if-ne v12, v13, :cond_5

    :try_start_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v12, p6

    if-ne v0, v12, :cond_0

    if-ne v1, v11, :cond_1

    .line 1549
    :try_start_2
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    .line 1550
    invoke-interface {v0, v2, v3}, Landroid/media/quality/IPictureProfileCallback;->onPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    :cond_0
    :goto_1
    move-object/from16 v14, p5

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v14, p5

    goto :goto_2

    :cond_1
    if-ne v1, v10, :cond_2

    .line 1552
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    .line 1553
    invoke-interface {v0, v2, v3}, Landroid/media/quality/IPictureProfileCallback;->onPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    goto :goto_1

    :cond_2
    if-ne v1, v9, :cond_3

    .line 1555
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    .line 1556
    invoke-interface {v0, v2, v3}, Landroid/media/quality/IPictureProfileCallback;->onPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    goto :goto_1

    :cond_3
    if-ne v1, v8, :cond_4

    .line 1558
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    .line 1559
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v0, v2, v14}, Landroid/media/quality/IPictureProfileCallback;->onError(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_0

    .line 1561
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v14, p5

    .line 1562
    :try_start_3
    invoke-interface {v0, v2, v14}, Landroid/media/quality/IPictureProfileCallback;->onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v14, p5

    move/from16 v12, p6

    goto :goto_2

    :cond_5
    move-object/from16 v14, p5

    move/from16 v12, p6

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v14, p5

    move/from16 v12, p6

    move/from16 v13, p7

    .line 1566
    :goto_2
    const-string v15, "MediaQualityService"

    if-ne v1, v11, :cond_6

    .line 1567
    const-string v7, "Failed to report added picture profile to callback"

    invoke-static {v15, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_6
    if-ne v1, v10, :cond_7

    .line 1569
    const-string v7, "Failed to report updated picture profile to callback"

    invoke-static {v15, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_7
    if-ne v1, v9, :cond_8

    .line 1571
    const-string v7, "Failed to report removed picture profile to callback"

    invoke-static {v15, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_8
    if-ne v1, v8, :cond_9

    .line 1573
    const-string v7, "Failed to report picture profile error to callback"

    invoke-static {v15, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_9
    if-ne v1, v7, :cond_a

    .line 1575
    const-string v7, "Failed to report picture profile parameter capability change to callback"

    invoke-static {v15, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1580
    :cond_b
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V
    .locals 16

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p0

    .line 1622
    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v5

    .line 1623
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    :goto_0
    if-ge v4, v6, :cond_b

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    .line 1627
    :try_start_0
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    .line 1628
    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    .line 1629
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v12

    .line 1630
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1632
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v13, p7

    if-ne v12, v13, :cond_5

    :try_start_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v12, p6

    if-ne v0, v12, :cond_0

    if-ne v1, v11, :cond_1

    .line 1634
    :try_start_2
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    .line 1635
    invoke-interface {v0, v2, v3}, Landroid/media/quality/ISoundProfileCallback;->onSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    :cond_0
    :goto_1
    move-object/from16 v14, p5

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v14, p5

    goto :goto_2

    :cond_1
    if-ne v1, v10, :cond_2

    .line 1637
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    .line 1638
    invoke-interface {v0, v2, v3}, Landroid/media/quality/ISoundProfileCallback;->onSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    goto :goto_1

    :cond_2
    if-ne v1, v9, :cond_3

    .line 1640
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    .line 1641
    invoke-interface {v0, v2, v3}, Landroid/media/quality/ISoundProfileCallback;->onSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    goto :goto_1

    :cond_3
    if-ne v1, v8, :cond_4

    .line 1643
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    .line 1644
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v0, v2, v14}, Landroid/media/quality/ISoundProfileCallback;->onError(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_0

    .line 1646
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v14, p5

    .line 1647
    :try_start_3
    invoke-interface {v0, v2, v14}, Landroid/media/quality/ISoundProfileCallback;->onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v14, p5

    move/from16 v12, p6

    goto :goto_2

    :cond_5
    move-object/from16 v14, p5

    move/from16 v12, p6

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v14, p5

    move/from16 v12, p6

    move/from16 v13, p7

    .line 1651
    :goto_2
    const-string v15, "MediaQualityService"

    if-ne v1, v11, :cond_6

    .line 1652
    const-string v7, "Failed to report added sound profile to callback"

    invoke-static {v15, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_6
    if-ne v1, v10, :cond_7

    .line 1654
    const-string v7, "Failed to report updated sound profile to callback"

    invoke-static {v15, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_7
    if-ne v1, v9, :cond_8

    .line 1656
    const-string v7, "Failed to report removed sound profile to callback"

    invoke-static {v15, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_8
    if-ne v1, v8, :cond_9

    .line 1658
    const-string v7, "Failed to report sound profile error to callback"

    invoke-static {v15, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_9
    if-ne v1, v7, :cond_a

    .line 1660
    const-string v7, "Failed to report sound profile parameter capability change to callback"

    invoke-static {v15, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1665
    :cond_b
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
