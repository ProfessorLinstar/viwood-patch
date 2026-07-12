.class public abstract Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub;
.super Landroid/os/Binder;
.source "IPictureProfileAdjustmentListener.java"

# interfaces
.implements Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 59
    sget-object v0, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :pswitch_0
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 111
    :pswitch_1
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 103
    :cond_0
    const-string/jumbo p0, "onStreamStatusChanged"

    return-object p0

    .line 99
    :cond_1
    const-string/jumbo p0, "requestPictureParameters"

    return-object p0

    .line 95
    :cond_2
    const-string/jumbo p0, "onVendorParamCapabilityChanged"

    return-object p0

    .line 91
    :cond_3
    const-string/jumbo p0, "onParamCapabilityChanged"

    return-object p0

    .line 87
    :cond_4
    const-string/jumbo p0, "onPictureProfileAdjusted"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    .line 0
    const p0, 0xfffffe

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-static {p1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 126
    sget-object v0, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    if-eq p1, v2, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 185
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-interface {p0, p3, p4, p1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->onStreamStatusChanged(JB)V

    goto :goto_0

    .line 177
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-interface {p0, p3, p4}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->requestPictureParameters(J)V

    goto :goto_0

    .line 167
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 169
    sget-object p1, Landroid/hardware/tv/mediaquality/VendorParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/tv/mediaquality/VendorParamCapability;

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-interface {p0, p3, p4, p1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->onVendorParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V

    goto :goto_0

    .line 157
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 159
    sget-object p1, Landroid/hardware/tv/mediaquality/ParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/tv/mediaquality/ParamCapability;

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-interface {p0, p3, p4, p1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->onParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/ParamCapability;)V

    goto :goto_0

    .line 149
    :cond_8
    sget-object p1, Landroid/hardware/tv/mediaquality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/PictureProfile;

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-interface {p0, p1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->onPictureProfileAdjusted(Landroid/hardware/tv/mediaquality/PictureProfile;)V

    :goto_0
    return v2
.end method
