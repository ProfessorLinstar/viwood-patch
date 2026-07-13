.class public final Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;
.super Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub;
.source "MediaQualityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    .line 1997
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

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

.method public onParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/ParamCapability;)V
    .locals 1

    .line 1968
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object p0

    .line 1969
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1968
    invoke-static {p0, p1, p3, p2, v0}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileParameterCapabilitiesChanged(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V

    return-void
.end method

.method public onSoundProfileAdjusted(Landroid/hardware/tv/mediaquality/SoundProfile;)V
    .locals 2

    .line 1957
    iget-wide v0, p1, Landroid/hardware/tv/mediaquality/SoundProfile;->soundProfileId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1959
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/SoundProfile;->parameters:Landroid/hardware/tv/mediaquality/SoundParameters;

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/SoundParameters;->soundParameters:[Landroid/hardware/tv/mediaquality/SoundParameter;

    .line 1960
    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityUtils;->convertSoundParameterListToPersistableBundle([Landroid/hardware/tv/mediaquality/SoundParameter;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 1959
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/quality/MediaQualityService;->updateSoundProfileFromHal(Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onVendorParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V
    .locals 0

    .line 0
    return-void
.end method

.method public requestSoundParameters(J)V
    .locals 2

    .line 1980
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1982
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1983
    invoke-virtual {v0}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object p2

    .line 1982
    invoke-static {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnSoundProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    :cond_0
    return-void
.end method
