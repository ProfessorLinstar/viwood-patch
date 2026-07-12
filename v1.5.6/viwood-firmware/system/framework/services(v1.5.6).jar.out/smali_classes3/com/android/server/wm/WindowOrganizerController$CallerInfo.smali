.class public Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
.super Ljava/lang/Object;
.source "WindowOrganizerController.java"


# instance fields
.field public final mPid:I

.field public final mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2691
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 2692
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    return-void
.end method
