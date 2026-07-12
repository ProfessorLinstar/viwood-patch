.class public Landroid/net/ipmemorystore/IOnStatusListener$Default;
.super Ljava/lang/Object;
.source "IOnStatusListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 33
    const-string p0, ""

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onComplete(Landroid/net/ipmemorystore/StatusParcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
