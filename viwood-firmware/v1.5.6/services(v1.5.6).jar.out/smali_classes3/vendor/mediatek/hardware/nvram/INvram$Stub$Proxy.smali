.class public Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;
.super Ljava/lang/Object;
.source "INvram.java"

# interfaces
.implements Lvendor/mediatek/hardware/nvram/INvram;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 290
    iput v0, p0, Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;->mCachedVersion:I

    .line 291
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 294
    iget-object p0, p0, Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public readFileByName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 490
    invoke-virtual {p0}, Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 494
    :try_start_0
    sget-object v2, Lvendor/mediatek/hardware/nvram/INvram;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object p0, p0, Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 499
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method readFileByName is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 507
    throw p0
.end method

.method public writeFileByNamevec(Ljava/lang/String;I[B)B
    .locals 3

    .line 534
    invoke-virtual {p0}, Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 538
    :try_start_0
    sget-object v2, Lvendor/mediatek/hardware/nvram/INvram;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 542
    iget-object p0, p0, Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 544
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method writeFileByNamevec is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    throw p0
.end method
