.class public final Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;
.super Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub;
.source "MediaQualityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public static synthetic $r8$lambda$o1iLVm9eg4-NqWRAXxTtdPS5gk4(Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;JB)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->lambda$onStreamStatusChanged$0(JB)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    .line 1946
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isHdr(Ljava/lang/String;)Z
    .locals 0

    .line 1933
    const-string p0, "HDR"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSdr(Ljava/lang/String;)Z
    .locals 0

    .line 1928
    const-string p0, "SDR"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1929
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

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

.method public final synthetic lambda$onStreamStatusChanged$0(JB)V
    .locals 8

    .line 1827
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1829
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandleToPictureProfile(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/quality/PictureProfile;

    if-nez v1, :cond_0

    .line 1832
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1834
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 1837
    :cond_0
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->splitNameAndStatus(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1838
    aget-object v4, v2, v3

    const/4 v5, 0x1

    .line 1839
    aget-object v2, v2, v5

    const/4 v6, 0x2

    if-ne p3, v6, :cond_3

    .line 1841
    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->isHdr(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1843
    monitor-exit v0

    return-void

    .line 1845
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->isSdr(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1847
    const-string p3, "_type = ? AND _package = ? AND _name = ?"

    .line 1851
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1852
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "HDR"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 1855
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v2

    .line 1857
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v4

    .line 1856
    invoke-static {v2, v4, p3, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 1860
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1862
    monitor-exit v0

    return-void

    .line 1864
    :cond_2
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/quality/PictureProfile;

    .line 1865
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandleToPictureProfile(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCurrentPictureHandleToOriginal(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    .line 1867
    invoke-virtual {p3}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1866
    invoke-virtual {v1, v2, v3}, Lcom/android/server/media/quality/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1869
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1870
    invoke-virtual {p3}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object p2

    .line 1869
    invoke-static {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    goto/16 :goto_0

    :cond_3
    if-nez p3, :cond_6

    .line 1874
    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->isSdr(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1876
    monitor-exit v0

    return-void

    .line 1878
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->isHdr(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1880
    const-string p3, "_type = ? AND _package = ? AND (_name = ? OR _name = ?)"

    .line 1885
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1886
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SDR"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v1, v4, v6}, [Ljava/lang/String;

    move-result-object v1

    .line 1890
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v2

    .line 1892
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v4

    .line 1891
    invoke-static {v2, v4, p3, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 1895
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1897
    monitor-exit v0

    return-void

    .line 1899
    :cond_5
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/quality/PictureProfile;

    .line 1900
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandleToPictureProfile(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCurrentPictureHandleToOriginal(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    .line 1902
    invoke-virtual {p3}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1901
    invoke-virtual {v1, v2, v3}, Lcom/android/server/media/quality/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1904
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1905
    invoke-virtual {p3}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object p2

    .line 1904
    invoke-static {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 1908
    :cond_6
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/ParamCapability;)V
    .locals 1

    .line 1804
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p0

    .line 1805
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1804
    invoke-static {p0, p1, p3, p2, v0}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileParameterCapabilitiesChanged(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V

    return-void
.end method

.method public onPictureProfileAdjusted(Landroid/hardware/tv/mediaquality/PictureProfile;)V
    .locals 2

    .line 1793
    iget-wide v0, p1, Landroid/hardware/tv/mediaquality/PictureProfile;->pictureProfileId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1795
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/PictureProfile;->parameters:Landroid/hardware/tv/mediaquality/PictureParameters;

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/PictureParameters;->pictureParameters:[Landroid/hardware/tv/mediaquality/PictureParameter;

    .line 1796
    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPictureParameterListToPersistableBundle([Landroid/hardware/tv/mediaquality/PictureParameter;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 1795
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/quality/MediaQualityService;->updatePictureProfileFromHal(Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onStreamStatusChanged(JB)V
    .locals 2

    .line 1826
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;JB)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVendorParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V
    .locals 0

    .line 0
    return-void
.end method

.method public requestPictureParameters(J)V
    .locals 2

    .line 1816
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1818
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1819
    invoke-virtual {v0}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object p2

    .line 1818
    invoke-static {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    :cond_0
    return-void
.end method

.method public final splitNameAndStatus(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/16 p0, 0x2f

    .line 1915
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 1916
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1921
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    .line 1922
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1918
    :cond_1
    :goto_0
    const-string p0, ""

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
