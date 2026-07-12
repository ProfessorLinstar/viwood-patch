.class public final Lcom/android/server/devicestate/OverrideRequestController;
.super Ljava/lang/Object;
.source "OverrideRequestController.java"


# instance fields
.field public mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

.field public final mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

.field public mRequest:Lcom/android/server/devicestate/OverrideRequest;

.field public mStickyRequest:Z

.field public mStickyRequestsAllowed:Z


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    return-void
.end method

.method public static contains([II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 324
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 325
    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static statusToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 85
    const-string p0, "CANCELED"

    return-object p0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    const-string p0, "ACTIVE"

    return-object p0

    .line 87
    :cond_2
    const-string p0, "UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public addBaseStateRequest(Lcom/android/server/devicestate/OverrideRequest;)V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 136
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 137
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;)V

    :cond_0
    return-void
.end method

.method public addRequest(Lcom/android/server/devicestate/OverrideRequest;)V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 126
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 127
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;)V

    :cond_0
    return-void
.end method

.method public cancelBaseStateOverrideRequest()V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentBaseStateRequestLocked()V

    return-void
.end method

.method public final cancelCurrentBaseStateRequestLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentBaseStateRequestLocked(I)V

    return-void
.end method

.method public final cancelCurrentBaseStateRequestLocked(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_0

    .line 316
    const-string p0, "OverrideRequestController"

    const-string p1, "Attempted to cancel a null OverrideRequest"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 319
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    const/4 p1, 0x0

    .line 320
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    return-void
.end method

.method public final cancelCurrentRequestLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    return-void
.end method

.method public final cancelCurrentRequestLocked(I)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_0

    .line 298
    const-string p0, "OverrideRequestController"

    const-string p1, "Attempted to cancel a null OverrideRequest"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 301
    iput-boolean v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    .line 302
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    const/4 p1, 0x0

    .line 303
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    return-void
.end method

.method public cancelOverrideRequest()V
    .locals 0

    .line 173
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    return-void
.end method

.method public cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestType()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(Landroid/os/IBinder;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    return-void
.end method

.method public final cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;)V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    return-void
.end method

.method public final cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V
    .locals 1

    .line 285
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v0, 0x2

    invoke-interface {p0, p1, v0, p2}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    return-void
.end method

.method public cancelStickyRequest()V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    :cond_0
    return-void
.end method

.method public dumpInternal(Ljava/io/PrintWriter;)V
    .locals 4

    .line 267
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 269
    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Override Request active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request: mPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getFlags()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", mStatus="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {v0}, Lcom/android/server/devicestate/OverrideRequestController;->statusToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public handleBaseStateChanged(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelBaseStateOverrideRequest()V

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez p1, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleNewSupportedStates([II)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    or-int p2, v0, v2

    .line 255
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v0

    .line 255
    invoke-static {p1, v0}, Lcom/android/server/devicestate/OverrideRequestController;->contains([II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    invoke-virtual {p0, p2}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentBaseStateRequestLocked(I)V

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v0, :cond_4

    .line 261
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v0

    .line 260
    invoke-static {p1, v0}, Lcom/android/server/devicestate/OverrideRequestController;->contains([II)Z

    move-result p1

    if-nez p1, :cond_4

    .line 262
    invoke-virtual {p0, p2}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    :cond_4
    return-void
.end method

.method public handleProcessDied(I)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentBaseStateRequestLocked()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 208
    iget-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedDeviceState()Landroid/hardware/devicestate/DeviceState;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    return-void

    .line 214
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    return-void

    .line 220
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    :cond_3
    return-void
.end method

.method public hasRequest(Landroid/os/IBinder;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 191
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    return v0

    .line 193
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public setStickyRequestsAllowed(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    if-nez p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelStickyRequest()V

    :cond_0
    return-void
.end method
