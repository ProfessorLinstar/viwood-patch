.class public Lcom/android/server/wm/Dimmer;
.super Ljava/lang/Object;
.source "Dimmer.java"


# instance fields
.field public final mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

.field public mDimState:Lcom/android/server/wm/Dimmer$DimState;

.field public final mHost:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 179
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    invoke-direct {v0}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 186
    iput-object p2, p0, Lcom/android/server/wm/Dimmer;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    return-void
.end method


# virtual methods
.method public adjustAppearance(Lcom/android/server/wm/WindowState;FI)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Dimmer;->obtainDimState(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/Dimmer$DimState;

    move-result-object p0

    .line 228
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Dimmer$DimState;->prepareLookChange(FI)V

    return-void
.end method

.method public adjustPosition(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Dimmer$DimState;->prepareReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public getDimBounds()Landroid/graphics/Rect;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDimLayer()Landroid/view/SurfaceControl;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasDimState()Z
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final obtainDimState(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/Dimmer$DimState;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lcom/android/server/wm/Dimmer$DimState;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer$DimState;-><init>(Lcom/android/server/wm/Dimmer;)V

    iput-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    invoke-static {v0, p1}, Lcom/android/server/wm/Dimmer$DimState;->-$$Nest$fputmLastDimmingWindow(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/WindowState;)V

    .line 300
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    return-object p0
.end method

.method public resetDimStates()V
    .locals 1

    .line 203
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 204
    invoke-static {p0, v0}, Lcom/android/server/wm/Dimmer$DimState;->-$$Nest$fputmLastDimmingWindow(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public updateDims(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 265
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Dimmer$DimState;->exit(Landroid/view/SurfaceControl$Transaction;)V

    const/4 p1, 0x0

    .line 268
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    return v1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer$DimState;->-$$Nest$fgetmIsVisible(Lcom/android/server/wm/Dimmer$DimState;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer$DimState;->-$$Nest$fgetmLastDimmingWindow(Lcom/android/server/wm/Dimmer$DimState;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer$DimState;->-$$Nest$fgetmLastDimmingWindow(Lcom/android/server/wm/Dimmer$DimState;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer$DimState;->-$$Nest$fgetmLastDimmingWindow(Lcom/android/server/wm/Dimmer$DimState;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    .line 281
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Dimmer$DimState;->setReady(Landroid/view/SurfaceControl$Transaction;)V

    return v1
.end method
