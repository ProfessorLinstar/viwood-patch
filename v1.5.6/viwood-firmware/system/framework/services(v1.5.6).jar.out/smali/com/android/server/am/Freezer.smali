.class Lcom/android/server/am/Freezer;
.super Ljava/lang/Object;
.source "Freezer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeFreezeBinder(IZI)I
.end method

.method private static native nativeGetBinderFreezeInfo(I)I
.end method

.method private static native nativeIsFreezerSupported()Z
.end method


# virtual methods
.method public freezeBinder(IZI)I
    .locals 0

    .line 60
    invoke-static {p1, p2, p3}, Lcom/android/server/am/Freezer;->nativeFreezeBinder(IZI)I

    move-result p0

    return p0
.end method

.method public getBinderFreezeInfo(I)I
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/android/server/am/Freezer;->nativeGetBinderFreezeInfo(I)I

    move-result p0

    return p0
.end method

.method public isFreezerSupported()Z
    .locals 0

    .line 79
    invoke-static {}, Lcom/android/server/am/Freezer;->nativeIsFreezerSupported()Z

    move-result p0

    return p0
.end method

.method public setProcessFrozen(IIZ)V
    .locals 0

    .line 40
    invoke-static {p1, p2, p3}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    return-void
.end method
