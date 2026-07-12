.class public abstract Lcom/android/server/wm/LaunchParamsUtil;
.super Ljava/lang/Object;
.source "LaunchParamsUtil.java"


# static fields
.field public static final TMP_STABLE_BOUNDS:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/LaunchParamsUtil;->TMP_STABLE_BOUNDS:Landroid/graphics/Rect;

    return-void
.end method

.method public static adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;ILandroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 3

    .line 142
    sget-object v0, Lcom/android/server/wm/LaunchParamsUtil;->TMP_STABLE_BOUNDS:Landroid/graphics/Rect;

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p0, v1

    const/high16 v1, 0x41d80000    # 27.0f

    mul-float/2addr p0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    .line 146
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt p0, v1, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge p0, v1, :cond_4

    .line 150
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 153
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v1, -0x1

    if-nez p2, :cond_1

    move v2, v1

    goto :goto_0

    .line 155
    :cond_1
    iget v2, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    .line 156
    :cond_2
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 157
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p2, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 159
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int p0, v2

    .line 158
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, p2, :cond_9

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, p0, :cond_3

    goto :goto_5

    .line 171
    :cond_3
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    add-int/2addr p0, v1

    invoke-virtual {p3, p1, v1, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    :cond_4
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    const/4 p2, 0x0

    if-le p0, p1, :cond_5

    :goto_2
    sub-int/2addr p1, p0

    goto :goto_3

    .line 179
    :cond_5
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    if-ge p0, p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, p2

    .line 188
    :goto_3
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p0, v1, :cond_7

    sub-int p2, v1, p0

    goto :goto_4

    .line 191
    :cond_7
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v0, :cond_8

    sub-int p2, v0, p0

    .line 198
    :cond_8
    :goto_4
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_9
    :goto_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    .line 165
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    goto :goto_6

    .line 166
    :cond_a
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 167
    :goto_6
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    add-int/2addr p0, v0

    invoke-virtual {p3, p1, v0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .line 243
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 244
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    move p1, v5

    goto :goto_0

    :cond_0
    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    const/16 v2, 0x30

    if-eq p0, v2, :cond_3

    const/16 v2, 0x50

    if-eq p0, v2, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    .line 270
    :cond_3
    :goto_1
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 271
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    .line 272
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    .line 273
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public static calculateLayoutBounds(Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;Landroid/util/Size;)V
    .locals 6

    .line 210
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 211
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez p3, :cond_0

    .line 218
    new-instance p3, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {p3, v2, p0}, Landroid/util/Size;-><init>(II)V

    .line 221
    :cond_0
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p0

    .line 222
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-lez v2, :cond_1

    if-ge v2, v0, :cond_1

    move p0, v2

    goto :goto_0

    .line 224
    :cond_1
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_2

    cmpg-float v5, v2, v3

    if-gez v5, :cond_2

    int-to-float p0, v0

    mul-float/2addr p0, v2

    float-to-int p0, p0

    .line 228
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    .line 229
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v0, :cond_3

    if-ge v0, v1, :cond_3

    move p3, v0

    goto :goto_1

    .line 231
    :cond_3
    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v0, p1, v4

    if-lez v0, :cond_4

    cmpg-float v0, p1, v3

    if-gez v0, :cond_4

    int-to-float p3, v1

    mul-float/2addr p3, p1

    float-to-int p3, p3

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 235
    invoke-virtual {p2, p1, p1, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V
    .locals 2

    .line 61
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 64
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    div-int/lit8 v0, p1, 0x2

    sub-int/2addr p0, v0

    .line 65
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    add-int/2addr p1, p0

    add-int/2addr p2, v0

    .line 66
    invoke-virtual {p3, p0, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static getDefaultFreeformSize(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)Landroid/util/Size;
    .locals 5

    .line 79
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    if-nez p3, :cond_0

    const/16 v0, 0x428

    goto :goto_0

    :cond_0
    const/16 v0, 0x19c

    :goto_0
    if-nez p3, :cond_1

    const/16 v1, 0x258

    goto :goto_1

    :cond_1
    const/16 v1, 0x2dc

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    const/4 v1, -0x1

    if-nez p2, :cond_2

    move v3, v1

    goto :goto_2

    .line 88
    :cond_2
    iget v3, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    :goto_2
    if-nez p2, :cond_3

    goto :goto_3

    .line 89
    :cond_3
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 96
    :goto_3
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 97
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    mul-int v4, p2, p2

    .line 98
    div-int/2addr v4, p4

    if-nez p3, :cond_4

    move p4, p2

    goto :goto_4

    :cond_4
    move p4, v4

    :goto_4
    if-nez p3, :cond_5

    move p2, v4

    .line 103
    :cond_5
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 104
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 105
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 108
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result v0

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v1

    if-ltz v3, :cond_7

    cmpg-float v3, p2, v0

    if-gez v3, :cond_7

    if-nez p3, :cond_6

    int-to-float p0, p4

    div-float/2addr p0, v0

    add-float/2addr p0, v2

    float-to-int p1, p0

    goto :goto_5

    :cond_6
    int-to-float p0, p1

    div-float/2addr p0, v0

    add-float/2addr p0, v2

    float-to-int p4, p0

    goto :goto_5

    :cond_7
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_9

    cmpl-float p2, p2, p0

    if-lez p2, :cond_9

    if-nez p3, :cond_8

    int-to-float p1, p4

    div-float/2addr p1, p0

    add-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_5

    :cond_8
    int-to-float p2, p1

    div-float/2addr p2, p0

    add-float/2addr p2, v2

    float-to-int p4, p2

    .line 134
    :cond_9
    :goto_5
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p4, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method
