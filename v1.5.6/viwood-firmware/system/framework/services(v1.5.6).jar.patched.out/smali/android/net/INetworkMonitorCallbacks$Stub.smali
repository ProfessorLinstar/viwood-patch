.class public abstract Landroid/net/INetworkMonitorCallbacks$Stub;
.super Landroid/os/Binder;
.source "INetworkMonitorCallbacks.java"

# interfaces
.implements Landroid/net/INetworkMonitorCallbacks;


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_hideProvisioningNotification:I = 0x5

.field static final TRANSACTION_notifyCaptivePortalDataChanged:I = 0x9

.field static final TRANSACTION_notifyDataStallSuspected:I = 0x8

.field static final TRANSACTION_notifyNetworkTested:I = 0x2

.field static final TRANSACTION_notifyNetworkTestedWithExtras:I = 0x7

.field static final TRANSACTION_notifyPrivateDnsConfigResolved:I = 0x3

.field static final TRANSACTION_notifyProbeStatusChanged:I = 0x6

.field static final TRANSACTION_onNetworkMonitorCreated:I = 0x1

.field static final TRANSACTION_showProvisioningNotification:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    sget-object v0, Landroid/net/INetworkMonitorCallbacks;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    sget-object v0, Landroid/net/INetworkMonitorCallbacks;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    instance-of v1, v0, Landroid/net/INetworkMonitorCallbacks;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Landroid/net/INetworkMonitorCallbacks;

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    sget-object v0, Landroid/net/INetworkMonitorCallbacks;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-interface {p0}, Landroid/net/INetworkMonitorCallbacks;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-interface {p0}, Landroid/net/INetworkMonitorCallbacks;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 185
    :pswitch_0
    sget-object p1, Landroid/net/CaptivePortalData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/CaptivePortalData;

    .line 186
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 177
    :pswitch_1
    sget-object p1, Landroid/net/DataStallReportParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/DataStallReportParcelable;

    .line 178
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 169
    :pswitch_2
    sget-object p1, Landroid/net/NetworkTestResultParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTestResultParcelable;

    .line 170
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 159
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 162
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->notifyProbeStatusChanged(II)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 152
    :pswitch_4
    invoke-interface {p0}, Landroid/net/INetworkMonitorCallbacks;->hideProvisioningNotification()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 143
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 146
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 135
    :pswitch_6
    sget-object p1, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/PrivateDnsConfigParcel;

    .line 136
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 125
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->notifyNetworkTested(ILjava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 117
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/INetworkMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;

    move-result-object p1

    .line 118
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
