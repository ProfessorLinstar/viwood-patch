.class public Lcom/android/server/wm/InputWindowHandleWrapper;
.super Ljava/lang/Object;
.source "InputWindowHandleWrapper.java"


# instance fields
.field public mChanged:Z

.field public final mHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public constructor <init>(Landroid/view/InputWindowHandle;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    return-void
.end method


# virtual methods
.method public applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public clearTouchableRegion()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public forceChange()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public getDisplayId()I
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->displayId:I

    return p0
.end method

.method public getInputApplicationHandle()Landroid/view/InputApplicationHandle;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object p0, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    return-object p0
.end method

.method public hasWallpaper()Z
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChanged()Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return p0
.end method

.method public isFocusable()Z
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPaused()Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDispatchingTimeoutMillis(J)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-wide v1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 136
    :cond_0
    iput-wide p1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setDisplayId(I)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->displayId:I

    if-ne v1, p1, :cond_0

    return-void

    .line 230
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->displayId:I

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setFocusTransferTarget(Landroid/os/IBinder;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v0, Landroid/view/InputWindowHandle;->focusTransferTarget:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    return-void

    .line 288
    :cond_0
    iput-object p1, v0, Landroid/view/InputWindowHandle;->focusTransferTarget:Landroid/os/IBinder;

    const/4 p1, 0x1

    .line 289
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isFocusable()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 161
    iput-boolean v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setHasWallpaper(Z)V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->hasWallpaper()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setInputApplicationHandle(Landroid/view/InputApplicationHandle;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    if-ne v1, p1, :cond_0

    return-void

    .line 96
    :cond_0
    iput-object p1, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setInputConfigMasked(II)V
    .locals 3

    and-int/2addr p1, p2

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int v2, v1, p2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    not-int p2, p2

    and-int/2addr p2, v1

    or-int/2addr p1, p2

    .line 280
    iput p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setLayoutParamsFlags(I)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    if-ne v1, p1, :cond_0

    return-void

    .line 120
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setLayoutParamsType(I)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    if-ne v1, p1, :cond_0

    return-void

    .line 128
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setOwnerPid(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    if-ne v1, p1, :cond_0

    return-void

    .line 206
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setOwnerUid(I)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    if-ne v1, p1, :cond_0

    return-void

    .line 214
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/4 p1, 0x1

    .line 215
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setPaused(Z)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isPaused()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setReplaceTouchableRegionWithCrop(Z)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-boolean v1, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 262
    :cond_0
    iput-boolean p1, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    const/4 p1, 0x1

    .line 263
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 246
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setSurfaceInset(I)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->surfaceInset:I

    if-ne v1, p1, :cond_0

    return-void

    .line 238
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->surfaceInset:I

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setToken(Landroid/os/IBinder;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    return-void

    .line 104
    :cond_0
    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTouchOcclusionMode(I)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    if-ne v1, p1, :cond_0

    return-void

    .line 168
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTouchableRegion(Landroid/graphics/Region;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTouchableRegionCrop(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p1}, Landroid/view/InputWindowHandle;->setWindowToken(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
