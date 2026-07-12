.class public Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;
.super Ljava/lang/Object;
.source "LockoutHalImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# instance fields
.field public mCurrentUserLockoutMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockoutModeForUser(I)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    return p0
.end method

.method public setCurrentUserLockoutMode(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    return-void
.end method

.method public setLockoutModeForUser(II)V
    .locals 0

    .line 37
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->setCurrentUserLockoutMode(I)V

    return-void
.end method
