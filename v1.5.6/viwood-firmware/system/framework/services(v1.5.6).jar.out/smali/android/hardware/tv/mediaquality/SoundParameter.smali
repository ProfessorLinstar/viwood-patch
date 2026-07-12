.class public final Landroid/hardware/tv/mediaquality/SoundParameter;
.super Ljava/lang/Object;
.source "SoundParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/SoundParameter;",
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

    .line 328
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/SoundParameter$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/SoundParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    .line 46
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/SoundParameter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static autoVolumeControl(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 176
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static balance(I)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 56
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static bass(I)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 71
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static digitalOutput(B)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 266
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dolbyAudioProcessing(Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 221
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dolbyDialogueEnhancer(B)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 236
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static downmixMode(B)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 191
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dtsDrc(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 206
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dtsVirtualX(Landroid/hardware/tv/mediaquality/DtsVirtualX;)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 251
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static enhancedAudioReturnChannelEnabled(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 161
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static soundStyle(B)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 311
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static speakersDelayMs(I)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 146
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static speakersEnabled(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 131
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static surroundSoundEnabled(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 101
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static treble(I)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2

    .line 86
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 523
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 524
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_tagString(I)Ljava/lang/String;

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

    .line 553
    iput p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    .line 554
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 549
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

    .line 547
    :pswitch_0
    const-string/jumbo p0, "soundStyle"

    return-object p0

    .line 546
    :pswitch_1
    const-string p0, "activeProfile"

    return-object p0

    .line 545
    :pswitch_2
    const-string p0, "digitalOutputDelayMs"

    return-object p0

    .line 544
    :pswitch_3
    const-string p0, "digitalOutput"

    return-object p0

    .line 543
    :pswitch_4
    const-string p0, "dtsVirtualX"

    return-object p0

    .line 542
    :pswitch_5
    const-string p0, "dolbyDialogueEnhancer"

    return-object p0

    .line 541
    :pswitch_6
    const-string p0, "dolbyAudioProcessing"

    return-object p0

    .line 540
    :pswitch_7
    const-string p0, "dtsDrc"

    return-object p0

    .line 539
    :pswitch_8
    const-string p0, "downmixMode"

    return-object p0

    .line 538
    :pswitch_9
    const-string p0, "autoVolumeControl"

    return-object p0

    .line 537
    :pswitch_a
    const-string p0, "enhancedAudioReturnChannelEnabled"

    return-object p0

    .line 536
    :pswitch_b
    const-string/jumbo p0, "speakersDelayMs"

    return-object p0

    .line 535
    :pswitch_c
    const-string/jumbo p0, "speakersEnabled"

    return-object p0

    .line 534
    :pswitch_d
    const-string p0, "equalizerDetail"

    return-object p0

    .line 533
    :pswitch_e
    const-string/jumbo p0, "surroundSoundEnabled"

    return-object p0

    .line 532
    :pswitch_f
    const-string/jumbo p0, "treble"

    return-object p0

    .line 531
    :pswitch_10
    const-string p0, "bass"

    return-object p0

    .line 530
    :pswitch_11
    const-string p0, "balance"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 2

    .line 501
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getTag()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 509
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 506
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 503
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getEqualizerDetail()Landroid/hardware/tv/mediaquality/EqualizerDetail;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 516
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 517
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method

.method public getActiveProfile()Z
    .locals 1

    const/16 v0, 0x10

    .line 300
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 301
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getAutoVolumeControl()Z
    .locals 1

    const/16 v0, 0x8

    .line 180
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 181
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getBalance()I
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 61
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getBass()I
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 76
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDigitalOutput()B
    .locals 1

    const/16 v0, 0xe

    .line 270
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 271
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getDigitalOutputDelayMs()I
    .locals 1

    const/16 v0, 0xf

    .line 285
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 286
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;
    .locals 1

    const/16 v0, 0xb

    .line 225
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 226
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    return-object p0
.end method

.method public getDolbyDialogueEnhancer()B
    .locals 1

    const/16 v0, 0xc

    .line 240
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 241
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getDownmixMode()B
    .locals 1

    const/16 v0, 0x9

    .line 195
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 196
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getDtsDrc()Z
    .locals 1

    const/16 v0, 0xa

    .line 210
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 211
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;
    .locals 1

    const/16 v0, 0xd

    .line 255
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 256
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;

    return-object p0
.end method

.method public getEnhancedAudioReturnChannelEnabled()Z
    .locals 1

    const/4 v0, 0x7

    .line 165
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 166
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEqualizerDetail()Landroid/hardware/tv/mediaquality/EqualizerDetail;
    .locals 1

    const/4 v0, 0x4

    .line 120
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 121
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/mediaquality/EqualizerDetail;

    return-object p0
.end method

.method public getSoundStyle()B
    .locals 1

    const/16 v0, 0x11

    .line 315
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 316
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getSpeakersDelayMs()I
    .locals 1

    const/4 v0, 0x6

    .line 150
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 151
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSpeakersEnabled()Z
    .locals 1

    const/4 v0, 0x5

    .line 135
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 136
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getStability()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getSurroundSoundEnabled()Z
    .locals 1

    const/4 v0, 0x3

    .line 105
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 106
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getTag()I
    .locals 0

    .line 50
    iget p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    return p0
.end method

.method public getTreble()I
    .locals 1

    const/4 v0, 0x2

    .line 90
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 91
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 495
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

    .line 491
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 492
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 486
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 487
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 481
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 482
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 476
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 477
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 471
    :pswitch_4
    sget-object v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/DtsVirtualX;

    .line 472
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 466
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 467
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 461
    :pswitch_6
    sget-object v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    .line 462
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 456
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 457
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 451
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 452
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 446
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 447
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 441
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 442
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 436
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 437
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 431
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 432
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 426
    :pswitch_d
    sget-object v1, Landroid/hardware/tv/mediaquality/EqualizerDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/EqualizerDetail;

    .line 427
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 421
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 422
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 416
    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 417
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 411
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    .line 406
    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 1

    .line 341
    iget v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 395
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSoundStyle()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 392
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getActiveProfile()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 389
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDigitalOutputDelayMs()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 386
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDigitalOutput()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 383
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    .line 380
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyDialogueEnhancer()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 377
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    .line 374
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsDrc()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 371
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDownmixMode()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 368
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getAutoVolumeControl()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 365
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getEnhancedAudioReturnChannelEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 362
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSpeakersDelayMs()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 359
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSpeakersEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 356
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getEqualizerDetail()Landroid/hardware/tv/mediaquality/EqualizerDetail;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    .line 353
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSurroundSoundEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    .line 350
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getTreble()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 347
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getBass()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 344
    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getBalance()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
