.class public Landroid/os/CreateAppDataResult$1;
.super Ljava/lang/Object;
.source "CreateAppDataResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/CreateAppDataResult;
    .locals 0

    .line 20
    new-instance p0, Landroid/os/CreateAppDataResult;

    invoke-direct {p0}, Landroid/os/CreateAppDataResult;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/os/CreateAppDataResult;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/CreateAppDataResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/CreateAppDataResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/CreateAppDataResult;
    .locals 0

    .line 26
    new-array p0, p1, [Landroid/os/CreateAppDataResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/CreateAppDataResult$1;->newArray(I)[Landroid/os/CreateAppDataResult;

    move-result-object p0

    return-object p0
.end method
