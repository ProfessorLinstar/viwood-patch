.class public final Lcom/android/server/power/PowerManagerService$UidState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# instance fields
.field public mActive:Z

.field public mNumWakeLocks:I

.field public mProcState:I

.field public final mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 6078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6079
    iput p1, p0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    return-void
.end method
