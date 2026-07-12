.class public interface abstract Landroid/os/IVoldTaskListener;
.super Ljava/lang/Object;
.source "IVoldTaskListener.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onFinished(ILandroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatus(ILandroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
