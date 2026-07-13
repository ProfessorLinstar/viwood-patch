.class public abstract Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub;
.super Landroid/os/Binder;
.source "ISoundProfileAdjustmentListener.java"

# interfaces
.implements Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 56
    sget-object v0, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 100
    :pswitch_0
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 104
    :pswitch_1
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 96
    :cond_0
    const-string/jumbo p0, "requestSoundParameters"

    return-object p0

    .line 92
    :cond_1
    const-string/jumbo p0, "onVendorParamCapabilityChanged"

    return-object p0

    .line 88
    :cond_2
    const-string/jumbo p0, "onParamCapabilityChanged"

    return-object p0

    .line 84
    :cond_3
    const-string/jumbo p0, "onSoundProfileAdjusted"

    return-object p0

    nop

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

    .line 115
    invoke-static {p1}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 119
    sget-object v0, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    if-eq p1, v2, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 170
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-interface {p0, p3, p4}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->requestSoundParameters(J)V

    goto :goto_0

    .line 160
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 162
    sget-object p1, Landroid/hardware/tv/mediaquality/VendorParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/tv/mediaquality/VendorParamCapability;

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-interface {p0, p3, p4, p1}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->onVendorParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V

    goto :goto_0

    .line 150
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 152
    sget-object p1, Landroid/hardware/tv/mediaquality/ParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/tv/mediaquality/ParamCapability;

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-interface {p0, p3, p4, p1}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->onParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/ParamCapability;)V

    goto :goto_0

    .line 142
    :cond_7
    sget-object p1, Landroid/hardware/tv/mediaquality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/SoundProfile;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-interface {p0, p1}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->onSoundProfileAdjusted(Landroid/hardware/tv/mediaquality/SoundProfile;)V

    :goto_0
    return v2
.end method
