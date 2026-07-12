.class public final Landroid/hardware/broadcastradio/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/broadcastradio/Metadata;",
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

    .line 424
    new-instance v0, Landroid/hardware/broadcastradio/Metadata$1;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/Metadata$1;-><init>()V

    sput-object v0, Landroid/hardware/broadcastradio/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Metadata;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/broadcastradio/Metadata-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/broadcastradio/Metadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 697
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Metadata;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Metadata;->_tagString(I)Ljava/lang/String;

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

    .line 733
    iput p1, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 734
    iput-object p2, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 729
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

    .line 727
    :pswitch_0
    const-string p0, "hdSubChannelsAvailable"

    return-object p0

    .line 726
    :pswitch_1
    const-string p0, "hdStationNameLong"

    return-object p0

    .line 725
    :pswitch_2
    const-string p0, "hdStationNameShort"

    return-object p0

    .line 724
    :pswitch_3
    const-string/jumbo p0, "ufids"

    return-object p0

    .line 723
    :pswitch_4
    const-string p0, "commercial"

    return-object p0

    .line 722
    :pswitch_5
    const-string p0, "commentActualText"

    return-object p0

    .line 721
    :pswitch_6
    const-string p0, "commentShortDescription"

    return-object p0

    .line 720
    :pswitch_7
    const-string p0, "genre"

    return-object p0

    .line 719
    :pswitch_8
    const-string p0, "dabComponentNameShort"

    return-object p0

    .line 718
    :pswitch_9
    const-string p0, "dabComponentName"

    return-object p0

    .line 717
    :pswitch_a
    const-string p0, "dabServiceNameShort"

    return-object p0

    .line 716
    :pswitch_b
    const-string p0, "dabServiceName"

    return-object p0

    .line 715
    :pswitch_c
    const-string p0, "dabEnsembleNameShort"

    return-object p0

    .line 714
    :pswitch_d
    const-string p0, "dabEnsembleName"

    return-object p0

    .line 713
    :pswitch_e
    const-string/jumbo p0, "programName"

    return-object p0

    .line 712
    :pswitch_f
    const-string p0, "albumArt"

    return-object p0

    .line 711
    :pswitch_10
    const-string/jumbo p0, "stationIcon"

    return-object p0

    .line 710
    :pswitch_11
    const-string/jumbo p0, "songAlbum"

    return-object p0

    .line 709
    :pswitch_12
    const-string/jumbo p0, "songArtist"

    return-object p0

    .line 708
    :pswitch_13
    const-string/jumbo p0, "songTitle"

    return-object p0

    .line 707
    :pswitch_14
    const-string/jumbo p0, "rdsRt"

    return-object p0

    .line 706
    :pswitch_15
    const-string/jumbo p0, "rbdsPty"

    return-object p0

    .line 705
    :pswitch_16
    const-string/jumbo p0, "rdsPty"

    return-object p0

    .line 704
    :pswitch_17
    const-string/jumbo p0, "rdsPs"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 645
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 684
    :cond_1
    instance-of v2, p1, Landroid/hardware/broadcastradio/Metadata;

    if-nez v2, :cond_2

    return v1

    .line 685
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/Metadata;

    .line 686
    iget v2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    iget v3, p1, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    if-eq v2, v3, :cond_3

    return v1

    .line 687
    :cond_3
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    iget-object p1, p1, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAlbumArt()I
    .locals 1

    const/16 v0, 0x8

    .line 186
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 187
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCommentActualText()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x12

    .line 336
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 337
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCommentShortDescription()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    .line 321
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 322
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCommercial()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x13

    .line 351
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 352
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabComponentName()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xe

    .line 276
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 277
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabComponentNameShort()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    .line 291
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 292
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabEnsembleName()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 216
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 217
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabEnsembleNameShort()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb

    .line 231
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 232
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabServiceName()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    .line 246
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 247
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabServiceNameShort()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xd

    .line 261
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 262
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    .line 306
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 307
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHdStationNameLong()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x16

    .line 396
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 397
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHdStationNameShort()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x15

    .line 381
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 382
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHdSubChannelsAvailable()I
    .locals 1

    const/16 v0, 0x17

    .line 411
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 412
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9

    .line 201
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 202
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRbdsPty()I
    .locals 1

    const/4 v0, 0x2

    .line 96
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 97
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRdsPs()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 67
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRdsPty()I
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 82
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRdsRt()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 111
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 112
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSongAlbum()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    .line 156
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 157
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSongArtist()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    .line 141
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 142
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSongTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    .line 126
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 127
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getStability()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getStationIcon()I
    .locals 1

    const/4 v0, 0x7

    .line 171
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 172
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTag()I
    .locals 0

    .line 56
    iget p0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    return p0
.end method

.method public getUfids()[Ljava/lang/String;
    .locals 1

    const/16 v0, 0x14

    .line 366
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 367
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 693
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 639
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

    .line 635
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 636
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 630
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 631
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 625
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 620
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 615
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 616
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 610
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 611
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 605
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 600
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 595
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 596
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 590
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 591
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 585
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 580
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 575
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 576
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 570
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 571
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 565
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 560
    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 555
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 556
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 550
    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 551
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 545
    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 540
    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 535
    :pswitch_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 530
    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 531
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 525
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 520
    :pswitch_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 521
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public toString()Ljava/lang/String;
    .locals 3

    .line 652
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    .line 678
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.hdSubChannelsAvailable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdSubChannelsAvailable()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 675
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.hdStationNameLong("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameLong()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 674
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.hdStationNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 673
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.ufids("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getUfids()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 672
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.commercial("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommercial()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 671
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.commentActualText("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentActualText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 670
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.commentShortDescription("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentShortDescription()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 669
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.genre("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getGenre()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 668
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabComponentNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 667
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabComponentName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 666
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabServiceNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 665
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabServiceName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 664
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabEnsembleNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 663
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabEnsembleName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 662
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.programName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getProgramName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 661
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.albumArt("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getAlbumArt()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 660
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.stationIcon("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getStationIcon()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 659
    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.songAlbum("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongAlbum()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 658
    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.songArtist("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongArtist()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 657
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.songTitle("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 656
    :pswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rdsRt("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsRt()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 655
    :pswitch_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rbdsPty("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRbdsPty()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 654
    :pswitch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rdsPty("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPty()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 653
    :pswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rdsPs("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPs()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 0

    .line 437
    iget p2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget p2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    packed-switch p2, :pswitch_data_0

    return-void

    .line 509
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdSubChannelsAvailable()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 506
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameLong()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 503
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 500
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getUfids()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void

    .line 497
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommercial()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 494
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentActualText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 491
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentShortDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 488
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getGenre()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 485
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 482
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 479
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 476
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 473
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 470
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 467
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getProgramName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 464
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getAlbumArt()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 461
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getStationIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 458
    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongAlbum()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 455
    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongArtist()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 452
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 449
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsRt()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 446
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRbdsPty()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 443
    :pswitch_16
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPty()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 440
    :pswitch_17
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPs()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
