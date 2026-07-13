.class public Landroid/net/netd/aidl/NativeUidRangeConfig$1;
.super Ljava/lang/Object;
.source "NativeUidRangeConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;
    .locals 0

    .line 40
    invoke-static {p1}, Landroid/net/netd/aidl/NativeUidRangeConfig;->-$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroid/net/netd/aidl/NativeUidRangeConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/netd/aidl/NativeUidRangeConfig;
    .locals 0

    .line 44
    new-array p0, p1, [Landroid/net/netd/aidl/NativeUidRangeConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroid/net/netd/aidl/NativeUidRangeConfig$1;->newArray(I)[Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object p0

    return-object p0
.end method
