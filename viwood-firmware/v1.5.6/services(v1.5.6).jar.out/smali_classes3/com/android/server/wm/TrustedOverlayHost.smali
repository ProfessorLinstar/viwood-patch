.class public Lcom/android/server/wm/TrustedOverlayHost;
.super Ljava/lang/Object;
.source "TrustedOverlayHost.java"


# instance fields
.field public final mOverlays:Ljava/util/ArrayList;

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public addOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;Landroid/view/SurfaceControl;)V
    .locals 5

    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedOverlayHost;->requireOverlaySurfaceControl()V

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 95
    iget-object v3, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 96
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 105
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 107
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/TrustedOverlayHost;->setParent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 108
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 135
    :try_start_0
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/ISurfaceControlViewHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 137
    :catch_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TrustedOverlayHost;->removeOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchDetachedFromWindow()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 146
    :try_start_0
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ISurfaceControlViewHost;->onDispatchDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 158
    :try_start_0
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/ISurfaceControlViewHost;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedOverlayHost;->dispatchDetachedFromWindow()V

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public removeOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)Z
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 114
    iget-object v1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 116
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_0

    .line 120
    iget-object v3, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 124
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public requireOverlaySurfaceControl()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "TrustedOverlayHost.requireOverlaySurfaceControl"

    .line 57
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "Overlay Host Leash"

    .line 58
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method public setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public setParent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz p2, :cond_1

    .line 72
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setVisibility(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method
