.class public abstract Landroid/hardware/broadcastradio/ITunerCallback$Stub;
.super Landroid/os/Binder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/broadcastradio/ITunerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 62
    sget-object v0, Landroid/hardware/broadcastradio/ITunerCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 85
    sget-object v0, Landroid/hardware/broadcastradio/ITunerCallback;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-interface {p0}, Landroid/hardware/broadcastradio/ITunerCallback;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-interface {p0}, Landroid/hardware/broadcastradio/ITunerCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 152
    :pswitch_0
    sget-object p1, Landroid/hardware/broadcastradio/VendorKeyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/ITunerCallback;->onParametersUpdated([Landroid/hardware/broadcastradio/VendorKeyValue;)V

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-interface {p0, p1, p3}, Landroid/hardware/broadcastradio/ITunerCallback;->onConfigFlagUpdated(IZ)V

    goto :goto_0

    .line 134
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/ITunerCallback;->onAntennaStateChange(Z)V

    goto :goto_0

    .line 126
    :pswitch_3
    sget-object p1, Landroid/hardware/broadcastradio/ProgramListChunk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/broadcastradio/ProgramListChunk;

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/broadcastradio/ProgramListChunk;)V

    goto :goto_0

    .line 118
    :pswitch_4
    sget-object p1, Landroid/hardware/broadcastradio/ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/broadcastradio/ProgramInfo;

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/ProgramInfo;)V

    goto :goto_0

    .line 108
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 110
    sget-object p3, Landroid/hardware/broadcastradio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/broadcastradio/ProgramSelector;

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-interface {p0, p1, p3}, Landroid/hardware/broadcastradio/ITunerCallback;->onTuneFailed(ILandroid/hardware/broadcastradio/ProgramSelector;)V

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
