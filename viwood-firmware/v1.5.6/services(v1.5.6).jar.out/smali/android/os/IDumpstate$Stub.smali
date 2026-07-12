.class public abstract Landroid/os/IDumpstate$Stub;
.super Landroid/os/Binder;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# static fields
.field static final TRANSACTION_cancelBugreport:I = 0x3

.field static final TRANSACTION_preDumpUiData:I = 0x1

.field static final TRANSACTION_retrieveBugreport:I = 0x4

.field static final TRANSACTION_startBugreport:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 99
    const-string v0, "android.os.IDumpstate"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_0
    const-string v0, "android.os.IDumpstate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    instance-of v1, v0, Landroid/os/IDumpstate;

    if-eqz v1, :cond_1

    .line 112
    check-cast v0, Landroid/os/IDumpstate;

    return-object v0

    .line 114
    :cond_1
    new-instance v0, Landroid/os/IDumpstate$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IDumpstate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const-string v1, "android.os.IDumpstate"

    const/4 v10, 0x1

    if-lt p1, v10, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 124
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 127
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    if-eq p1, v10, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    .line 202
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 180
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object v8

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    .line 196
    invoke-interface/range {v0 .. v8}, Landroid/os/IDumpstate;->retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-interface {p0, v1, v2}, Landroid/os/IDumpstate;->cancelBugreport(ILjava/lang/String;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object v7

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    .line 162
    invoke-interface/range {v0 .. v9}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 135
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-interface {p0, v1}, Landroid/os/IDumpstate;->preDumpUiData(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v10
.end method
