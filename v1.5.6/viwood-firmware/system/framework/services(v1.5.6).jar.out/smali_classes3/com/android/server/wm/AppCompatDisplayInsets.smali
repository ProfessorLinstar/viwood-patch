.class public Lcom/android/server/wm/AppCompatDisplayInsets;
.super Ljava/lang/Object;
.source "AppCompatDisplayInsets.java"


# instance fields
.field public final mHeight:I

.field public final mIsFloating:Z

.field public final mIsInFixedOrientationOrAspectRatioLetterbox:Z

.field public final mNonDecorInsets:[Landroid/graphics/Rect;

.field public final mOriginalRequestedOrientation:I

.field public final mOriginalRotation:I

.field public final mStableInsets:[Landroid/graphics/Rect;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V
    .locals 11

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 56
    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 62
    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 67
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRotation:I

    .line 68
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    .line 69
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRequestedOrientation:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 76
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    move p2, v2

    :goto_0
    if-ge p2, v0, :cond_0

    .line 78
    iget-object p3, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aput-object p1, p3, p2

    .line 79
    iget-object p3, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aput-object p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    return-void

    .line 85
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz p3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 87
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 97
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 98
    :goto_2
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 101
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    goto :goto_3

    .line 102
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    .line 103
    :goto_3
    invoke-static {p3, p2}, Lcom/android/server/wm/AppCompatDisplayInsets;->getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;

    move-result-object v1

    .line 105
    iget v4, v1, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    .line 106
    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 110
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 111
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    move v5, v2

    :goto_5
    if-ge v5, v0, :cond_d

    .line 113
    iget-object v6, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v5

    .line 114
    iget-object v6, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v5

    if-eq v5, v3, :cond_8

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    goto :goto_6

    :cond_7
    move v6, v2

    goto :goto_7

    :cond_8
    :goto_6
    move v6, v3

    :goto_7
    if-eqz v6, :cond_9

    .line 116
    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_8

    :cond_9
    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_8
    if-eqz v6, :cond_a

    .line 117
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_9

    :cond_a
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 119
    :goto_9
    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v8

    if-eqz p4, :cond_b

    .line 121
    iget-object v9, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget-object v10, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 122
    iget-object v9, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget-object v8, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_a

    .line 124
    :cond_b
    iget-object v9, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget-object v10, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    iget-object v9, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget-object v8, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_a
    if-nez v1, :cond_c

    goto :goto_b

    .line 134
    :cond_c
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {p1, p2, v5, v1}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 139
    iget-object v8, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-static {v1, v7, v6, v8}, Lcom/android/server/wm/AppCompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 140
    iget-object v8, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-static {v1, v7, v6, v8}, Lcom/android/server/wm/AppCompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public static getCenterOffset(II)I
    .locals 0

    .line 0
    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 154
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eqz v0, :cond_2

    .line 155
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 3

    .line 164
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 165
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 166
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 167
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public getBoundsByRotation(Landroid/graphics/Rect;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 172
    iget p2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    :goto_1
    if-eqz v1, :cond_3

    .line 173
    iget p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    goto :goto_2

    :cond_3
    iget p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 174
    :goto_2
    invoke-virtual {p1, v0, v0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 6

    .line 190
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/AppCompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    .line 191
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AppCompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 200
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    if-le v0, v1, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    if-eqz p6, :cond_5

    if-eqz p5, :cond_5

    const/4 p5, 0x2

    if-ne p4, p5, :cond_4

    int-to-float p4, v0

    mul-float/2addr p4, p4

    int-to-float p5, v1

    div-float/2addr p4, p5

    float-to-int p4, p4

    .line 206
    iput p4, p2, Landroid/graphics/Rect;->bottom:I

    .line 207
    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 209
    :cond_4
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, v1

    mul-float/2addr p4, p4

    int-to-float p5, v0

    div-float/2addr p4, p5

    float-to-int p4, p4

    .line 210
    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 212
    :goto_3
    iget p4, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-static {p4, p5}, Lcom/android/server/wm/AppCompatDisplayInsets;->getCenterOffset(II)I

    move-result p4

    invoke-virtual {p2, p4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 214
    :cond_5
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v4, :cond_6

    .line 220
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object p0, p0, p3

    .line 221
    iget p3, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 222
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_6
    const/4 p4, -0x1

    if-eq p3, p4, :cond_7

    .line 225
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object p0, p0, p3

    invoke-static {p1, p2, p0}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public getFrameByOrientation(Landroid/graphics/Rect;I)V
    .locals 3

    .line 179
    iget v0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 180
    iget v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    iget p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    if-eqz p2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p0

    :goto_1
    if-eqz p2, :cond_2

    move v0, p0

    .line 182
    :cond_2
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
