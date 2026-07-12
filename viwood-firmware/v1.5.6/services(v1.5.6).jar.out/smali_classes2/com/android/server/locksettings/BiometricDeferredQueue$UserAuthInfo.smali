.class public Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;
.super Ljava/lang/Object;
.source "BiometricDeferredQueue.java"


# instance fields
.field public final gatekeeperPassword:[B

.field public final userId:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 72
    iput-object p2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->gatekeeperPassword:[B

    return-void
.end method
