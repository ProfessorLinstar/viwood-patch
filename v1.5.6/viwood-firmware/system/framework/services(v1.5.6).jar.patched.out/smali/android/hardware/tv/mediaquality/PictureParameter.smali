.class public final Landroid/hardware/tv/mediaquality/PictureParameter;
.super Ljava/lang/Object;
.source "PictureParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/PictureParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1336
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/PictureParameter$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/PictureParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    .line 109
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/PictureParameter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static LdMode(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 824
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static autoPictureQualityEnabled(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 479
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static autoSuperResolutionEnabled(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 494
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blueStretch(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 419
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static brightness(F)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 119
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorSpace(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 614
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x21

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperature(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 449
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureBlueGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 704
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x27

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureBlueOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 749
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x2a

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureGreenGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 689
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x26

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureGreenOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 734
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x29

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureRedGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 674
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x25

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureRedOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 719
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x28

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTune(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 434
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerBlueGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 314
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerBlueOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 269
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerBrightness(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 194
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerGreenGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 299
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerGreenOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 254
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 224
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueBlue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1019
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x3c

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueCyan(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1034
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x3d

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueFlesh(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1079
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x40

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueGreen(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1004
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x3b

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueMagenta(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1049
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x3e

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueRed(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 989
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x3a

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueYellow(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1064
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x3f

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceBlue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1229
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x4a

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceCyan(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1244
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x4b

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceFlesh(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1289
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x4e

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceGreen(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1214
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x49

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceMagenta(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1259
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x4c

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceRed(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1199
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x48

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceYellow(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1274
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x4d

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerRedGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 284
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerRedOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 239
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturation(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 209
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationBlue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1124
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x43

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationCyan(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1139
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x44

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationFlesh(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1184
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x47

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationGreen(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1109
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x42

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationMagenta(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1154
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x45

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationRed(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1094
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x41

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationYellow(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1169
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x46

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSwitch(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 974
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x39

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static contrast(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 134
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static cvrr(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 584
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x1f

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static deContour(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 374
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dynamicLumaControl(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 389
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static elevenPointBlue([I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 794
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    const/16 v1, 0x2d

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static elevenPointGreen([I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 779
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static elevenPointRed([I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 764
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    const/16 v1, 0x2b

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static filmMode(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 404
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static fleshTone(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 359
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static gamma(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 659
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x24

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static gamutMapping(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 524
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static globeDimming(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 464
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hdmiRgbRange(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 599
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x20

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 179
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static levelRange(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 509
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static lowBlueLight(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 809
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x2e

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static lowLatency(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 554
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static mpegNoiseReduction(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 344
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noiseReduction(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 329
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdBlueGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 869
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x32

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdBlueOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 914
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x35

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdContrast(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 959
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x38

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdGreenGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 854
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x31

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdGreenOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 899
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x34

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdHue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 929
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x36

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdRedGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 839
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x30

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdRedOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 884
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x33

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdSaturation(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 944
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x37

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static panelInitMaxLuminceNits(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 629
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x22

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static panelInitMaxLuminceValid(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 644
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x23

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static pcMode(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 539
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static pictureQualityEventType(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 1319
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x50

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static saturation(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 164
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static sharpness(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 149
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vrr(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2

    .line 569
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x1e

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 2019
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2020
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final _set(ILjava/lang/Object;)V
    .locals 0

    .line 2112
    iput p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    .line 2113
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 2108
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2106
    :pswitch_0
    const-string/jumbo p0, "pictureQualityEventType"

    return-object p0

    .line 2105
    :pswitch_1
    const-string p0, "activeProfile"

    return-object p0

    .line 2104
    :pswitch_2
    const-string p0, "colorTunerLuminanceFlesh"

    return-object p0

    .line 2103
    :pswitch_3
    const-string p0, "colorTunerLuminanceYellow"

    return-object p0

    .line 2102
    :pswitch_4
    const-string p0, "colorTunerLuminanceMagenta"

    return-object p0

    .line 2101
    :pswitch_5
    const-string p0, "colorTunerLuminanceCyan"

    return-object p0

    .line 2100
    :pswitch_6
    const-string p0, "colorTunerLuminanceBlue"

    return-object p0

    .line 2099
    :pswitch_7
    const-string p0, "colorTunerLuminanceGreen"

    return-object p0

    .line 2098
    :pswitch_8
    const-string p0, "colorTunerLuminanceRed"

    return-object p0

    .line 2097
    :pswitch_9
    const-string p0, "colorTunerSaturationFlesh"

    return-object p0

    .line 2096
    :pswitch_a
    const-string p0, "colorTunerSaturationYellow"

    return-object p0

    .line 2095
    :pswitch_b
    const-string p0, "colorTunerSaturationMagenta"

    return-object p0

    .line 2094
    :pswitch_c
    const-string p0, "colorTunerSaturationCyan"

    return-object p0

    .line 2093
    :pswitch_d
    const-string p0, "colorTunerSaturationBlue"

    return-object p0

    .line 2092
    :pswitch_e
    const-string p0, "colorTunerSaturationGreen"

    return-object p0

    .line 2091
    :pswitch_f
    const-string p0, "colorTunerSaturationRed"

    return-object p0

    .line 2090
    :pswitch_10
    const-string p0, "colorTunerHueFlesh"

    return-object p0

    .line 2089
    :pswitch_11
    const-string p0, "colorTunerHueYellow"

    return-object p0

    .line 2088
    :pswitch_12
    const-string p0, "colorTunerHueMagenta"

    return-object p0

    .line 2087
    :pswitch_13
    const-string p0, "colorTunerHueCyan"

    return-object p0

    .line 2086
    :pswitch_14
    const-string p0, "colorTunerHueBlue"

    return-object p0

    .line 2085
    :pswitch_15
    const-string p0, "colorTunerHueGreen"

    return-object p0

    .line 2084
    :pswitch_16
    const-string p0, "colorTunerHueRed"

    return-object p0

    .line 2083
    :pswitch_17
    const-string p0, "colorTunerSwitch"

    return-object p0

    .line 2082
    :pswitch_18
    const-string/jumbo p0, "osdContrast"

    return-object p0

    .line 2081
    :pswitch_19
    const-string/jumbo p0, "osdSaturation"

    return-object p0

    .line 2080
    :pswitch_1a
    const-string/jumbo p0, "osdHue"

    return-object p0

    .line 2079
    :pswitch_1b
    const-string/jumbo p0, "osdBlueOffset"

    return-object p0

    .line 2078
    :pswitch_1c
    const-string/jumbo p0, "osdGreenOffset"

    return-object p0

    .line 2077
    :pswitch_1d
    const-string/jumbo p0, "osdRedOffset"

    return-object p0

    .line 2076
    :pswitch_1e
    const-string/jumbo p0, "osdBlueGain"

    return-object p0

    .line 2075
    :pswitch_1f
    const-string/jumbo p0, "osdGreenGain"

    return-object p0

    .line 2074
    :pswitch_20
    const-string/jumbo p0, "osdRedGain"

    return-object p0

    .line 2073
    :pswitch_21
    const-string p0, "LdMode"

    return-object p0

    .line 2072
    :pswitch_22
    const-string/jumbo p0, "lowBlueLight"

    return-object p0

    .line 2071
    :pswitch_23
    const-string p0, "elevenPointBlue"

    return-object p0

    .line 2070
    :pswitch_24
    const-string p0, "elevenPointGreen"

    return-object p0

    .line 2069
    :pswitch_25
    const-string p0, "elevenPointRed"

    return-object p0

    .line 2068
    :pswitch_26
    const-string p0, "colorTemperatureBlueOffset"

    return-object p0

    .line 2067
    :pswitch_27
    const-string p0, "colorTemperatureGreenOffset"

    return-object p0

    .line 2066
    :pswitch_28
    const-string p0, "colorTemperatureRedOffset"

    return-object p0

    .line 2065
    :pswitch_29
    const-string p0, "colorTemperatureBlueGain"

    return-object p0

    .line 2064
    :pswitch_2a
    const-string p0, "colorTemperatureGreenGain"

    return-object p0

    .line 2063
    :pswitch_2b
    const-string p0, "colorTemperatureRedGain"

    return-object p0

    .line 2062
    :pswitch_2c
    const-string p0, "gamma"

    return-object p0

    .line 2061
    :pswitch_2d
    const-string/jumbo p0, "panelInitMaxLuminceValid"

    return-object p0

    .line 2060
    :pswitch_2e
    const-string/jumbo p0, "panelInitMaxLuminceNits"

    return-object p0

    .line 2059
    :pswitch_2f
    const-string p0, "colorSpace"

    return-object p0

    .line 2058
    :pswitch_30
    const-string p0, "hdmiRgbRange"

    return-object p0

    .line 2057
    :pswitch_31
    const-string p0, "cvrr"

    return-object p0

    .line 2056
    :pswitch_32
    const-string/jumbo p0, "vrr"

    return-object p0

    .line 2055
    :pswitch_33
    const-string/jumbo p0, "lowLatency"

    return-object p0

    .line 2054
    :pswitch_34
    const-string/jumbo p0, "pcMode"

    return-object p0

    .line 2053
    :pswitch_35
    const-string p0, "gamutMapping"

    return-object p0

    .line 2052
    :pswitch_36
    const-string/jumbo p0, "levelRange"

    return-object p0

    .line 2051
    :pswitch_37
    const-string p0, "autoSuperResolutionEnabled"

    return-object p0

    .line 2050
    :pswitch_38
    const-string p0, "autoPictureQualityEnabled"

    return-object p0

    .line 2049
    :pswitch_39
    const-string p0, "globeDimming"

    return-object p0

    .line 2048
    :pswitch_3a
    const-string p0, "colorTemperature"

    return-object p0

    .line 2047
    :pswitch_3b
    const-string p0, "colorTune"

    return-object p0

    .line 2046
    :pswitch_3c
    const-string p0, "blueStretch"

    return-object p0

    .line 2045
    :pswitch_3d
    const-string p0, "filmMode"

    return-object p0

    .line 2044
    :pswitch_3e
    const-string p0, "dynamicLumaControl"

    return-object p0

    .line 2043
    :pswitch_3f
    const-string p0, "deContour"

    return-object p0

    .line 2042
    :pswitch_40
    const-string p0, "fleshTone"

    return-object p0

    .line 2041
    :pswitch_41
    const-string/jumbo p0, "mpegNoiseReduction"

    return-object p0

    .line 2040
    :pswitch_42
    const-string/jumbo p0, "noiseReduction"

    return-object p0

    .line 2039
    :pswitch_43
    const-string p0, "colorTunerBlueGain"

    return-object p0

    .line 2038
    :pswitch_44
    const-string p0, "colorTunerGreenGain"

    return-object p0

    .line 2037
    :pswitch_45
    const-string p0, "colorTunerRedGain"

    return-object p0

    .line 2036
    :pswitch_46
    const-string p0, "colorTunerBlueOffset"

    return-object p0

    .line 2035
    :pswitch_47
    const-string p0, "colorTunerGreenOffset"

    return-object p0

    .line 2034
    :pswitch_48
    const-string p0, "colorTunerRedOffset"

    return-object p0

    .line 2033
    :pswitch_49
    const-string p0, "colorTunerHue"

    return-object p0

    .line 2032
    :pswitch_4a
    const-string p0, "colorTunerSaturation"

    return-object p0

    .line 2031
    :pswitch_4b
    const-string p0, "colorTunerBrightness"

    return-object p0

    .line 2030
    :pswitch_4c
    const-string p0, "hue"

    return-object p0

    .line 2029
    :pswitch_4d
    const-string/jumbo p0, "saturation"

    return-object p0

    .line 2028
    :pswitch_4e
    const-string/jumbo p0, "sharpness"

    return-object p0

    .line 2027
    :pswitch_4f
    const-string p0, "contrast"

    return-object p0

    .line 2026
    :pswitch_50
    const-string p0, "brightness"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public describeContents()I
    .locals 0

    .line 2013
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public getActiveProfile()Z
    .locals 1

    const/16 v0, 0x4f

    .line 1308
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1309
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getAutoPictureQualityEnabled()Z
    .locals 1

    const/16 v0, 0x18

    .line 483
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 484
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getAutoSuperResolutionEnabled()Z
    .locals 1

    const/16 v0, 0x19

    .line 498
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 499
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getBlueStretch()Z
    .locals 1

    const/16 v0, 0x14

    .line 423
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 424
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getBrightness()F
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 124
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getColorSpace()B
    .locals 1

    const/16 v0, 0x21

    .line 618
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 619
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getColorTemperature()B
    .locals 1

    const/16 v0, 0x16

    .line 453
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 454
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getColorTemperatureBlueGain()I
    .locals 1

    const/16 v0, 0x27

    .line 708
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 709
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTemperatureBlueOffset()I
    .locals 1

    const/16 v0, 0x2a

    .line 753
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 754
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTemperatureGreenGain()I
    .locals 1

    const/16 v0, 0x26

    .line 693
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 694
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTemperatureGreenOffset()I
    .locals 1

    const/16 v0, 0x29

    .line 738
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 739
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTemperatureRedGain()I
    .locals 1

    const/16 v0, 0x25

    .line 678
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 679
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTemperatureRedOffset()I
    .locals 1

    const/16 v0, 0x28

    .line 723
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 724
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTune()Z
    .locals 1

    const/16 v0, 0x15

    .line 438
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 439
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getColorTunerBlueGain()I
    .locals 1

    const/16 v0, 0xd

    .line 318
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 319
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerBlueOffset()I
    .locals 1

    const/16 v0, 0xa

    .line 273
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 274
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerBrightness()I
    .locals 1

    const/4 v0, 0x5

    .line 198
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 199
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerGreenGain()I
    .locals 1

    const/16 v0, 0xc

    .line 303
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 304
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerGreenOffset()I
    .locals 1

    const/16 v0, 0x9

    .line 258
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 259
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerHue()I
    .locals 1

    const/4 v0, 0x7

    .line 228
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 229
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerHueBlue()I
    .locals 1

    const/16 v0, 0x3c

    .line 1023
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1024
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerHueCyan()I
    .locals 1

    const/16 v0, 0x3d

    .line 1038
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1039
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerHueFlesh()I
    .locals 1

    const/16 v0, 0x40

    .line 1083
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1084
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerHueGreen()I
    .locals 1

    const/16 v0, 0x3b

    .line 1008
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1009
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerHueMagenta()I
    .locals 1

    const/16 v0, 0x3e

    .line 1053
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1054
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerHueRed()I
    .locals 1

    const/16 v0, 0x3a

    .line 993
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 994
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerHueYellow()I
    .locals 1

    const/16 v0, 0x3f

    .line 1068
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1069
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerLuminanceBlue()I
    .locals 1

    const/16 v0, 0x4a

    .line 1233
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1234
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerLuminanceCyan()I
    .locals 1

    const/16 v0, 0x4b

    .line 1248
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1249
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerLuminanceFlesh()I
    .locals 1

    const/16 v0, 0x4e

    .line 1293
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1294
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerLuminanceGreen()I
    .locals 1

    const/16 v0, 0x49

    .line 1218
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1219
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerLuminanceMagenta()I
    .locals 1

    const/16 v0, 0x4c

    .line 1263
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1264
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerLuminanceRed()I
    .locals 1

    const/16 v0, 0x48

    .line 1203
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1204
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerLuminanceYellow()I
    .locals 1

    const/16 v0, 0x4d

    .line 1278
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1279
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerRedGain()I
    .locals 1

    const/16 v0, 0xb

    .line 288
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 289
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerRedOffset()I
    .locals 1

    const/16 v0, 0x8

    .line 243
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 244
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerSaturation()I
    .locals 1

    const/4 v0, 0x6

    .line 213
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 214
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerSaturationBlue()I
    .locals 1

    const/16 v0, 0x43

    .line 1128
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1129
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerSaturationCyan()I
    .locals 1

    const/16 v0, 0x44

    .line 1143
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1144
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerSaturationFlesh()I
    .locals 1

    const/16 v0, 0x47

    .line 1188
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1189
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerSaturationGreen()I
    .locals 1

    const/16 v0, 0x42

    .line 1113
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1114
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerSaturationMagenta()I
    .locals 1

    const/16 v0, 0x45

    .line 1158
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1159
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerSaturationRed()I
    .locals 1

    const/16 v0, 0x41

    .line 1098
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1099
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerSaturationYellow()I
    .locals 1

    const/16 v0, 0x46

    .line 1173
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1174
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColorTunerSwitch()Z
    .locals 1

    const/16 v0, 0x39

    .line 978
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 979
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getContrast()I
    .locals 1

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 139
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCvrr()Z
    .locals 1

    const/16 v0, 0x1f

    .line 588
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 589
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getDeContour()B
    .locals 1

    const/16 v0, 0x11

    .line 378
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 379
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getDynamicLumaControl()B
    .locals 1

    const/16 v0, 0x12

    .line 393
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 394
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getElevenPointBlue()[I
    .locals 1

    const/16 v0, 0x2d

    .line 798
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 799
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public getElevenPointGreen()[I
    .locals 1

    const/16 v0, 0x2c

    .line 783
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 784
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public getElevenPointRed()[I
    .locals 1

    const/16 v0, 0x2b

    .line 768
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 769
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public getFilmMode()Z
    .locals 1

    const/16 v0, 0x13

    .line 408
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 409
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getFleshTone()B
    .locals 1

    const/16 v0, 0x10

    .line 363
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 364
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getGamma()B
    .locals 1

    const/16 v0, 0x24

    .line 663
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 664
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getGamutMapping()Z
    .locals 1

    const/16 v0, 0x1b

    .line 528
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 529
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getGlobeDimming()Z
    .locals 1

    const/16 v0, 0x17

    .line 468
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 469
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getHdmiRgbRange()B
    .locals 1

    const/16 v0, 0x20

    .line 603
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 604
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getHue()I
    .locals 1

    const/4 v0, 0x4

    .line 183
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 184
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLdMode()B
    .locals 1

    const/16 v0, 0x2f

    .line 828
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 829
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getLevelRange()B
    .locals 1

    const/16 v0, 0x1a

    .line 513
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 514
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getLowBlueLight()B
    .locals 1

    const/16 v0, 0x2e

    .line 813
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 814
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getLowLatency()Z
    .locals 1

    const/16 v0, 0x1d

    .line 558
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 559
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getMpegNoiseReduction()B
    .locals 1

    const/16 v0, 0xf

    .line 348
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 349
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getNoiseReduction()B
    .locals 1

    const/16 v0, 0xe

    .line 333
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 334
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getOsdBlueGain()I
    .locals 1

    const/16 v0, 0x32

    .line 873
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 874
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOsdBlueOffset()I
    .locals 1

    const/16 v0, 0x35

    .line 918
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 919
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOsdContrast()I
    .locals 1

    const/16 v0, 0x38

    .line 963
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 964
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOsdGreenGain()I
    .locals 1

    const/16 v0, 0x31

    .line 858
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 859
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOsdGreenOffset()I
    .locals 1

    const/16 v0, 0x34

    .line 903
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 904
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOsdHue()I
    .locals 1

    const/16 v0, 0x36

    .line 933
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 934
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOsdRedGain()I
    .locals 1

    const/16 v0, 0x30

    .line 843
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 844
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOsdRedOffset()I
    .locals 1

    const/16 v0, 0x33

    .line 888
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 889
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOsdSaturation()I
    .locals 1

    const/16 v0, 0x37

    .line 948
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 949
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPanelInitMaxLuminceNits()I
    .locals 1

    const/16 v0, 0x22

    .line 633
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 634
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPanelInitMaxLuminceValid()Z
    .locals 1

    const/16 v0, 0x23

    .line 648
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 649
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPcMode()Z
    .locals 1

    const/16 v0, 0x1c

    .line 543
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 544
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPictureQualityEventType()B
    .locals 1

    const/16 v0, 0x50

    .line 1323
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1324
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getSaturation()I
    .locals 1

    const/4 v0, 0x3

    .line 168
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 169
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSharpness()I
    .locals 1

    const/4 v0, 0x2

    .line 153
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 154
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getStability()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getTag()I
    .locals 0

    .line 113
    iget p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    return p0
.end method

.method public getVrr()Z
    .locals 1

    const/16 v0, 0x1e

    .line 573
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 574
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 1599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, 0xb

    .line 1600
    const-class v2, [I

    packed-switch v0, :pswitch_data_0

    .line 2007
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "union: unknown tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2003
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 2004
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1998
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1999
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1993
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1994
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1988
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1989
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1983
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1984
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1978
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1979
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1973
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1974
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1968
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1969
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1963
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1964
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1958
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1959
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1953
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1954
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1948
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1949
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1943
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1944
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1938
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1939
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1933
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1934
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1928
    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1929
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1923
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1924
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1918
    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1919
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1913
    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1914
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1908
    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1909
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1903
    :pswitch_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1904
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1898
    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1899
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1893
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1894
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1888
    :pswitch_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1889
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1883
    :pswitch_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1884
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1878
    :pswitch_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1879
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1873
    :pswitch_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1874
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1868
    :pswitch_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1869
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1863
    :pswitch_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1864
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1858
    :pswitch_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1859
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1853
    :pswitch_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1854
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1848
    :pswitch_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1849
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1843
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1844
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1838
    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1839
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1833
    :pswitch_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1834
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1828
    :pswitch_23
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 1829
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1823
    :pswitch_24
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 1824
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1818
    :pswitch_25
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 1819
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1813
    :pswitch_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1814
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1808
    :pswitch_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1803
    :pswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1804
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1798
    :pswitch_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1799
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1793
    :pswitch_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1794
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1788
    :pswitch_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1789
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1783
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1784
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1778
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1779
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1773
    :pswitch_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1774
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1768
    :pswitch_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1769
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1763
    :pswitch_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1764
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1758
    :pswitch_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1759
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1753
    :pswitch_32
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1754
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1748
    :pswitch_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1749
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1743
    :pswitch_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1744
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1738
    :pswitch_35
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1739
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1733
    :pswitch_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1734
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1728
    :pswitch_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1729
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1723
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1724
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1718
    :pswitch_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1719
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1713
    :pswitch_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1714
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1708
    :pswitch_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1709
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1703
    :pswitch_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1704
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1698
    :pswitch_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1699
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1693
    :pswitch_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1694
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1688
    :pswitch_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1689
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1683
    :pswitch_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1684
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1678
    :pswitch_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1679
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1673
    :pswitch_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1674
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1668
    :pswitch_43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1669
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1663
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1664
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1658
    :pswitch_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1659
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1653
    :pswitch_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1654
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1648
    :pswitch_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1649
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1643
    :pswitch_48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1644
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1638
    :pswitch_49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1639
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1633
    :pswitch_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1634
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1628
    :pswitch_4b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1629
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1623
    :pswitch_4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1624
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1618
    :pswitch_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1619
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1613
    :pswitch_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1614
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1608
    :pswitch_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1609
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 1603
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 1604
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1349
    iget v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    iget v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    const/16 v1, 0xb

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1592
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPictureQualityEventType()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1589
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getActiveProfile()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1586
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceFlesh()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1583
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceYellow()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1580
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceMagenta()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1577
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceCyan()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1574
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceBlue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1571
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceGreen()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1568
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceRed()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1565
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationFlesh()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1562
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationYellow()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1559
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationMagenta()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1556
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationCyan()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1553
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationBlue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1550
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationGreen()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1547
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationRed()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1544
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueFlesh()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1541
    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueYellow()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1538
    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueMagenta()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1535
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueCyan()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1532
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueBlue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1529
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueGreen()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1526
    :pswitch_16
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueRed()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1523
    :pswitch_17
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSwitch()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1520
    :pswitch_18
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdContrast()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1517
    :pswitch_19
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdSaturation()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1514
    :pswitch_1a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdHue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1511
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdBlueOffset()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1508
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdGreenOffset()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1505
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdRedOffset()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1502
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdBlueGain()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1499
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdGreenGain()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1496
    :pswitch_20
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdRedGain()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1493
    :pswitch_21
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLdMode()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1490
    :pswitch_22
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLowBlueLight()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1487
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointBlue()[I

    move-result-object p0

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void

    .line 1484
    :pswitch_24
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointGreen()[I

    move-result-object p0

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void

    .line 1481
    :pswitch_25
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointRed()[I

    move-result-object p0

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void

    .line 1478
    :pswitch_26
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureBlueOffset()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1475
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureGreenOffset()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1472
    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureRedOffset()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1469
    :pswitch_29
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureBlueGain()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1466
    :pswitch_2a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureGreenGain()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1463
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureRedGain()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1460
    :pswitch_2c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getGamma()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1457
    :pswitch_2d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPanelInitMaxLuminceValid()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1454
    :pswitch_2e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPanelInitMaxLuminceNits()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1451
    :pswitch_2f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorSpace()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1448
    :pswitch_30
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getHdmiRgbRange()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1445
    :pswitch_31
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getCvrr()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1442
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getVrr()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1439
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLowLatency()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1436
    :pswitch_34
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPcMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1433
    :pswitch_35
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getGamutMapping()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1430
    :pswitch_36
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLevelRange()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1427
    :pswitch_37
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getAutoSuperResolutionEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1424
    :pswitch_38
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getAutoPictureQualityEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1421
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getGlobeDimming()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1418
    :pswitch_3a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperature()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1415
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTune()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1412
    :pswitch_3c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getBlueStretch()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1409
    :pswitch_3d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getFilmMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 1406
    :pswitch_3e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getDynamicLumaControl()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1403
    :pswitch_3f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getDeContour()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1400
    :pswitch_40
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getFleshTone()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1397
    :pswitch_41
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getMpegNoiseReduction()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1394
    :pswitch_42
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getNoiseReduction()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 1391
    :pswitch_43
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBlueGain()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1388
    :pswitch_44
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerGreenGain()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1385
    :pswitch_45
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerRedGain()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1382
    :pswitch_46
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBlueOffset()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1379
    :pswitch_47
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerGreenOffset()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1376
    :pswitch_48
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerRedOffset()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1373
    :pswitch_49
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1370
    :pswitch_4a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturation()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1367
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBrightness()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1364
    :pswitch_4c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getHue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1361
    :pswitch_4d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getSaturation()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1358
    :pswitch_4e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getSharpness()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1355
    :pswitch_4f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getContrast()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1352
    :pswitch_50
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getBrightness()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
