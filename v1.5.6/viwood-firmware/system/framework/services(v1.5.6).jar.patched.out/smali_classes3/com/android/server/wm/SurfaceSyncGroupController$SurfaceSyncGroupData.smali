.class public Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;
.super Ljava/lang/Object;
.source "SurfaceSyncGroupController.java"


# instance fields
.field public final mOwningUid:I

.field public final mSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public constructor <init>(ILandroid/window/SurfaceSyncGroup;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;->mOwningUid:I

    .line 98
    iput-object p2, p0, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;->mSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/window/SurfaceSyncGroup;Lcom/android/server/wm/SurfaceSyncGroupController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;-><init>(ILandroid/window/SurfaceSyncGroup;)V

    return-void
.end method
