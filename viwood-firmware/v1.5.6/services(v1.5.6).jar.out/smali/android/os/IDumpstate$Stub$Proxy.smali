.class public Landroid/os/IDumpstate$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 216
    iget-object p0, p0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public cancelBugreport(ILjava/lang/String;)V
    .locals 3

    .line 302
    invoke-virtual {p0}, Landroid/os/IDumpstate$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 305
    :try_start_0
    const-string v2, "android.os.IDumpstate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object p0, p0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw p0
.end method

.method public preDumpUiData(Ljava/lang/String;)V
    .locals 3

    .line 236
    invoke-virtual {p0}, Landroid/os/IDumpstate$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 239
    :try_start_0
    const-string v2, "android.os.IDumpstate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object p0, p0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw p0
.end method

.method public retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    .locals 3

    .line 334
    invoke-virtual {p0}, Landroid/os/IDumpstate$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 337
    :try_start_0
    const-string v2, "android.os.IDumpstate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 342
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 344
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 345
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 346
    iget-object p0, p0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    throw p0
.end method

.method public startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    .locals 3

    .line 269
    invoke-virtual {p0}, Landroid/os/IDumpstate$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 272
    :try_start_0
    const-string v2, "android.os.IDumpstate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 276
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 277
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 280
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 281
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    iget-object p0, p0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 288
    throw p0
.end method
