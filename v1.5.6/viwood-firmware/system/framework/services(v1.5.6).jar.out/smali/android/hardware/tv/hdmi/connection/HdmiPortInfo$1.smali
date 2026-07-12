.class public Landroid/hardware/tv/hdmi/connection/HdmiPortInfo$1;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;
    .locals 0

    .line 23
    new-instance p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;

    invoke-direct {p0}, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;
    .locals 0

    .line 29
    new-array p0, p1, [Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo$1;->newArray(I)[Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;

    move-result-object p0

    return-object p0
.end method
