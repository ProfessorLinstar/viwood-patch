.class public final Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
.super Ljava/lang/Object;
.source "WallpaperDefaultDisplayInfo.java"


# instance fields
.field public final defaultDisplaySizes:Landroid/util/SparseArray;

.field final foldableOrientations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;",
            ">;"
        }
    .end annotation
.end field

.field public final isFoldable:Z

.field public final isLargeScreen:Z


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/res/Resources;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    invoke-interface {p1, v0}, Landroid/view/WindowManager;->getPossibleMaximumWindowMetrics(I)Ljava/util/Set;

    move-result-object p1

    const v1, 0x1070078

    .line 89
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 91
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getFoldableOrientations(Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    goto :goto_0

    .line 93
    :cond_1
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    .line 95
    :goto_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getDisplaySizes(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    .line 96
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen(Ljava/util/Set;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    return-void
.end method

.method public static getDisplaySizes(Ljava/util/Set;)Landroid/util/SparseArray;
    .locals 7

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 145
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowMetrics;

    .line 146
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 147
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 148
    new-instance v1, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 149
    invoke-static {v2, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 150
    invoke-static {v2}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v3

    .line 152
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    if-eqz v4, :cond_2

    .line 153
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v5, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v6

    if-ge v5, v4, :cond_1

    .line 154
    :cond_2
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getFoldableOrientations(Ljava/util/Set;)Ljava/util/List;
    .locals 8

    .line 178
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 179
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowMetrics;

    .line 185
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 186
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 188
    invoke-static {v6}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v5

    .line 189
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v6

    int-to-float v6, v7

    .line 190
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v4

    mul-float/2addr v7, v4

    div-float/2addr v6, v7

    cmpg-float v4, v3, v1

    if-gtz v4, :cond_1

    move v2, v5

    move v3, v6

    goto :goto_0

    :cond_1
    cmpl-float v4, v6, v3

    if-lez v4, :cond_2

    .line 196
    new-instance v4, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    invoke-direct {v4, v2, v5}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;-><init>(II)V

    goto :goto_1

    .line 197
    :cond_2
    new-instance v4, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    invoke-direct {v4, v5, v2}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;-><init>(II)V

    .line 198
    :goto_1
    new-instance v5, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    iget v6, v4, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    .line 199
    invoke-static {v6}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    move-result v6

    iget v7, v4, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    .line 200
    invoke-static {v7}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;-><init>(II)V

    .line 201
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isLargeScreen(Ljava/util/Set;)Z
    .locals 3

    .line 163
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowMetrics;

    .line 164
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v1

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44160000    # 600.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 104
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    iget-boolean v3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    iget-boolean v3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    .line 105
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    .line 106
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getFoldedOrientation(I)I
    .locals 2

    .line 121
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    .line 122
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    if-ne v1, p1, :cond_0

    .line 123
    iget p0, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getUnfoldedOrientation(I)I
    .locals 2

    .line 135
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    .line 136
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    if-ne v1, p1, :cond_0

    .line 137
    iget p0, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 111
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    .line 112
    invoke-virtual {p0}, Landroid/util/SparseArray;->contentHashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
