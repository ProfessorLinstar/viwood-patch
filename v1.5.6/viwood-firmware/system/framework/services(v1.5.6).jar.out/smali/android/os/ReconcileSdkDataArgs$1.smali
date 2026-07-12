.class public Landroid/os/ReconcileSdkDataArgs$1;
.super Ljava/lang/Object;
.source "ReconcileSdkDataArgs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ReconcileSdkDataArgs;
    .locals 0

    .line 24
    new-instance p0, Landroid/os/ReconcileSdkDataArgs;

    invoke-direct {p0}, Landroid/os/ReconcileSdkDataArgs;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/os/ReconcileSdkDataArgs;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/os/ReconcileSdkDataArgs$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ReconcileSdkDataArgs;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/ReconcileSdkDataArgs;
    .locals 0

    .line 30
    new-array p0, p1, [Landroid/os/ReconcileSdkDataArgs;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/os/ReconcileSdkDataArgs$1;->newArray(I)[Landroid/os/ReconcileSdkDataArgs;

    move-result-object p0

    return-object p0
.end method
