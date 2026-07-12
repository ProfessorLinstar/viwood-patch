.class public Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
.super Ljava/lang/Object;
.source "CameraAccessController.java"


# instance fields
.field public appUid:I

.field public cameraIdToSession:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    return-void
.end method
