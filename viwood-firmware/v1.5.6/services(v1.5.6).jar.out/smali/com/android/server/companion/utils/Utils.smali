.class public abstract Lcom/android/server/companion/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static prepareForIpc(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method
