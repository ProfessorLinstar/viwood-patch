.class public interface abstract Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;
.super Ljava/lang/Object;
.source "IPictureProfileAdjustmentListener.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 343
    const-string v2, "android$hardware$tv$mediaquality$IPictureProfileAdjustmentListener"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract onParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/ParamCapability;)V
.end method

.method public abstract onPictureProfileAdjusted(Landroid/hardware/tv/mediaquality/PictureProfile;)V
.end method

.method public abstract onStreamStatusChanged(JB)V
.end method

.method public abstract onVendorParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V
.end method

.method public abstract requestPictureParameters(J)V
.end method
