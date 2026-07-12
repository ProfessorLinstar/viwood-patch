.class public final Lcom/android/server/display/color/GlobalSaturationTintController;
.super Lcom/android/server/display/color/TintController;
.source "GlobalSaturationTintController.java"


# instance fields
.field public final mMatrixGlobalSaturation:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    const/16 v0, 0x10

    .line 31
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 0

    .line 0
    const/16 p0, 0x96

    return p0
.end method

.method public getMatrix()[F
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 81
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setMatrix(I)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-gez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    if-le p1, v2, :cond_1

    move p1, v2

    .line 49
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting saturation level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ColorDisplayService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_2

    .line 52
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 53
    iget-object p0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    invoke-static {p0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    .line 55
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    int-to-float p1, p1

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v2, p1

    const v5, 0x3e6c8b44    # 0.231f

    mul-float/2addr v5, v4

    const v6, 0x3f370a3d    # 0.715f

    mul-float/2addr v6, v4

    const v7, 0x3d9374bc    # 0.072f

    mul-float/2addr v4, v7

    const/4 v7, 0x3

    .line 58
    new-array v7, v7, [F

    aput v5, v7, v3

    aput v6, v7, v1

    aput v4, v7, v0

    .line 60
    iget-object p0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    aget v4, v7, v3

    add-float/2addr v4, p1

    aput v4, p0, v3

    .line 61
    aget v3, v7, v3

    aput v3, p0, v1

    .line 62
    aput v3, p0, v0

    .line 63
    aget v1, v7, v1

    const/4 v3, 0x4

    aput v1, p0, v3

    const/4 v3, 0x5

    add-float v4, v1, p1

    .line 64
    aput v4, p0, v3

    const/4 v3, 0x6

    .line 65
    aput v1, p0, v3

    .line 66
    aget v0, v7, v0

    const/16 v1, 0x8

    aput v0, p0, v1

    const/16 v1, 0x9

    .line 67
    aput v0, p0, v1

    const/16 v1, 0xa

    add-float/2addr v0, p1

    .line 68
    aput v0, p0, v1

    const/16 p1, 0xf

    .line 70
    aput v2, p0, p1

    return-void
.end method
