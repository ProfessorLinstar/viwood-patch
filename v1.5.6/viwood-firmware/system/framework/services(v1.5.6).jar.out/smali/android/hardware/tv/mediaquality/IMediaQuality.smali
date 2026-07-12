.class public interface abstract Landroid/hardware/tv/mediaquality/IMediaQuality;
.super Ljava/lang/Object;
.source "IMediaQuality.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 947
    const-string v2, "android$hardware$tv$mediaquality$IMediaQuality"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/tv/mediaquality/IMediaQuality;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getAutoAqEnabled()Z
.end method

.method public abstract getAutoPqEnabled()Z
.end method

.method public abstract getAutoSrEnabled()Z
.end method

.method public abstract getParamCaps([B[Landroid/hardware/tv/mediaquality/ParamCapability;)V
.end method

.method public abstract getPictureProfileListener()Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;
.end method

.method public abstract getSoundProfileListener()Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;
.end method

.method public abstract isAutoAqSupported()Z
.end method

.method public abstract isAutoPqSupported()Z
.end method

.method public abstract isAutoSrSupported()Z
.end method

.method public abstract sendDefaultPictureParameters(Landroid/hardware/tv/mediaquality/PictureParameters;)V
.end method

.method public abstract sendDefaultSoundParameters(Landroid/hardware/tv/mediaquality/SoundParameters;)V
.end method

.method public abstract setAmbientBacklightCallback(Landroid/hardware/tv/mediaquality/IMediaQualityCallback;)V
.end method

.method public abstract setAmbientBacklightDetectionEnabled(Z)V
.end method

.method public abstract setAmbientBacklightDetector(Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;)V
.end method

.method public abstract setAutoAqEnabled(Z)V
.end method

.method public abstract setAutoPqEnabled(Z)V
.end method

.method public abstract setAutoSrEnabled(Z)V
.end method

.method public abstract setPictureProfileAdjustmentListener(Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;)V
.end method

.method public abstract setSoundProfileAdjustmentListener(Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;)V
.end method
