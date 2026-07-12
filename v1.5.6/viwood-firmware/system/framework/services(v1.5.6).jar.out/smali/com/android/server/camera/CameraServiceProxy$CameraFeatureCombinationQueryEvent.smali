.class public Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Lcom/android/server/camera/CameraServiceProxy$CameraEvent;


# instance fields
.field public mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;


# direct methods
.method public constructor <init>(Landroid/hardware/CameraFeatureCombinationStats;)V
    .locals 0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    return-void
.end method


# virtual methods
.method public logSelf()V
    .locals 11

    .line 502
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget v1, v0, Landroid/hardware/CameraFeatureCombinationStats;->mStatus:I

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    move v10, v2

    goto :goto_1

    :cond_0
    :goto_0
    move v10, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    if-ne v10, v2, :cond_2

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature combination query status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget p0, p0, Landroid/hardware/CameraFeatureCombinationStats;->mStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraService_proxy"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 529
    :cond_2
    iget v5, v0, Landroid/hardware/CameraFeatureCombinationStats;->mUid:I

    iget-object v6, v0, Landroid/hardware/CameraFeatureCombinationStats;->mCameraId:Ljava/lang/String;

    iget v7, v0, Landroid/hardware/CameraFeatureCombinationStats;->mQueryType:I

    iget-wide v8, v0, Landroid/hardware/CameraFeatureCombinationStats;->mFeatureCombination:J

    const/16 v4, 0x384

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJI)V

    return-void
.end method
