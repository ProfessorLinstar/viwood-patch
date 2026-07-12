.class public Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
.super Ljava/lang/Object;
.source "AppSnapshotLoader.java"


# instance fields
.field public final mForceLoadReducedJpeg:Z

.field public final mScale:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    .line 72
    iput-boolean p2, p0, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    return-void
.end method
