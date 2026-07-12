.class public final Lcom/android/server/media/quality/MediaQualityService$HalNotifier;
.super Ljava/lang/Object;
.source "MediaQualityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public static bridge synthetic -$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifyHalOnPictureProfileChange(Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyHalOnSoundProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifyHalOnSoundProfileChange(Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    .line 1750
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method


# virtual methods
.method public final convertToHalPictureProfile(Ljava/lang/Long;Landroid/os/PersistableBundle;)Landroid/hardware/tv/mediaquality/PictureProfile;
    .locals 2

    .line 1700
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameters;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/PictureParameters;-><init>()V

    .line 1702
    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToPictureParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/tv/mediaquality/PictureParameters;->pictureParameters:[Landroid/hardware/tv/mediaquality/PictureParameter;

    .line 1705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 1707
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0, v0, v1, p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$msetVendorPictureParameters(Lcom/android/server/media/quality/MediaQualityService;Landroid/hardware/tv/mediaquality/PictureParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V

    .line 1710
    :cond_0
    new-instance p0, Landroid/hardware/tv/mediaquality/PictureProfile;

    invoke-direct {p0}, Landroid/hardware/tv/mediaquality/PictureProfile;-><init>()V

    .line 1712
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/hardware/tv/mediaquality/PictureProfile;->pictureProfileId:J

    .line 1713
    iput-object v0, p0, Landroid/hardware/tv/mediaquality/PictureProfile;->parameters:Landroid/hardware/tv/mediaquality/PictureParameters;

    .line 1715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public final convertToHalSoundProfile(Ljava/lang/Long;Landroid/os/PersistableBundle;)Landroid/hardware/tv/mediaquality/SoundProfile;
    .locals 2

    .line 1733
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameters;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/SoundParameters;-><init>()V

    .line 1735
    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToSoundParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/tv/mediaquality/SoundParameters;->soundParameters:[Landroid/hardware/tv/mediaquality/SoundParameter;

    .line 1737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 1739
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0, v0, v1, p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$msetVendorSoundParameters(Lcom/android/server/media/quality/MediaQualityService;Landroid/hardware/tv/mediaquality/SoundParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V

    .line 1742
    :cond_0
    new-instance p0, Landroid/hardware/tv/mediaquality/SoundProfile;

    invoke-direct {p0}, Landroid/hardware/tv/mediaquality/SoundProfile;-><init>()V

    .line 1744
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/hardware/tv/mediaquality/SoundProfile;->soundProfileId:J

    .line 1745
    iput-object v0, p0, Landroid/hardware/tv/mediaquality/SoundProfile;->parameters:Landroid/hardware/tv/mediaquality/SoundParameters;

    return-object p0
.end method

.method public final notifyHalOnPictureProfileChange(Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPpChangedListener(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1678
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCurrentPictureHandleToOriginal(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1685
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCurrentPictureHandleToOriginal(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    move-object p1, v0

    .line 1690
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPpChangedListener(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->convertToHalPictureProfile(Ljava/lang/Long;Landroid/os/PersistableBundle;)Landroid/hardware/tv/mediaquality/PictureProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;->onPictureProfileChanged(Landroid/hardware/tv/mediaquality/PictureProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1693
    const-string p1, "MediaQualityService"

    const-string p2, "Failed to notify HAL on picture profile change."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final notifyHalOnSoundProfileChange(Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1721
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSpChangedListener(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1723
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSpChangedListener(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    move-result-object v0

    .line 1724
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->convertToHalSoundProfile(Ljava/lang/Long;Landroid/os/PersistableBundle;)Landroid/hardware/tv/mediaquality/SoundProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;->onSoundProfileChanged(Landroid/hardware/tv/mediaquality/SoundProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1726
    const-string p1, "MediaQualityService"

    const-string p2, "Failed to notify HAL on sound profile change."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
