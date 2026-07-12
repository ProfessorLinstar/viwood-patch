.class public final Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;
.super Ljava/lang/Object;
.source "HandwritingEventReceiverSurface.java"


# instance fields
.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mInputSurface:Landroid/view/SurfaceControl;

.field public mIsIntercepting:Z

.field public final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V
    .locals 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p5, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    .line 51
    iput-object p4, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    .line 53
    new-instance v0, Landroid/view/InputWindowHandle;

    new-instance v1, Landroid/view/InputApplicationHandle;

    sget v2, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v3, v2

    const/4 v5, 0x0

    invoke-direct {v1, v5, p2, v3, v4}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    invoke-direct {v0, v1, p3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 55
    iput-object p2, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 56
    invoke-virtual {p5}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/16 p2, 0x7df

    .line 57
    iput p2, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    int-to-long p2, v2

    .line 58
    iput-wide p2, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 59
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    iput p2, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 60
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    iput p2, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 61
    iput p2, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    const p2, 0xc00c

    .line 62
    iput p2, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 70
    invoke-virtual {v0, p4}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 72
    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 73
    invoke-interface {p1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 76
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/InputWindowHandle;->setTouchableRegion(Landroid/graphics/Rect;)V

    .line 82
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 p3, 0x1

    .line 83
    invoke-virtual {v0, p1, p4, p3}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 84
    invoke-virtual {p1, p4, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    const/4 p3, 0x2

    .line 85
    invoke-virtual {p1, p4, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 p3, 0x0

    .line 86
    invoke-virtual {p1, p4, p3, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 89
    invoke-virtual {p1, p4, p2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 93
    invoke-virtual {p1, p4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 94
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    return-void
.end method


# virtual methods
.method public getInputChannel()Landroid/view/InputChannel;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    return-object p0
.end method

.method public getSurface()Landroid/view/SurfaceControl;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public isIntercepting()Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    return p0
.end method

.method public remove()V
    .locals 1

    .line 137
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 138
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 139
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public setNotTouchable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 127
    :goto_0
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 128
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public setTouchableRegion(Landroid/graphics/Region;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 116
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 117
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public startIntercepting(II)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 101
    iput p2, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 102
    iget p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 p1, p1, -0x4001

    or-int/lit16 p1, p1, 0x200

    .line 106
    iput p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 108
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 109
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    return-void
.end method
