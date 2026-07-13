.class public Landroid/hardware/broadcastradio/ProgramInfo$1;
.super Ljava/lang/Object;
.source "ProgramInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/ProgramInfo;
    .locals 0

    .line 26
    new-instance p0, Landroid/hardware/broadcastradio/ProgramInfo;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/ProgramInfo;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/ProgramInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/ProgramInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/ProgramInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/broadcastradio/ProgramInfo;
    .locals 0

    .line 32
    new-array p0, p1, [Landroid/hardware/broadcastradio/ProgramInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/ProgramInfo$1;->newArray(I)[Landroid/hardware/broadcastradio/ProgramInfo;

    move-result-object p0

    return-object p0
.end method
