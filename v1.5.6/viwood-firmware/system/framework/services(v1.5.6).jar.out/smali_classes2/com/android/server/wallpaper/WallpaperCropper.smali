.class public Lcom/android/server/wallpaper/WallpaperCropper;
.super Ljava/lang/Object;
.source "WallpaperCropper.java"


# static fields
.field static final ADD:I = 0x1

.field static final BALANCE:I = 0x3

.field static final MAX_PARALLAX:F = 1.0f

.field static final REMOVE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "WallpaperCropper"


# instance fields
.field public final mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

.field public final mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;


# direct methods
.method public static synthetic $r8$lambda$wM11yNEwVRhaK9YEsBDy6GuErGc(IIILandroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    .line 767
    invoke-virtual {p4, p1, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 769
    invoke-virtual {p4, p3}, Landroid/graphics/ImageDecoder;->setCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperDisplayHelper;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 91
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    return-void
.end method

.method public static getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;
    .locals 8

    .line 286
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 287
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 288
    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return-object p0

    :cond_0
    if-lez v3, :cond_4

    if-nez p3, :cond_1

    .line 293
    iget p3, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    .line 294
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, p3

    .line 295
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 296
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr p0, v1

    .line 297
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 298
    new-instance v3, Landroid/graphics/Point;

    iget p0, p1, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v3, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 299
    new-instance v4, Landroid/graphics/Point;

    iget p0, p2, Landroid/graphics/Point;->y:I

    iget p1, p2, Landroid/graphics/Point;->x:I

    invoke-direct {v4, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x0

    move v6, p4

    move v7, p5

    .line 300
    invoke-static/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    .line 302
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 303
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p1

    .line 304
    iget p3, v3, Landroid/graphics/Point;->x:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p4

    .line 305
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr p0, p3

    .line 306
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p1, p3, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p4

    :cond_1
    move v6, p4

    div-float/2addr v1, v2

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    cmpl-float p2, v1, p1

    if-lez p2, :cond_3

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    .line 311
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    float-to-double p0, v1

    .line 310
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    if-eqz v6, :cond_2

    .line 313
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->left:I

    return-object v0

    .line 315
    :cond_2
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    return-object v0

    :cond_4
    move v7, p5

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-ne v7, p3, :cond_5

    move p4, p2

    goto :goto_0

    :cond_5
    const/4 p4, 0x1

    if-ne v7, p4, :cond_6

    .line 324
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p4, p5

    float-to-int p4, p4

    goto :goto_0

    .line 325
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p4

    neg-int p4, p4

    int-to-double p4, p4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr p4, v3

    double-to-int p4, p4

    .line 326
    :goto_0
    iget p5, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p5, v1

    if-lt p5, p4, :cond_9

    .line 328
    div-int/lit8 p2, p4, 0x2

    .line 329
    rem-int/2addr p4, p3

    add-int/2addr p4, p2

    .line 331
    iget p5, p0, Landroid/graphics/Rect;->left:I

    if-ge p5, p2, :cond_7

    sub-int/2addr p2, p5

    add-int/2addr p4, p2

    move p2, p5

    goto :goto_1

    .line 334
    :cond_7
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p5, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, p5

    if-ge v1, p4, :cond_8

    sub-int v1, p1, p5

    sub-int/2addr p4, v1

    add-int/2addr p2, p4

    sub-int p4, p1, p5

    .line 338
    :cond_8
    :goto_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 339
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p4

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 341
    :cond_9
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 342
    iget p1, p1, Landroid/graphics/Point;->x:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 344
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    sub-float/2addr p0, p1

    float-to-int p0, p0

    .line 345
    iget p1, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 p2, p0, 0x2

    rem-int/2addr p0, p3

    add-int/2addr p0, p2

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 346
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;
    .locals 9

    .line 120
    invoke-static {p0}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 123
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, p0

    move-object v4, p2

    move v7, p4

    goto/16 :goto_4

    :cond_1
    move v2, v1

    .line 162
    :goto_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 163
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    .line 164
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_3

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_3

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_3

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_3
    :goto_1
    sget-object p3, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid crop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for bitmap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 173
    :cond_4
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/graphics/Rect;

    if-eqz v3, :cond_5

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v5, p0

    move-object v4, p2

    move v7, p4

    .line 175
    invoke-static/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_5
    move-object v2, p0

    move-object v4, p2

    move v7, p4

    .line 180
    invoke-static {v0}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    move-result p0

    .line 181
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    .line 182
    iget-object p4, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Point;

    if-eqz p2, :cond_6

    .line 185
    invoke-static {p2, p4, v4, v7}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object v1, v4

    move v4, v7

    .line 186
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 191
    :cond_6
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result p2

    .line 192
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 193
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    if-eqz p4, :cond_9

    .line 196
    invoke-static {p4, p2, v4, v7}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v1, v4

    move v4, v7

    .line 198
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-ge p1, p2, :cond_8

    if-eqz v4, :cond_7

    .line 202
    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 204
    :cond_7
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->right:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :goto_2
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 207
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_8
    move-object v0, p0

    return-object v0

    .line 215
    :cond_9
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getFoldedOrientation(I)I

    move-result p2

    .line 216
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 217
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    if-eqz p4, :cond_a

    .line 220
    invoke-static {p4, p2, v4, v7}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, v4

    move v4, v7

    .line 221
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 226
    :cond_a
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    if-eqz p2, :cond_c

    .line 228
    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getFoldedOrientation(I)I

    move-result p4

    .line 229
    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result v3

    .line 230
    filled-new-array {p4, v3}, [I

    move-result-object p4

    :goto_3
    const/4 v3, 0x2

    if-ge v1, v3, :cond_c

    aget v3, p4, v1

    .line 231
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-eqz v3, :cond_b

    .line 233
    invoke-static {p2, p1, v4, p3, v7}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p2

    .line 235
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 236
    invoke-virtual {p3, p0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    invoke-static {v2, p1, v4, p3, v7}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 244
    :cond_c
    sget-object p0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not find a proper default crop for display: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", bitmap size: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", suggested crops: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", orientation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", rtl: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", defaultDisplaySizes: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v2, p1, v4, p0, v7}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 124
    :goto_4
    new-instance p0, Landroid/graphics/Rect;

    iget p2, v4, Landroid/graphics/Point;->x:I

    iget p4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v1, p2, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_d

    .line 131
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 132
    invoke-virtual {p3, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    invoke-static {v2, p1, v4, p3, v7}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 140
    :cond_d
    iget-boolean p2, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    if-eqz p2, :cond_f

    iget-boolean p2, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    if-nez p2, :cond_f

    .line 141
    iget p2, v2, Landroid/graphics/Point;->x:I

    iget p4, v2, Landroid/graphics/Point;->y:I

    if-ge p2, p4, :cond_f

    .line 142
    new-instance p0, Landroid/graphics/Point;

    iget p2, v2, Landroid/graphics/Point;->y:I

    iget p4, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p2, p4}, Landroid/graphics/Point;-><init>(II)V

    .line 144
    invoke-static {p0, p1, v4, p3, v7}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 146
    invoke-static {p1, p0, v4, v7}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, v4

    move v4, v7

    .line 148
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    if-eqz v4, :cond_e

    .line 152
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 154
    :cond_e
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :goto_5
    move-object v0, p0

    goto :goto_6

    :cond_f
    move-object v1, v4

    move v4, v7

    goto :goto_5

    :goto_6
    const/4 v3, 0x1

    const/4 v5, 0x1

    .line 158
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getOriginalCropHints(Lcom/android/server/wallpaper/WallpaperData;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 401
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 402
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 403
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 404
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;
    .locals 7

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    move v2, v3

    .line 362
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 363
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 364
    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 365
    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 366
    iget v6, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 367
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 369
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;
    .locals 6

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move v4, p3

    .line 258
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    .line 260
    iget p1, v2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget p2, v2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 261
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    .line 262
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    if-eqz v4, :cond_1

    .line 264
    iget p2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->left:I

    return-object p0

    .line 266
    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    return-object p0
.end method


# virtual methods
.method public generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 2

    .line 466
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    sget-object v1, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 467
    const-string v1, "WPMS.generateCrop"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCropInternal(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 469
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final generateCropInternal(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 476
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    const/4 v3, 0x0

    .line 477
    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v2

    .line 478
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v4, v3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 481
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 482
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 483
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 484
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_13

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v6, :cond_0

    goto/16 :goto_d

    .line 490
    :cond_0
    new-instance v6, Landroid/graphics/Point;

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v6, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 491
    new-instance v8, Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v10, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v8, v3, v3, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move v9, v3

    .line 495
    :goto_0
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 496
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 497
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 498
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v8, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 499
    :cond_2
    :goto_1
    sget-object v9, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid crop "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " for orientation "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " and bitmap size "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; clearing suggested crops."

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 502
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 512
    :cond_3
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v9, :cond_4

    .line 514
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 515
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 517
    :cond_4
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 520
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v8

    .line 522
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v10, v3

    .line 523
    :goto_2
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 524
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 525
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    if-eqz v12, :cond_5

    .line 527
    invoke-virtual {v9, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 530
    :cond_6
    iput-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 533
    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    move-result-object v9

    .line 534
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 544
    :cond_7
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 545
    :cond_8
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 546
    sget-object v9, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring wallpaper.cropHint = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "; not within the bitmap of size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 550
    :cond_9
    new-instance v8, Landroid/graphics/Point;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 551
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v9, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v8

    .line 552
    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    move-result-object v9

    .line 553
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v11, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 554
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 593
    :goto_3
    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gt v10, v11, :cond_b

    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 594
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v10, v11, :cond_a

    goto :goto_4

    :cond_a
    move v10, v3

    goto :goto_5

    :cond_b
    :goto_4
    move v10, v5

    .line 597
    :goto_5
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v2, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    if-gt v11, v12, :cond_c

    .line 598
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v12

    if-gt v11, v12, :cond_c

    .line 599
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v12

    :cond_c
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    move v12, v3

    .line 605
    :goto_6
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_e

    .line 606
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 607
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 608
    iget-object v15, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 609
    invoke-virtual {v15}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplaySizes()Landroid/util/SparseArray;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    if-nez v13, :cond_d

    goto :goto_7

    .line 612
    :cond_d
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v15

    iget v5, v13, Landroid/graphics/Point;->x:I

    div-int/2addr v15, v5

    .line 613
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v3, v13, Landroid/graphics/Point;->y:I

    div-int/2addr v5, v3

    .line 611
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    .line 616
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v5, v13, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 617
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    div-float/2addr v5, v13

    .line 615
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 619
    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v11, v3

    :goto_7
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_6

    .line 623
    :cond_e
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 624
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayLargestDimension()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 625
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v3

    .line 623
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 627
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 628
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 626
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 629
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v3, v0, v7

    if-lez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    .line 646
    :goto_8
    sget-object v5, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop: w="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " h="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "defaultCrops: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "meas: w="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop?="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " scale?="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_10

    if-nez v3, :cond_10

    .line 661
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 664
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_f

    :cond_10
    const/4 v3, 0x0

    .line 682
    :try_start_0
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    div-int/2addr v5, v2

    const/4 v2, 0x1

    :goto_9
    mul-int/lit8 v10, v2, 0x2

    if-gt v10, v5, :cond_11

    move v2, v10

    goto :goto_9

    .line 687
    :cond_11
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    .line 688
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 690
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 693
    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v5, v10

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 694
    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v5, v10

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 695
    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 696
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 698
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 699
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 700
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 725
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v5, v10

    float-to-int v5, v5

    .line 728
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v0

    add-float/2addr v11, v10

    float-to-int v10, v11

    .line 731
    sget-object v11, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v12, "Decode parameters:"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  cropHint="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  estimateCrop="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  sampleSize="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  user defined crops: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  all crops: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  targetSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  maxTextureSize="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "wallpaper_orig"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 753
    const-string v5, "decode_record"

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v4, v3

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object v4, v3

    goto/16 :goto_b

    :cond_12
    const-string v5, "decode_lock_record"

    .line 754
    :goto_a
    new-instance v8, Ljava/io/File;

    iget v9, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 756
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "record path ="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", record name ="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 756
    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v5

    .line 762
    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    div-float/2addr v9, v0

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 763
    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    .line 764
    new-instance v10, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2, v9, v6, v4}, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;-><init>(IIILandroid/graphics/Rect;)V

    invoke-static {v5, v10}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 772
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 782
    iput v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 793
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    const v0, 0x8000

    invoke-direct {v5, v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 795
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v2, v0, v3, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 797
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 803
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v5, 0x1

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v3, v5

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v3, v5

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    .line 801
    :goto_b
    :try_start_3
    sget-object v2, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v5, "Error decoding crop"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 803
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_e

    .line 803
    :goto_c
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 805
    throw v0

    .line 485
    :cond_13
    :goto_d
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v2, "Invalid wallpaper data"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    const/4 v5, 0x0

    :cond_14
    :goto_f
    if-nez v5, :cond_15

    .line 810
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to apply new wallpaper"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 812
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 813
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 814
    iput v7, v1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 817
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 818
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    :cond_16
    return-void
.end method

.method public getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;
    .locals 8

    const/4 v0, -0x1

    .line 416
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 418
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 419
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 424
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 425
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object p0

    .line 426
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 427
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 420
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get default crops from suggested crops "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for bitmap of size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring suggested crops"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplaySizes()Landroid/util/SparseArray;

    move-result-object v0

    .line 433
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 437
    :goto_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move v4, v2

    .line 438
    :goto_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 439
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 440
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 441
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v7, :cond_5

    .line 443
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 444
    invoke-static {v6, v7, p2, p1, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 443
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 449
    :cond_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    .line 450
    :goto_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 451
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 452
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    .line 453
    :cond_7
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 454
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    invoke-static {v5, v6, p2, v3, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v5

    .line 456
    invoke-virtual {p1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-object p1
.end method

.method public getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;
    .locals 5

    .line 377
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    .line 378
    :goto_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 379
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 380
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 382
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 383
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 384
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 385
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 389
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperData;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 840
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v1

    .line 841
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 846
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    .line 847
    new-instance v2, Landroid/graphics/Point;

    iget v3, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v2, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 848
    invoke-static {v2}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result p1

    .line 850
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 851
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 852
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x0

    .line 853
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Point;->equals(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 854
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 855
    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 856
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 857
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v1, v5}, Landroid/graphics/Point;->set(II)V

    .line 859
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v4

    .line 861
    :goto_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 862
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperCropper;->getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;

    move-result-object p0

    .line 861
    invoke-static {v2, v5, v3, p0, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    .line 864
    iget p2, v2, Landroid/graphics/Point;->x:I

    int-to-double v5, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-double v7, p2

    div-double/2addr v5, v7

    iget p2, v2, Landroid/graphics/Point;->y:I

    int-to-double v1, p2

    .line 865
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double v7, p0

    div-double/2addr v1, v7

    .line 864
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    cmpl-double p0, v1, v5

    if-lez p0, :cond_4

    return v4

    :cond_4
    if-ne p1, v0, :cond_6

    .line 872
    iget p0, v3, Landroid/graphics/Point;->x:I

    int-to-double p0, p0

    iget p2, v3, Landroid/graphics/Point;->y:I

    int-to-double v1, p2

    div-double/2addr p0, v1

    const-wide v1, 0x3feb13b13b13b13bL    # 0.8461538461538461

    cmpl-double p0, p0, v1

    if-ltz p0, :cond_5

    return v0

    :cond_5
    return v4

    :cond_6
    return v0
.end method
