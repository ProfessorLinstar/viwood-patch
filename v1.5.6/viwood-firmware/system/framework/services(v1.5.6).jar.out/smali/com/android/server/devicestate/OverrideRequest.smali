.class public final Lcom/android/server/devicestate/OverrideRequest;
.super Ljava/lang/Object;
.source "OverrideRequest.java"


# instance fields
.field public final mFlags:I

.field public final mPid:I

.field public final mRequestType:I

.field public final mRequestedState:Landroid/hardware/devicestate/DeviceState;

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;IILandroid/hardware/devicestate/DeviceState;II)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 79
    iput p2, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 80
    iput p3, p0, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    .line 81
    iput-object p4, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 82
    iput p5, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    .line 83
    iput p6, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    return p0
.end method

.method public getPid()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    return p0
.end method

.method public getRequestType()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    return p0
.end method

.method public getRequestedDeviceState()Landroid/hardware/devicestate/DeviceState;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    return-object p0
.end method

.method public getRequestedStateIdentifier()I
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    return p0
.end method
