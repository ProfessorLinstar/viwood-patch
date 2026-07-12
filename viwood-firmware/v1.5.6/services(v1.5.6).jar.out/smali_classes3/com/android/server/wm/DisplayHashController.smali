.class public Lcom/android/server/wm/DisplayHashController;
.super Ljava/lang/Object;
.source "DisplayHashController.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayHashAlgorithms:Ljava/util/Map;

.field public final mDisplayHashAlgorithmsLock:Ljava/lang/Object;

.field public mDisplayHashThrottlingEnabled:Z

.field public final mHandler:Lcom/android/server/wm/DisplayHashController$Handler;

.field public mIntervalBetweenRequestMillis:I

.field public final mIntervalBetweenRequestsLock:Ljava/lang/Object;

.field public mLastRequestTimeMs:J

.field public mLastRequestUid:I

.field public final mSalt:[B

.field public mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

.field public final mServiceConnectionLock:Ljava/lang/Object;

.field public final mTmpFloat9:[F

.field public final mTmpMatrix:Landroid/graphics/Matrix;

.field public final mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$FQw_m9JVKEczm4AAxgtPQnLAHh8(Landroid/service/displayhash/IDisplayHashingService;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 352
    :try_start_0
    invoke-interface {p0, p1}, Landroid/service/displayhash/IDisplayHashingService;->getIntervalBetweenRequestsMillis(Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 354
    const-string p1, "WindowManager"

    const-string v0, "Failed to invoke getDisplayHashAlgorithms command"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$LTcDSj0TyvQOPDbOGQ0_VgiuHeY(Lcom/android/server/wm/DisplayHashController;Landroid/view/displayhash/DisplayHash;Landroid/service/displayhash/IDisplayHashingService;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayHashController;->lambda$verifyDisplayHash$0(Landroid/view/displayhash/DisplayHash;Landroid/service/displayhash/IDisplayHashingService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QpvhZBvKdvbIAqWQZAUo6iBrvTE(Landroid/service/displayhash/IDisplayHashingService;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 244
    :try_start_0
    invoke-interface {p0, p1}, Landroid/service/displayhash/IDisplayHashingService;->getDisplayHashAlgorithms(Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 246
    const-string p1, "WindowManager"

    const-string v0, "Failed to invoke getDisplayHashAlgorithms command"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$iDwBNKJI_hwGnqP4uyTLnqBBLHo(Lcom/android/server/wm/DisplayHashController;Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/service/displayhash/IDisplayHashingService;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayHashController;->lambda$generateDisplayHash$1(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/service/displayhash/IDisplayHashingService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/DisplayHashController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceConnection(Lcom/android/server/wm/DisplayHashController;)Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceConnectionLock(Lcom/android/server/wm/DisplayHashController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmServiceConnection(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectAndRun(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$Command;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayHashController;->connectAndRun(Lcom/android/server/wm/DisplayHashController$Command;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithmsLock:Ljava/lang/Object;

    const/16 v0, 0x9

    .line 102
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpFloat9:[F

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 104
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mIntervalBetweenRequestsLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/android/server/wm/DisplayHashController;->mIntervalBetweenRequestMillis:I

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashThrottlingEnabled:Z

    .line 139
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    .line 140
    new-instance p1, Lcom/android/server/wm/DisplayHashController$Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/DisplayHashController$Handler;-><init>(Lcom/android/server/wm/DisplayHashController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mHandler:Lcom/android/server/wm/DisplayHashController$Handler;

    .line 141
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mSalt:[B

    return-void
.end method


# virtual methods
.method public final allowedToGenerateHash(I)Z
    .locals 8

    .line 175
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashThrottlingEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 182
    iget v0, p0, Lcom/android/server/wm/DisplayHashController;->mLastRequestUid:I

    if-eq v0, p1, :cond_1

    .line 183
    iput p1, p0, Lcom/android/server/wm/DisplayHashController;->mLastRequestUid:I

    .line 184
    iput-wide v2, p0, Lcom/android/server/wm/DisplayHashController;->mLastRequestTimeMs:J

    return v1

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayHashController;->getIntervalBetweenRequestMillis()I

    move-result p1

    .line 189
    iget-wide v4, p0, Lcom/android/server/wm/DisplayHashController;->mLastRequestTimeMs:J

    sub-long v4, v2, v4

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gez p1, :cond_2

    const/4 p0, 0x0

    return p0

    .line 193
    :cond_2
    iput-wide v2, p0, Lcom/android/server/wm/DisplayHashController;->mLastRequestTimeMs:J

    return v1
.end method

.method public calculateDisplayHashBoundsLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 281
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 292
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    .line 293
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 294
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 301
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpFloat9:[F

    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 308
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 309
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 310
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    iget p1, p0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-virtual {p3, p1, v0, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 317
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 319
    iget p1, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 320
    iget p1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int p1, p1

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int p0, p0

    invoke-virtual {p3, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 328
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    return-void

    .line 334
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 335
    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final connectAndRun(Lcom/android/server/wm/DisplayHashController$Command;)V
    .locals 7

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mHandler:Lcom/android/server/wm/DisplayHashController$Handler;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayHashController$Handler;->resetTimeoutMessage()V

    .line 369
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayHashController;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 375
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 376
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :try_start_1
    new-instance v1, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;-><init>(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    .line 381
    iget-object v5, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 384
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    throw p0

    .line 389
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    if-eqz p0, :cond_1

    .line 390
    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->-$$Nest$mrunCommandLocked(Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;Lcom/android/server/wm/DisplayHashController$Command;)V

    .line 392
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final generateDisplayHash(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 6

    .line 169
    new-instance v0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayHashController;Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayHashController;->connectAndRun(Lcom/android/server/wm/DisplayHashController$Command;)V

    return-void
.end method

.method public generateDisplayHash(Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;Landroid/graphics/Rect;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 4

    .line 199
    invoke-virtual {p0, p4}, Lcom/android/server/wm/DisplayHashController;->allowedToGenerateHash(I)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, -0x6

    .line 200
    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayHashController;->sendDisplayHashError(Landroid/os/RemoteCallback;I)V

    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayHashController;->getDisplayHashAlgorithms()Ljava/util/Map;

    move-result-object p4

    .line 205
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/service/displayhash/DisplayHashParams;

    .line 206
    const-string v0, "WindowManager"

    if-nez p4, :cond_1

    .line 207
    const-string p1, "Failed to generateDisplayHash. Invalid hashAlgorithm"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x5

    .line 208
    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayHashController;->sendDisplayHashError(Landroid/os/RemoteCallback;I)V

    return-void

    .line 212
    :cond_1
    invoke-virtual {p4}, Landroid/service/displayhash/DisplayHashParams;->getBufferSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 213
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lez v2, :cond_3

    .line 214
    :cond_2
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 215
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 214
    invoke-virtual {p1, v2, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(FF)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 218
    :cond_3
    invoke-virtual {p4}, Landroid/service/displayhash/DisplayHashParams;->isGrayscaleBuffer()Z

    move-result p4

    invoke-virtual {p1, p4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setGrayscale(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 221
    invoke-virtual {p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 223
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p4

    if-nez p4, :cond_4

    goto :goto_0

    .line 229
    :cond_4
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/wm/DisplayHashController;->generateDisplayHash(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void

    .line 224
    :cond_5
    :goto_0
    const-string p1, "Failed to generate DisplayHash. Couldn\'t capture content"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 225
    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayHashController;->sendDisplayHashError(Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method public final getDisplayHashAlgorithms()Ljava/util/Map;
    .locals 6

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithmsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 238
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 241
    :cond_0
    new-instance v1, Lcom/android/server/wm/DisplayHashController$SyncCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DisplayHashController$SyncCommand;-><init>(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController-IA;)V

    .line 242
    new-instance v2, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayHashController$SyncCommand;->run(Ljava/util/function/BiConsumer;)Landroid/os/Bundle;

    move-result-object v1

    .line 250
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    .line 251
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 252
    iget-object v4, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/service/displayhash/DisplayHashParams;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    monitor-exit v0

    return-object p0

    .line 256
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getIntervalBetweenRequestMillis()I
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mIntervalBetweenRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/DisplayHashController;->mIntervalBetweenRequestMillis:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 346
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 349
    :cond_0
    new-instance v1, Lcom/android/server/wm/DisplayHashController$SyncCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DisplayHashController$SyncCommand;-><init>(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController-IA;)V

    .line 350
    new-instance v2, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayHashController$SyncCommand;->run(Ljava/util/function/BiConsumer;)Landroid/os/Bundle;

    move-result-object v1

    .line 358
    const-string v2, "android.service.displayhash.extra.INTERVAL_BETWEEN_REQUESTS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayHashController;->mIntervalBetweenRequestMillis:I

    .line 359
    monitor-exit v0

    return v1

    .line 360
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    .line 424
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayHashController;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 427
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 429
    const-string v2, "android.permission.BIND_DISPLAY_HASHING_SERVICE"

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires permission "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WindowManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 6

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    .line 398
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 399
    const-string v2, "WindowManager"

    if-nez v0, :cond_0

    .line 400
    const-string p0, "no external services package!"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 404
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.displayhash.DisplayHashingService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 409
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x84

    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_2

    .line 415
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 416
    :cond_2
    :goto_0
    const-string p0, "No valid components found."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception p0

    .line 412
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    throw p0
.end method

.method public getSupportedHashAlgorithms()[Ljava/lang/String;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayHashController;->getDisplayHashAlgorithms()Ljava/util/Map;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final synthetic lambda$generateDisplayHash$1(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/service/displayhash/IDisplayHashingService;)V
    .locals 1

    .line 170
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mSalt:[B

    move-object v0, p1

    move-object p1, p0

    move-object p0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, v0

    invoke-interface/range {p0 .. p5}, Landroid/service/displayhash/IDisplayHashingService;->generateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public final synthetic lambda$verifyDisplayHash$0(Landroid/view/displayhash/DisplayHash;Landroid/service/displayhash/IDisplayHashingService;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 154
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mSalt:[B

    invoke-interface {p2, p0, p1, p3}, Landroid/service/displayhash/IDisplayHashingService;->verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 156
    :catch_0
    const-string p0, "WindowManager"

    const-string p1, "Failed to invoke verifyDisplayHash command"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendDisplayHashError(Landroid/os/RemoteCallback;I)V
    .locals 1

    .line 260
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 261
    const-string v0, "DISPLAY_HASH_ERROR_CODE"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDisplayHashThrottlingEnabled(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashThrottlingEnabled:Z

    return-void
.end method

.method public verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;
    .locals 2

    .line 151
    new-instance v0, Lcom/android/server/wm/DisplayHashController$SyncCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayHashController$SyncCommand;-><init>(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController-IA;)V

    .line 152
    new-instance v1, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayHashController;Landroid/view/displayhash/DisplayHash;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayHashController$SyncCommand;->run(Ljava/util/function/BiConsumer;)Landroid/os/Bundle;

    move-result-object p0

    .line 160
    const-string p1, "android.service.displayhash.extra.VERIFIED_DISPLAY_HASH"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/view/displayhash/VerifiedDisplayHash;

    return-object p0
.end method
