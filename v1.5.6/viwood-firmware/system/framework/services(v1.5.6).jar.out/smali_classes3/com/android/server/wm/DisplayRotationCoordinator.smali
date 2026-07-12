.class public Lcom/android/server/wm/DisplayRotationCoordinator;
.super Ljava/lang/Object;
.source "DisplayRotationCoordinator.java"


# instance fields
.field public mCallbackDisplayId:I

.field public mDefaultDisplayCurrentRotation:I

.field public mDefaultDisplayDefaultRotation:I

.field mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    return-void
.end method

.method public static isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    if-nez p0, :cond_1

    return v1

    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public getDefaultDisplayCurrentRotation()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    return p0
.end method

.method public onDefaultDisplayRotationChanged(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    .line 55
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 56
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public removeDefaultDisplayRotationChangedCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eq p1, v0, :cond_0

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to remove non-matching callback. DisplayId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayRotationCoordinator"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    const/4 p1, -0x1

    .line 100
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    return-void
.end method

.method public setDefaultDisplayDefaultRotation(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    return-void
.end method

.method public setDefaultDisplayRotationChangedCallback(ILjava/lang/Runnable;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple clients unsupported. Incoming displayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", existing displayId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 80
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 81
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    .line 83
    iget p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    iget p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    if-eq p1, p0, :cond_2

    .line 84
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
